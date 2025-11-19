uint64_t sub_1006F5064()
{
  v0 = sub_1001F1160(&qword_100AF39F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v11 - v2;
  sub_100245E38();
  sub_100795F94();
  v4 = sub_100795F14();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v5(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF3A00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100812CF0;
  *(v8 + 32) = v4;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  v9 = sub_100795F04();

  return v9;
}

uint64_t sub_1006F52E0()
{
  v0 = sub_1001F1160(&qword_100AF39F8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - v2;
  sub_100245E38();
  sub_100795F94();
  v4 = sub_100795F14();
  (*(v1 + 8))(v3, v0);
  sub_1001F1160(&qword_100AF3A00);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10080B690;
  *(v5 + 32) = v4;
  v6 = sub_100795F04();

  return v6;
}

uint64_t sub_1006F548C(uint64_t a1, uint64_t a2, void (*a3)(void), void (*a4)(uint64_t))
{
  v6 = sub_100795F84();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  a3();
  sub_100795EF4();

  a4(v10);
  sub_100795F74();
  v11 = sub_100795F64();
  (*(v7 + 8))(v9, v6);
  sub_1001F1160(&qword_100AF39E8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_10080B690;
  *(v12 + 32) = v11;
  v13 = sub_100795F54();

  return v13;
}

uint64_t sub_1006F561C()
{
  v0 = sub_100795F34();
  sub_1001F1160(&qword_100AF39F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10080B690;
  *(v1 + 32) = v0;
  v2 = sub_100795F24();

  return v2;
}

uint64_t sub_1006F5688()
{
  v0 = sub_1001F1160(&qword_100AF39D8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v14 - v2;
  sub_1006F6C7C();
  sub_100795F94();
  v17 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v16 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v15 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v14 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF39E0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100811450;
  v10 = v16;
  *(v9 + 32) = v17;
  *(v9 + 40) = v10;
  v11 = v14;
  *(v9 + 48) = v15;
  *(v9 + 56) = v11;
  *(v9 + 64) = v5;
  *(v9 + 72) = v6;
  *(v9 + 80) = v7;
  *(v9 + 88) = v8;
  v12 = sub_100795F04();

  return v12;
}

uint64_t sub_1006F5A48()
{
  v0 = sub_1001F1160(&qword_100AF39C8);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - v2;
  sub_1006F6CD0();
  sub_100795F94();
  v20 = sub_100795F14();
  v4 = *(v1 + 8);
  v4(v3, v0);
  sub_100795F94();
  v19 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v18 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v17 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v16 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v15 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v5 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v6 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v7 = sub_100795F14();
  v4(v3, v0);
  sub_100795F94();
  v8 = sub_100795F14();
  v4(v3, v0);
  sub_1001F1160(&qword_100AF39D0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10083C7A0;
  v10 = v19;
  *(v9 + 32) = v20;
  *(v9 + 40) = v10;
  v11 = v17;
  *(v9 + 48) = v18;
  *(v9 + 56) = v11;
  v12 = v15;
  *(v9 + 64) = v16;
  *(v9 + 72) = v12;
  *(v9 + 80) = v5;
  *(v9 + 88) = v6;
  *(v9 + 96) = v7;
  *(v9 + 104) = v8;
  v13 = sub_100795F04();

  return v13;
}

uint64_t sub_1006F5EDC()
{
  v0 = sub_100796004();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_10075C064();
  v37 = v4;
  sub_1006F6D7C();
  sub_100796014();
  v35 = sub_100795FF4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  v36 = sub_10075C064();
  v37 = v6;
  sub_100796014();
  v34 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v7;
  v38 = v8;
  sub_1003FE9D4();
  sub_100796014();
  v33 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v9;
  v38 = v10;
  sub_100796014();
  v32 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v11;
  v38 = v12;
  sub_100796014();
  v13 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v14;
  v38 = v15;
  sub_100796014();
  v16 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v17;
  v38 = v18;
  sub_100796014();
  v19 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v20;
  v38 = v21;
  sub_100796014();
  v22 = sub_100795FF4();
  v5(v3, v0);
  v36 = sub_1003FF104();
  v37 = v23;
  v38 = v24;
  sub_100796014();
  v25 = sub_100795FF4();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39C0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_10080B6A0;
  v27 = v34;
  *(v26 + 32) = v35;
  *(v26 + 40) = v27;
  v28 = v32;
  *(v26 + 48) = v33;
  *(v26 + 56) = v28;
  *(v26 + 64) = v13;
  *(v26 + 72) = v16;
  *(v26 + 80) = v19;
  *(v26 + 88) = v22;
  *(v26 + 96) = v25;
  v29 = sub_100795FE4();

  return v29;
}

uint64_t sub_1006F6404()
{
  v0 = sub_100796004();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v44 = sub_100220C30();
  *(&v44 + 1) = v4;
  sub_1002200FC();
  sub_100796014();
  v43 = sub_100795FF4();
  v5 = *(v1 + 8);
  v5(v3, v0);
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  v44 = 0u;
  v45 = 0u;
  v46 = 0;
  sub_100795B64();
  *&v44 = sub_100795AA4();
  sub_100571F08();
  sub_100796014();
  v42 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1005C3C78();
  *(&v44 + 1) = v6;
  sub_1005C459C();
  sub_100796014();
  v41 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_100408108();
  *(&v44 + 1) = v7;
  *&v45 = v8;
  sub_1004080A4();
  sub_100796014();
  v40 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_100408108();
  *(&v44 + 1) = v9;
  *&v45 = v10;
  sub_100796014();
  v39 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_100408108();
  *(&v44 + 1) = v11;
  *&v45 = v12;
  sub_100796014();
  v38 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1003725A4();
  *(&v44 + 1) = v13;
  sub_10037187C();
  sub_100796014();
  v37 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1003725A4();
  *(&v44 + 1) = v14;
  sub_100796014();
  v36 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1003725A4();
  *(&v44 + 1) = v15;
  sub_100796014();
  v35 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1003725A4();
  *(&v44 + 1) = v16;
  sub_100796014();
  v34 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1002472CC();
  *(&v44 + 1) = v17;
  sub_100245E38();
  sub_100796014();
  v33 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1002472CC();
  *(&v44 + 1) = v18;
  sub_100796014();
  v19 = sub_100795FF4();
  v5(v3, v0);
  *&v44 = sub_1002472CC();
  *(&v44 + 1) = v20;
  sub_100796014();
  v21 = sub_100795FF4();
  v5(v3, v0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_100795B64();
  *&v44 = sub_100795AA4();
  sub_1006F6C7C();
  sub_100796014();
  v22 = sub_100795FF4();
  v5(v3, v0);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_100795B64();
  *&v44 = sub_100795AA4();
  sub_1006F6CD0();
  sub_100796014();
  v23 = sub_100795FF4();
  v5(v3, v0);
  sub_1001F1160(&qword_100AF39C0);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1008405B0;
  v25 = v42;
  *(v24 + 32) = v43;
  *(v24 + 40) = v25;
  v26 = v40;
  *(v24 + 48) = v41;
  *(v24 + 56) = v26;
  v27 = v38;
  *(v24 + 64) = v39;
  *(v24 + 72) = v27;
  v28 = v36;
  *(v24 + 80) = v37;
  *(v24 + 88) = v28;
  v29 = v34;
  *(v24 + 96) = v35;
  *(v24 + 104) = v29;
  *(v24 + 112) = v33;
  *(v24 + 120) = v19;
  *(v24 + 128) = v21;
  *(v24 + 136) = v22;
  *(v24 + 144) = v23;
  v30 = sub_100795FE4();

  return v30;
}

unint64_t sub_1006F6C7C()
{
  result = qword_100AF39B0;
  if (!qword_100AF39B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF39B0);
  }

  return result;
}

unint64_t sub_1006F6CD0()
{
  result = qword_100AF39B8;
  if (!qword_100AF39B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF39B8);
  }

  return result;
}

unint64_t sub_1006F6D24()
{
  result = qword_100AF3A60;
  if (!qword_100AF3A60)
  {
    sub_100795DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3A60);
  }

  return result;
}

unint64_t sub_1006F6D7C()
{
  result = qword_100AF3A80;
  if (!qword_100AF3A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3A80);
  }

  return result;
}

unint64_t sub_1006F6DD0()
{
  result = qword_100AF3AA0;
  if (!qword_100AF3AA0)
  {
    sub_1001F1234(&qword_100AF3AA8);
    sub_1006F6E54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3AA0);
  }

  return result;
}

unint64_t sub_1006F6E54()
{
  result = qword_100AF3AB0;
  if (!qword_100AF3AB0)
  {
    sub_1001F1234(&qword_100AF3AB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3AB0);
  }

  return result;
}

uint64_t sub_1006F6EB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF3AA8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006F6F28(uint64_t a1)
{
  v2 = sub_1001F1160(&qword_100AF3AA8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1006F77E0()
{
  result = [objc_allocWithZone(type metadata accessor for BKMessagesDebugProvider()) init];
  qword_100B239B8 = result;
  return result;
}

id BKMessagesDebugProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BKMessagesDebugProvider();
  return objc_msgSendSuper2(&v2, "init");
}

id BKMessagesDebugProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BKMessagesDebugProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_1006F78C0()
{
  v31 = sub_1007969B4();
  v0 = *(v31 - 8);
  __chkstk_darwin(v31);
  v2 = &v30 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v30 - v4;
  __chkstk_darwin(v6);
  v8 = &v30 - v7;
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = objc_opt_self();
  v13 = [v12 mainBundle];
  v14 = sub_1007A2214();
  v15 = sub_1007A2214();
  v16 = [v13 URLForResource:v14 withExtension:v15];

  if (v16)
  {
    sub_100796974();

    (*(v0 + 32))(v11, v8, v31);
  }

  else
  {
    v17 = v31;
    v18 = [v12 mainBundle];
    v19 = sub_1007A2214();
    v20 = sub_1007A2214();
    v21 = [v18 URLForResource:v19 withExtension:v20];

    if (!v21)
    {
      return 0;
    }

    sub_100796974();

    (*(v0 + 32))(v5, v2, v17);
    v11 = v5;
  }

  v22 = objc_opt_self();
  sub_100796944(v23);
  v25 = v24;
  sub_100013740(_swiftEmptyArrayStorage);
  isa = sub_1007A2024().super.isa;

  sub_100013740(_swiftEmptyArrayStorage);
  v27 = sub_1007A2024().super.isa;

  v28 = [v22 bk_fromJSONURL:v25 localizedTexts:isa localizedActionTitles:v27];

  (*(v0 + 8))(v11, v31);
  return v28;
}

void _s5Books23BKMessagesDebugProviderC19fetchDialogRequests3for10completionyShySSG_ySDySSSo16AMSDialogRequestCG_s5Error_pSgtcSgtF_0(uint64_t a1, void (*a2)(void *, void))
{
  if (a2)
  {

    v3 = sub_1001ED994(&off_100A0C7F0);
    sub_1001F1160(&unk_100AE0920);
    swift_arrayDestroy();
    v25 = [objc_opt_self() standardUserDefaults];
    v26 = v3;
    v4 = 0;
    v5 = v3 + 64;
    v6 = 1 << *(v3 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v3 + 64);
    v9 = (v6 + 63) >> 6;
    v27 = a1 + 56;
    v28 = a1;
    while (v8)
    {
LABEL_12:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v12 = (*(v26 + 56) + ((v4 << 10) | (16 * v11)));
      v14 = *v12;
      v13 = v12[1];

      v15 = sub_1007A2214();
      v16 = [v25 BOOLForKey:v15];

      if (v16 & 1) != 0 && *(v28 + 16) && (sub_1007A3C04(), _s5Books22ReportIssueTypingEventV4hash4intoys6HasherVz_tF_0(), v17 = sub_1007A3C44(), v18 = -1 << *(v28 + 32), v19 = v17 & ~v18, ((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19)))
      {
        v20 = ~v18;
        while (1)
        {
          v21 = (*(v28 + 48) + 16 * v19);
          v22 = *v21 == v14 && v21[1] == v13;
          if (v22 || (sub_1007A3AB4() & 1) != 0)
          {
            break;
          }

          v19 = (v19 + 1) & v20;
          if (((*(v27 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        v23 = sub_1006F78C0();

        if (v23)
        {
          sub_1005E9234(v23, v14, v13);
        }

        else
        {
        }
      }

      else
      {
LABEL_6:
      }
    }

    while (1)
    {
      v10 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v10 >= v9)
      {

        a2(_swiftEmptyDictionarySingleton, 0);

        sub_100007020(a2);

        return;
      }

      v8 = *(v5 + 8 * v10);
      ++v4;
      if (v8)
      {
        v4 = v10;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1006F7F30()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF3B00);
  sub_100008B98(v0, qword_100AF3B00);
  sub_10001389C();
  sub_1007A33B4();
  return sub_10079ACF4();
}

uint64_t sub_1006F7FC8()
{
  v0 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B239C0);
  v21[1] = sub_100008B98(v18, qword_100B239C0);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_1006F83DC()
{
  v0 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v0 - 8);
  v66 = &v41 - v1;
  v2 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v2 - 8);
  v63 = &v41 - v3;
  v65 = sub_1007967F4();
  v70 = *(v65 - 8);
  __chkstk_darwin(v65);
  v59 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v61 = sub_100796CF4();
  v69 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v41 - v7;
  v9 = sub_1007A21D4();
  v67 = *(v9 - 8);
  v10 = v67;
  __chkstk_darwin(v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v41 - v14;
  v64 = sub_100796814();
  v68 = *(v64 - 8);
  __chkstk_darwin(v64);
  v49 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F1160(&unk_100AF3CD0);
  v17 = sub_1001F1160(&qword_100AD3A10);
  v62 = v17;
  v18 = *(v17 - 8);
  v56 = *(v18 + 72);
  v19 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_10080EFF0;
  v57 = v20;
  v58 = v20 + v19;
  v54 = *(v17 + 48);
  *(v20 + v19) = 0;
  v41 = v15;
  sub_1007A2154();
  sub_100796C94();
  v55 = *(v10 + 16);
  v43 = v12;
  v21 = v9;
  v42 = v9;
  v55(v12, v15, v9);
  v22 = v69;
  v53 = *(v69 + 16);
  v23 = v61;
  v53(v60, v8, v61);
  v52 = type metadata accessor for BundleFinder();
  v24 = v59;
  *v59 = v52;
  v50 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v25 = *(v70 + 104);
  v70 += 104;
  v51 = v25;
  v25(v24);
  sub_100796834();
  v26 = *(v22 + 8);
  v69 = v22 + 8;
  v48 = v26;
  v27 = v8;
  v26(v8, v23);
  v28 = *(v67 + 8);
  v67 += 8;
  v47 = v28;
  v29 = v41;
  v28(v41, v21);
  v30 = *(v68 + 56);
  v68 += 56;
  v46 = v30;
  v30(v63, 1, 1, v64);
  v31 = sub_100796104();
  v32 = *(v31 - 8);
  v44 = *(v32 + 56);
  v45 = v32 + 56;
  v44(v66, 1, 1, v31);
  v33 = v58;
  sub_100796124();
  v54 = (v33 + v56);
  v56 = *(v62 + 48);
  *v54 = 1;
  v34 = v29;
  sub_1007A2154();
  v35 = v27;
  sub_100796C94();
  v36 = v42;
  v55(v43, v29, v42);
  v37 = v61;
  v53(v60, v35, v61);
  v38 = v59;
  *v59 = v52;
  v51(v38, v50, v65);
  sub_100796834();
  v48(v35, v37);
  v47(v34, v36);
  v46(v63, 1, 1, v64);
  v44(v66, 1, 1, v31);
  sub_100796124();
  v39 = sub_1001F06C8(v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_100B239D8 = v39;
  return result;
}

unint64_t sub_1006F8BB8()
{
  result = qword_100AF3B18;
  if (!qword_100AF3B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B18);
  }

  return result;
}

uint64_t sub_1006F8C0C@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100A0D818;
  v8._object = v3;
  v5 = sub_1007A3964(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

unint64_t sub_1006F8C70()
{
  result = qword_100AF3B20;
  if (!qword_100AF3B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B20);
  }

  return result;
}

unint64_t sub_1006F8CC8()
{
  result = qword_100AF3B28;
  if (!qword_100AF3B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B28);
  }

  return result;
}

unint64_t sub_1006F8D20()
{
  result = qword_100AF3B30;
  if (!qword_100AF3B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B30);
  }

  return result;
}

unint64_t sub_1006F8D78()
{
  result = qword_100AF3B38;
  if (!qword_100AF3B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B38);
  }

  return result;
}

unint64_t sub_1006F8DCC()
{
  result = qword_100AF3B40;
  if (!qword_100AF3B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B40);
  }

  return result;
}

unint64_t sub_1006F8E20()
{
  result = qword_100AF3B48;
  if (!qword_100AF3B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B48);
  }

  return result;
}

unint64_t sub_1006F8E78()
{
  result = qword_100AF3B50;
  if (!qword_100AF3B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B50);
  }

  return result;
}

unint64_t sub_1006F8F54()
{
  result = qword_100AF3B58;
  if (!qword_100AF3B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B58);
  }

  return result;
}

uint64_t sub_1006F8FA8(uint64_t a1)
{
  v2 = sub_1006F8F54();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006F8FF8()
{
  result = qword_100AF3B60;
  if (!qword_100AF3B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B60);
  }

  return result;
}

unint64_t sub_1006F9050()
{
  result = qword_100AF3B68;
  if (!qword_100AF3B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B68);
  }

  return result;
}

unint64_t sub_1006F90A8()
{
  result = qword_100AF3B70;
  if (!qword_100AF3B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B70);
  }

  return result;
}

uint64_t sub_1006F90FC()
{
  if (qword_100AD1B28 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1006F9158(uint64_t a1)
{
  v2 = sub_1006F8E78();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

unint64_t sub_1006F91FC()
{
  result = qword_100AF3B88;
  if (!qword_100AF3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B88);
  }

  return result;
}

unint64_t sub_1006F9254()
{
  result = qword_100AF3B90;
  if (!qword_100AF3B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B90);
  }

  return result;
}

uint64_t sub_1006F92E0()
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
  sub_100009A38(v3, qword_100B239E0);
  v21 = sub_100008B98(v3, qword_100B239E0);
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

uint64_t sub_1006F968C@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = sub_1001F1160(&qword_100AF3C80);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  __chkstk_darwin(v1);
  v30 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v31 = v25 - v5;
  v6 = sub_1001F1160(&qword_100AF3C88);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v28 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = v25 - v10;
  __chkstk_darwin(v12);
  v29 = v25 - v13;
  v38 = 0;
  v35 = sub_1001F1160(&qword_100AF3C90);
  v25[3] = sub_1003A5654();
  v14 = sub_1006F8E20();
  v25[2] = sub_100005920(&qword_100AF3C98, &qword_100AF3C90);
  sub_100796394();
  v25[1] = sub_100005920(&qword_100AF3CA0, &qword_100AF3C88);
  sub_100796354();
  v36 = *(v7 + 8);
  v26 = v11;
  v36(v11, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_100796394();
  sub_100796354();
  v36(v15, v6);
  v16 = v30;
  sub_1007963D4();
  sub_100005920(&qword_100AF3CA8, &qword_100AF3C80);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_100796354();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_100796344();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

uint64_t sub_1006F9B58@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AF3CB0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AF3CB8);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AF3C90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_1003A5654();
  sub_1007961D4();
  v13._countAndFlagsBits = 0x2079616C50;
  v13._object = 0xE500000000000000;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF3CC0);
  sub_1007961B4();

  v14._countAndFlagsBits = 32;
  v14._object = 0xE100000000000000;
  sub_1007961C4(v14);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF3CC8);
  sub_1007961B4();

  v15._countAndFlagsBits = 0;
  v15._object = 0xE000000000000000;
  sub_1007961C4(v15);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AF3C98, &qword_100AF3C90);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_1006F9E8C@<X0>(uint64_t a1@<X8>)
{
  v12[1] = a1;
  v1 = sub_1001F1160(&qword_100AF3CB0);
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001F1160(&qword_100AF3CB8);
  __chkstk_darwin(v2);
  v3 = sub_1001F1160(&qword_100AF3C90);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v12 - v8;
  sub_1003A5654();
  sub_1007961D4();
  v13._countAndFlagsBits = 0x2079616C50;
  v13._object = 0xE500000000000000;
  sub_1007961C4(v13);
  swift_getKeyPath();
  sub_1001F1160(&qword_100AF3CC0);
  sub_1007961B4();

  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007961C4(v14);
  sub_1007961F4();
  sub_1007961A4();
  sub_100005920(&qword_100AF3C98, &qword_100AF3C90);
  sub_100796294();
  v10 = *(v4 + 8);
  v10(v6, v3);
  sub_100796284();
  return (v10)(v9, v3);
}

uint64_t sub_1006FA174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a3;
  v4[28] = a4;
  v4[25] = a1;
  v4[26] = a2;
  sub_1001F1160(&qword_100AD5CB0);
  v4[29] = swift_task_alloc();
  v5 = sub_100795AD4();
  v4[30] = v5;
  v4[31] = *(v5 - 8);
  v4[32] = swift_task_alloc();

  return _swift_task_switch(sub_1006FA270, 0, 0);
}

uint64_t sub_1006FA270()
{
  sub_100795DF4();
  if (*(v0 + 97))
  {
    sub_100795DF4();
    v1 = *(v0 + 24);
    *(v0 + 320) = v1;
    if (v1)
    {
      v2 = *(v0 + 16);
      *(v0 + 328) = *(v0 + 32);
      *(v0 + 336) = v2;
      sub_100795A94();
      v3 = *(v0 + 120);
      *(v0 + 344) = *(v0 + 104);
      *(v0 + 360) = v3;
      *(v0 + 376) = *(v0 + 136);
      sub_1007A26F4();
      *(v0 + 384) = sub_1007A26E4();
      v5 = sub_1007A2694();
      *(v0 + 392) = v5;
      *(v0 + 400) = v4;

      return _swift_task_switch(sub_1006FA7C0, v5, v4);
    }

    else
    {
      v10 = *(v0 + 248);
      v9 = *(v0 + 256);
      v11 = *(v0 + 232);
      v12 = *(v0 + 240);
      sub_100795E14();
      v13 = sub_100795CE4();
      (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
      sub_100795E24();

      sub_100007840(v11, &qword_100AD5CB0);
      sub_100214F44();
      swift_allocError();
      (*(v10 + 16))(v14, v9, v12);
      swift_willThrow();
      (*(v10 + 8))(v9, v12);

      v15 = *(v0 + 8);

      return v15();
    }
  }

  else
  {
    sub_100795A94();
    v6 = *(v0 + 152);
    *(v0 + 264) = *(v0 + 144);
    *(v0 + 272) = v6;
    v17 = *(v0 + 160);
    *(v0 + 280) = v17;
    v7 = *(v0 + 176);
    *(v0 + 296) = v7;
    v8 = swift_task_alloc();
    *(v0 + 304) = v8;
    *v8 = v0;
    v8[1] = sub_1006FA550;

    return sub_1004F91FC(v6, v17, v7);
  }
}

uint64_t sub_1006FA550()
{
  v2 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_1006FA71C;
  }

  else
  {
    v4 = *(v2 + 280);

    swift_unknownObjectRelease();

    v3 = sub_1006FA6A0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006FA6A0()
{
  sub_100795D24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006FA71C()
{
  v1 = *(v0 + 280);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006FA7C0()
{
  v1 = v0[40];
  sub_100795D54();
  v2 = v0[23];
  v3 = v0[24];
  v0[51] = v3;
  v4 = swift_task_alloc();
  v0[52] = v4;
  *v4 = v0;
  v4[1] = sub_1006FA880;
  v5 = v0[45];
  v6 = v0[42];

  return sub_1004F8A20(v6, v1, v2, v3, v5);
}

uint64_t sub_1006FA880()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1006FAAD0;
  }

  else
  {

    v3 = *(v2 + 392);
    v4 = *(v2 + 400);
    v5 = sub_1006FA99C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_1006FA99C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 344);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1006FAA3C, 0, 0);
}

uint64_t sub_1006FAA3C()
{
  sub_100007840(v0 + 16, &unk_100AE7F10);
  sub_100795D24();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006FAAD0()
{
  v1 = *(v0 + 360);

  swift_unknownObjectRelease();

  return _swift_task_switch(sub_1006FAB80, 0, 0);
}

uint64_t sub_1006FAB80()
{
  sub_100007840(v0 + 16, &unk_100AE7F10);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1006FAC40(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = sub_1001F1160(&qword_100AF3C70);
  v5 = sub_100005920(&qword_100AF3C78, &qword_100AF3C70);

  return ParameterSummarySwitchCondition.init(_:_:)(KeyPath, sub_1006F968C, 0, v4, a2, v5);
}

uint64_t sub_1006FAD08(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = v1[2];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1006FA174(a1, v4, v5, v6);
}

uint64_t sub_1006FADBC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1006FE17C();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

unint64_t sub_1006FADEC()
{
  result = qword_100AF3B98;
  if (!qword_100AF3B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3B98);
  }

  return result;
}

uint64_t sub_1006FAE40(uint64_t a1)
{
  v2 = sub_1003A5654();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_1006FAE84()
{
  result = qword_100AF3BA0;
  if (!qword_100AF3BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BA0);
  }

  return result;
}

unint64_t sub_1006FAEDC()
{
  result = qword_100AF3BA8;
  if (!qword_100AF3BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BA8);
  }

  return result;
}

unint64_t sub_1006FAF34()
{
  result = qword_100AF3BB0;
  if (!qword_100AF3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BB0);
  }

  return result;
}

unint64_t sub_1006FAF88()
{
  result = qword_100AF3BB8;
  if (!qword_100AF3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BB8);
  }

  return result;
}

uint64_t sub_1006FAFDC()
{
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  sub_100795B64();
  result = sub_100795AA4();
  qword_100B239F8 = result;
  return result;
}

uint64_t sub_1006FB04C()
{
  v0 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v0 - 8);
  v28 = v21 - v1;
  v2 = sub_1007967F4();
  v26 = *(v2 - 8);
  v27 = v2;
  __chkstk_darwin(v2);
  v4 = (v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = sub_100796CF4();
  v5 = *(v25 - 8);
  __chkstk_darwin(v25);
  v22 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = v21 - v8;
  v10 = sub_1007A21D4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v21 - v15;
  v17 = sub_100796814();
  v23 = *(v17 - 8);
  v24 = v17;
  __chkstk_darwin(v17);
  v18 = sub_100796314();
  sub_100009A38(v18, qword_100B23A00);
  v21[1] = sub_100008B98(v18, qword_100B23A00);
  sub_1007A2154();
  sub_100796C94();
  (*(v11 + 16))(v13, v16, v10);
  v19 = v25;
  (*(v5 + 16))(v22, v9, v25);
  *v4 = type metadata accessor for BundleFinder();
  (*(v26 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v27);
  sub_100796834();
  (*(v5 + 8))(v9, v19);
  (*(v11 + 8))(v16, v10);
  (*(v23 + 56))(v28, 1, 1, v24);
  return sub_100796304();
}

uint64_t sub_1006FB460@<X0>(uint64_t a1@<X8>)
{
  v19[1] = a1;
  v1 = sub_1001F1160(&qword_100AD5D10);
  __chkstk_darwin(v1 - 8);
  v19[0] = v19 - v2;
  v3 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v3 - 8);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v19 - v7;
  v9 = sub_100796814();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = v19 - v14;
  sub_100795D54();
  if (!v20)
  {
  }

  sub_1007967E4();
  v16 = *(v10 + 56);
  v16(v8, 1, 1, v9);
  sub_100795D54();
  if (v20)
  {
    sub_1007967E4();
    sub_100007840(v8, &qword_100AD5CC0);
    v16(v5, 0, 1, v9);
    sub_1006FD274(v5, v8);
  }

  (*(v10 + 16))(v12, v15, v9);
  sub_1000077D8(v8, v5, &qword_100AD5CC0);
  v17 = sub_100796104();
  (*(*(v17 - 8) + 56))(v19[0], 1, 1, v17);
  sub_100796124();
  sub_100007840(v8, &qword_100AD5CC0);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_1006FB784@<X0>(void *a1@<X8>)
{
  if (qword_100AD1B38 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_100B239F8;
}

unint64_t sub_1006FB7F8()
{
  result = qword_100AF3BC0;
  if (!qword_100AF3BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BC0);
  }

  return result;
}

unint64_t sub_1006FB84C()
{
  result = qword_100AF3BC8;
  if (!qword_100AF3BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BC8);
  }

  return result;
}

unint64_t sub_1006FB8A0()
{
  result = qword_100AF3BD0;
  if (!qword_100AF3BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BD0);
  }

  return result;
}

unint64_t sub_1006FB8F8()
{
  result = qword_100AF3BD8;
  if (!qword_100AF3BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BD8);
  }

  return result;
}

uint64_t sub_1006FB984@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100008B98(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1006FBA70(uint64_t a1)
{
  v2 = sub_100282BC4();

  return static AppEntity.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1006FBAC0()
{
  result = qword_100AF3BF0;
  if (!qword_100AF3BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BF0);
  }

  return result;
}

uint64_t sub_1006FBB18(uint64_t a1)
{
  v2 = sub_1006FB8F8();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t sub_1006FBB6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a1;
  v4[10] = a2;
  v5 = *v3;
  v4[11] = a3;
  v4[12] = v5;
  return _swift_task_switch(sub_1006FBB94, 0, 0);
}

uint64_t sub_1006FBB94()
{
  v1 = v0[11];
  sub_100795A94();
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_10020FC00;
  v3 = v0[10];

  return sub_1004F1698(v3, v1);
}

unint64_t sub_1006FBC40()
{
  result = qword_100AF3BF8;
  if (!qword_100AF3BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3BF8);
  }

  return result;
}

unint64_t sub_1006FBC98()
{
  result = qword_100AF3C00;
  if (!qword_100AF3C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3C00);
  }

  return result;
}

uint64_t sub_1006FBCEC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 72) = a1;
  *(v2 + 80) = v3;
  return _swift_task_switch(sub_1006FBD10, 0, 0);
}

uint64_t sub_1006FBD10()
{
  sub_100795A94();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_10020FFC4;
  v2 = *(v0 + 72);

  return sub_1004F2274(v2);
}

uint64_t sub_1006FBDB4(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 72) = a1;
  *(v2 + 80) = v3;
  return _swift_task_switch(sub_1006FBDD8, 0, 0);
}

uint64_t sub_1006FBDD8()
{
  sub_100795A94();
  v0[11] = sub_1007A26F4();
  v0[12] = sub_1007A26E4();
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1006FBE94;

  return sub_1004F1698(0, 0);
}

uint64_t sub_1006FBE94(uint64_t a1)
{
  *(*v1 + 112) = a1;

  v3 = sub_1007A2694();

  return _swift_task_switch(sub_1006FBFD8, v3, v2);
}

uint64_t sub_1006FBFD8()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  swift_unknownObjectRelease();
  *(v0 + 64) = *(v0 + 40);
  sub_100007840(v0 + 64, &qword_100AE6A50);
  *(v0 + 56) = *(v0 + 48);
  sub_100007840(v0 + 56, &qword_100AE6A50);
  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_1006FC0AC()
{
  result = qword_100AF3C08;
  if (!qword_100AF3C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3C08);
  }

  return result;
}

unint64_t sub_1006FC104()
{
  result = qword_100AF3C10;
  if (!qword_100AF3C10)
  {
    sub_1001F1234(&qword_100AE7F00);
    sub_1006FB8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3C10);
  }

  return result;
}

uint64_t sub_1006FC188(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1006FAF88();
  *v5 = v2;
  v5[1] = sub_100009A34;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_1006FC258@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v19 = sub_1001F1160(&qword_100AF3C38);
  __chkstk_darwin(v19);
  v2 = &v16 - v1;
  v3 = sub_10079AB24();
  __chkstk_darwin(v3 - 8);
  v4 = sub_1001F1160(&qword_100AF3C40);
  v18 = *(v4 - 8);
  v5 = v18;
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  v20 = sub_1001F1160(&qword_100AF3C48);
  v17 = *(v20 - 8);
  v8 = v17;
  __chkstk_darwin(v20);
  v10 = &v16 - v9;
  sub_10079AB04();
  sub_1006FD07C();
  sub_1007995F4();
  sub_100005920(&qword_100AF3C58, &qword_100AF3C40);
  sub_100799604();
  v11 = *(v5 + 8);
  v11(v7, v4);
  sub_10079AB14();
  sub_1007995F4();
  v12 = *(v19 + 48);
  v13 = *(v8 + 16);
  v14 = v20;
  v13(v2, v10, v20);
  (*(v18 + 16))(&v2[v12], v7, v4);
  sub_100799614();
  v11(v7, v4);
  return (*(v17 + 8))(v10, v14);
}

uint64_t sub_1006FC5C8(uint64_t a1)
{
  sub_1001F1160(&unk_100AD5AC0);
  *(v1 + 16) = swift_task_alloc();
  v3 = sub_1007969B4();
  *(v1 + 24) = v3;
  *(v1 + 32) = *(v3 - 8);
  *(v1 + 40) = swift_task_alloc();
  *(v1 + 48) = swift_task_alloc();
  *(v1 + 56) = *(a1 + 64);

  return _swift_task_switch(sub_1006FC6D4, 0, 0);
}

uint64_t sub_1006FC6D4()
{
  v35 = v0;
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_10063D1E8(v0[7], v0[8], 1, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100007840(v0[2], &unk_100AD5AC0);
    if (qword_100AD1B18 != -1)
    {
      swift_once();
    }

    v4 = sub_10079ACE4();
    sub_100008B98(v4, qword_100AF3B00);
    v5 = sub_10079ACC4();
    v6 = sub_1007A29A4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v34 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v34);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s -- .url: nil", v7, 0xCu);
      sub_1000074E0(v8);
    }

    v9 = 0;
    v10 = 0xC000000000000000;
  }

  else
  {
    (*(v0[4] + 32))(v0[6], v0[2], v0[3]);
    if (qword_100AD1B18 != -1)
    {
      swift_once();
    }

    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[3];
    v14 = v0[4];
    v15 = sub_10079ACE4();
    sub_100008B98(v15, qword_100AF3B00);
    (*(v14 + 16))(v11, v12, v13);
    v16 = sub_10079ACC4();
    v17 = sub_1007A29A4();
    v18 = os_log_type_enabled(v16, v17);
    v20 = v0[4];
    v19 = v0[5];
    v21 = v0[3];
    if (v18)
    {
      v33 = v0[3];
      v22 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v22 = 136315394;
      *(v22 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v34);
      *(v22 + 12) = 2080;
      v23 = sub_100796914();
      v25 = v24;
      v26 = *(v20 + 8);
      v26(v19, v33);
      v27 = sub_1000070F4(v23, v25, &v34);

      *(v22 + 14) = v27;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s -- .url: %s", v22, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v26 = *(v20 + 8);
      v26(v19, v21);
    }

    v28 = v0[6];
    v29 = v0[3];
    v9 = sub_100796934();
    v10 = v30;
    v26(v28, v29);
  }

  v31 = v0[1];

  return v31(v9, v10);
}

BOOL sub_1006FCAEC(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100AD5AC0);
  __chkstk_darwin(v2 - 8);
  v4 = &v8 - v3;
  sub_10063D1E8(*(a1 + 64), *(a1 + 72), 1, &v8 - v3);
  v5 = sub_1007969B4();
  v6 = (*(*(v5 - 8) + 48))(v4, 1, v5) != 1;
  sub_100007840(v4, &unk_100AD5AC0);
  return v6;
}

uint64_t sub_1006FCBD4(uint64_t a1)
{
  v3 = sub_1007A22A4();
  *(v1 + 48) = v3;
  *(v1 + 56) = *(v3 - 8);
  *(v1 + 64) = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0);
  v4 = swift_task_alloc();
  v5 = *(a1 + 16);
  *(v1 + 72) = v4;
  *(v1 + 80) = v5;
  *(v1 + 88) = *(a1 + 32);
  *(v1 + 96) = *(a1 + 64);

  return _swift_task_switch(sub_1006FCCE0, 0, 0);
}

uint64_t sub_1006FCCE0()
{
  v26 = v0;
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  sub_100795D54();
  v4 = v0[2];
  v5 = v0[3];
  sub_100795D54();
  v6 = v0[4];
  v7 = v0[5];
  sub_10063D1E8(v2, v1, 1, v3);
  v8 = sub_10063EEA4(v4, v5, v6, v7, v3);
  v10 = v9;

  sub_100007840(v3, &unk_100AD5AC0);
  if (qword_100AD1B18 != -1)
  {
    swift_once();
  }

  v11 = sub_10079ACE4();
  sub_100008B98(v11, qword_100AF3B00);

  v12 = sub_10079ACC4();
  v13 = sub_1007A29A4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v14 = 136315394;
    *(v14 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008C34E0, &v25);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1000070F4(v8, v10, &v25);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s -- .text: %s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v15 = v0[8];
  v16 = v0[6];
  v17 = v0[7];
  sub_1007A2294();
  v18 = sub_1007A2264();
  v20 = v19;

  (*(v17 + 8))(v15, v16);
  if (v20 >> 60 == 15)
  {
    v21 = 0;
  }

  else
  {
    v21 = v18;
  }

  if (v20 >> 60 == 15)
  {
    v22 = 0xC000000000000000;
  }

  else
  {
    v22 = v20;
  }

  v23 = v0[1];

  return v23(v21, v22);
}

uint64_t sub_1006FCFAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1006FCFF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1006FD07C()
{
  result = qword_100AF3C50;
  if (!qword_100AF3C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3C50);
  }

  return result;
}

uint64_t sub_1006FD0D0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  *(v2 + 32) = v4;
  *(v2 + 40) = *(a2 + 4);
  *(v2 + 64) = *(a2 + 80);
  return _swift_task_switch(sub_1006FD108, 0, 0);
}

uint64_t sub_1006FD108()
{
  if (*(v0 + 64) == 1)
  {
    sub_1007A26F4();
    *(v0 + 56) = sub_1007A26E4();
    v2 = sub_1007A2694();

    return _swift_task_switch(sub_1006FD1EC, v2, v1);
  }

  else
  {
    sub_10063D1E8(*(v0 + 40), *(v0 + 48), 1, *(v0 + 16));
    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1006FD1EC()
{
  v1 = *(v0 + 16);

  sub_10020F230(1, v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1006FD274(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AD5CC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1006FD2E4(int a1, uint64_t a2)
{
  v83 = a2;
  v82 = a1;
  v92 = sub_100796274();
  v103 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v3 - 8);
  v89 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v88 = &v72 - v6;
  v7 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v7 - 8);
  v102 = &v72 - v8;
  v96 = sub_1007967F4();
  v110 = *(v96 - 8);
  __chkstk_darwin(v96);
  v10 = (&v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_100796CF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v72 - v16;
  v18 = sub_1007A21D4();
  v84 = v18;
  v106 = *(v18 - 8);
  v19 = v106;
  __chkstk_darwin(v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  v91 = sub_100796814();
  v97 = *(v91 - 8);
  __chkstk_darwin(v91);
  v81 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v87 = &v72 - v27;
  v80 = sub_1001F1160(&qword_100AF3C60);
  sub_1007A2154();
  sub_100796C94();
  v104 = *(v19 + 16);
  v101 = v19 + 16;
  v104(v21, v24, v18);
  v28 = *(v12 + 16);
  v100 = v12 + 16;
  v109 = v28;
  v28(v14, v17, v11);
  v105 = type metadata accessor for BundleFinder();
  *v10 = v105;
  v108 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v29 = *(v110 + 104);
  v110 += 104;
  v107 = v29;
  v30 = v10;
  v94 = v10;
  v31 = v96;
  v29(v30);
  sub_100796834();
  v98 = *(v12 + 8);
  v99 = v12 + 8;
  v98(v17, v11);
  v32 = v106 + 8;
  v33 = *(v106 + 8);
  v34 = v84;
  v33(v24, v84);
  v95 = v33;
  v106 = v32;
  v93 = v24;
  sub_1007A2154();
  sub_100796C94();
  v72 = v21;
  v35 = v24;
  v36 = v34;
  v104(v21, v35, v34);
  v86 = v14;
  v37 = v11;
  v85 = v11;
  v109(v14, v17, v11);
  v38 = v94;
  *v94 = v105;
  v107(v38, v108, v31);
  v39 = v102;
  sub_100796834();
  v98(v17, v37);
  v40 = v93;
  v41 = v36;
  v33(v93, v36);
  v42 = *(v97 + 56);
  v97 += 56;
  v73 = v42;
  v42(v39, 0, 1, v91);
  LOBYTE(v112) = 0;
  v43 = sub_100795CE4();
  v75 = v43;
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v76 = v45;
  v77 = v44 + 56;
  v45(v88, 1, 1, v43);
  v45(v89, 1, 1, v43);
  v78 = enum case for InputConnectionBehavior.default(_:);
  v46 = *(v103 + 104);
  v103 += 104;
  v79 = v46;
  v46(v90);
  sub_1006F8F54();
  v80 = sub_100795E54();
  v74 = sub_1001F1160(&qword_100AF3C68);

  sub_1007A2154();
  v47 = v17;
  sub_100796C94();
  v48 = v72;
  v104(v72, v40, v41);
  v49 = v85;
  v109(v86, v17, v85);
  v50 = v94;
  *v94 = v105;
  v51 = v96;
  v107(v50, v108, v96);
  v52 = v50;
  sub_100796834();
  v53 = v98;
  v98(v47, v49);
  v54 = v93;
  v55 = v84;
  v95(v93, v84);
  sub_1007A2154();
  sub_100796C94();
  v104(v48, v54, v55);
  v56 = v86;
  v57 = v85;
  v109(v86, v47, v85);
  *v52 = v105;
  v107(v52, v108, v51);
  v58 = v102;
  v59 = v56;
  sub_100796834();
  v60 = v47;
  v53(v47, v57);
  v61 = v93;
  v95(v93, v55);
  v73(v58, 0, 1, v91);
  v117 = 0;
  v115 = 0u;
  v116 = 0u;
  v113 = 0u;
  v114 = 0u;
  v112 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v104(v48, v61, v55);
  v109(v59, v47, v57);
  v62 = v94;
  *v94 = v105;
  v107(v62, v108, v96);
  sub_100796834();
  v98(v60, v57);
  v95(v61, v55);
  v63 = v88;
  sub_100795CF4();
  v64 = v75;
  v65 = v76;
  v76(v63, 0, 1, v75);
  v65(v89, 1, 1, v64);
  v79(v90, v78, v92);
  sub_100282BC4();
  sub_100795E74();
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  v112 = 0u;
  v113 = 0u;
  *&v114 = 0;

  sub_100795B64();
  sub_100795AA4();
  LOBYTE(v112) = v82 & 1;

  v66 = v80;
  sub_100795E04();
  v67 = v83;
  v68 = v83[2];
  v69 = v83[4];
  v115 = v83[3];
  v116 = v69;
  v117 = *(v83 + 80);
  v70 = v83[1];
  v112 = *v83;
  v113 = v70;
  v114 = v68;
  sub_1000077D8(v83, v111, &unk_100AE7F10);
  sub_100795E04();
  sub_100007840(v67, &unk_100AE7F10);

  return v66;
}

uint64_t sub_1006FE17C()
{
  v89 = sub_100796274();
  v99 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v70 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = sub_1001F1160(&qword_100AD5CB0);
  __chkstk_darwin(v1 - 8);
  v86 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v85 = &v70 - v4;
  v5 = sub_1001F1160(&qword_100AD5CC0);
  __chkstk_darwin(v5 - 8);
  v98 = &v70 - v6;
  v7 = sub_1007967F4();
  v8 = *(v7 - 8);
  v105 = v7;
  v106 = v8;
  __chkstk_darwin(v7);
  v10 = (&v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = sub_100796CF4();
  v11 = *(v91 - 8);
  __chkstk_darwin(v91);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v70 - v15;
  v17 = sub_1007A21D4();
  v81 = v17;
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v70 - v22;
  v88 = sub_100796814();
  v93 = *(v88 - 8);
  __chkstk_darwin(v88);
  v80 = &v70 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v84 = &v70 - v26;
  v79 = sub_1001F1160(&qword_100AF3C60);
  sub_1007A2154();
  sub_100796C94();
  v27 = v18;
  v100 = *(v18 + 16);
  v97 = v18 + 16;
  v100(v20, v23, v17);
  v28 = *(v11 + 16);
  v96 = v11 + 16;
  v104 = v28;
  v82 = v13;
  v29 = v91;
  v28(v13, v16, v91);
  v101 = type metadata accessor for BundleFinder();
  *v10 = v101;
  v103 = enum case for LocalizedStringResource.BundleDescription.forClass(_:);
  v30 = *(v106 + 104);
  v106 += 104;
  v102 = v30;
  v90 = v10;
  v30(v10);
  sub_100796834();
  v94 = *(v11 + 8);
  v95 = v11 + 8;
  v31 = v16;
  v94(v16, v29);
  v32 = v27 + 8;
  v33 = *(v27 + 8);
  v34 = v81;
  v33(v23, v81);
  v83 = v33;
  v92 = v32;
  sub_1007A2154();
  sub_100796C94();
  v71 = v20;
  v35 = v34;
  v100(v20, v23, v34);
  v36 = v29;
  v104(v82, v31, v29);
  v37 = v90;
  v38 = v102;
  *v90 = v101;
  v38(v37, v103, v105);
  v39 = v98;
  sub_100796834();
  v94(v31, v36);
  v33(v23, v35);
  v40 = *(v93 + 56);
  v93 += 56;
  v72 = v40;
  v40(v39, 0, 1, v88);
  LOBYTE(v107) = 0;
  v41 = sub_100795CE4();
  v74 = v41;
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v75 = v43;
  v76 = v42 + 56;
  v43(v85, 1, 1, v41);
  v43(v86, 1, 1, v41);
  v77 = enum case for InputConnectionBehavior.default(_:);
  v44 = *(v99 + 104);
  v99 += 104;
  v78 = v44;
  v44(v87);
  sub_1006F8F54();
  v79 = sub_100795E54();
  v73 = sub_1001F1160(&qword_100AF3C68);
  v70 = v23;
  sub_1007A2154();
  sub_100796C94();
  v45 = v71;
  v46 = v23;
  v47 = v35;
  v100(v71, v46, v35);
  v48 = v82;
  v49 = v31;
  v50 = v31;
  v51 = v91;
  v104(v82, v49, v91);
  v52 = v90;
  v53 = v102;
  *v90 = v101;
  v53(v52, v103, v105);
  sub_100796834();
  v54 = v94;
  v94(v50, v51);
  v55 = v70;
  v56 = v83;
  v83(v70, v47);
  sub_1007A2154();
  sub_100796C94();
  v100(v45, v55, v47);
  v57 = v48;
  v58 = v50;
  v59 = v50;
  v60 = v91;
  v104(v48, v58, v91);
  v61 = v90;
  v62 = v102;
  *v90 = v101;
  v62(v61, v103, v105);
  v63 = v98;
  sub_100796834();
  v54(v59, v60);
  v64 = v81;
  v56(v55, v81);
  v72(v63, 0, 1, v88);
  v112 = 0;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v107 = 0u;
  sub_1007A2154();
  sub_100796C94();
  v100(v45, v55, v64);
  v104(v57, v59, v60);
  v65 = v102;
  *v61 = v101;
  v65(v61, v103, v105);
  sub_100796834();
  v94(v59, v60);
  v83(v55, v64);
  v66 = v85;
  sub_100795CF4();
  v67 = v74;
  v68 = v75;
  v75(v66, 0, 1, v74);
  v68(v86, 1, 1, v67);
  v78(v87, v77, v89);
  sub_100282BC4();
  sub_100795E74();
  sub_1001F1160(&qword_100AD57D0);
  sub_100795B74();
  v107 = 0u;
  v108 = 0u;
  *&v109 = 0;
  sub_100795B64();
  sub_100795AA4();
  return v79;
}

id sub_1006FEE60()
{
  *&v0[OBJC_IVAR___BKFinishedAssetManager_libraryManager] = 0;
  *&v0[OBJC_IVAR___BKFinishedAssetManager_objectMonitor] = 0;
  *&v0[OBJC_IVAR___BKFinishedAssetManager_assetCache] = 0;
  *&v0[OBJC_IVAR___BKFinishedAssetManager_enablementObservation] = 0;
  sub_10079ACD4();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinishedAssetManager(0);
  return objc_msgSendSuper2(&v2, "init");
}

void sub_1006FEF34(void *a1)
{
  v37 = sub_10079ACE4();
  v3 = *(v37 - 1);
  __chkstk_darwin(v37);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR___BKFinishedAssetManager_libraryManager] = 0;
  *&v1[OBJC_IVAR___BKFinishedAssetManager_objectMonitor] = 0;
  *&v1[OBJC_IVAR___BKFinishedAssetManager_assetCache] = 0;
  *&v1[OBJC_IVAR___BKFinishedAssetManager_enablementObservation] = 0;
  sub_10079ACD4();
  v6 = type metadata accessor for FinishedAssetManager(0);
  v39.receiver = v1;
  v39.super_class = v6;
  v7 = objc_msgSendSuper2(&v39, "init");
  v8 = OBJC_IVAR___BKFinishedAssetManager_libraryManager;
  v9 = *&v7[OBJC_IVAR___BKFinishedAssetManager_libraryManager];
  *&v7[OBJC_IVAR___BKFinishedAssetManager_libraryManager] = a1;
  v10 = a1;

  type metadata accessor for FinishedAssetCache(0);
  v11 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10079ACD4();
  *&v7[OBJC_IVAR___BKFinishedAssetManager_assetCache] = v11;

  v12 = *&v7[v8];
  if (v12 && (v13 = [v12 predicateForLocalLibraryAssets]) != 0)
  {
    v14 = v13;
    v37 = v10;
    v15 = [v10 persistentStoreCoordinator];
    if (v15)
    {
      v16 = v15;
      sub_1001F1160(&unk_100AD8160);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100811390;
      *(inited + 32) = swift_getKeyPath();
      v18 = v14;
      v19 = sub_10040E230(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v20 = v7;
      v36[1] = v19;
      v21 = sub_100408CFC(v19);
      sub_10040E374(v21);

      v22 = objc_allocWithZone(BCManagedObjectIDMonitor);
      v38 = sub_10000A7C4(0, &qword_100ADA990);
      v23 = v16;
      sub_1001F1160(&qword_100AE2370);
      sub_1007A22E4();
      v24 = sub_1007A2214();

      v25 = v18;
      v26 = sub_1007A2214();
      isa = sub_1007A2824().super.isa;
      v28 = [v22 initWithContext:0 coordinator:v23 entityName:v24 predicate:v25 mapProperty:v26 propertiesOfInterest:isa observer:v20];

      if (v28)
      {

        v29 = *&v20[OBJC_IVAR___BKFinishedAssetManager_objectMonitor];
        *&v20[OBJC_IVAR___BKFinishedAssetManager_objectMonitor] = v28;

        v30 = [objc_opt_self() standardUserDefaults];
        v38 = v30;
        swift_getKeyPath();
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v31 = sub_100796894();

        v32 = *&v20[OBJC_IVAR___BKFinishedAssetManager_enablementObservation];
        *&v20[OBJC_IVAR___BKFinishedAssetManager_enablementObservation] = v31;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    (*(v3 + 16))(v5, &v7[OBJC_IVAR___BKFinishedAssetManager_logger], v37);
    v33 = sub_10079ACC4();
    v34 = sub_1007A29B4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v33, v34, "No predicate available for finished asset monitoring", v35, 2u);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v37);
  }
}

uint64_t FinishedAssetCache.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_10079ACD4();
  return v0;
}

void sub_1006FF520(void **a1)
{
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v4 = &aBlock[-1] - v3;
  v5 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    if ([v5 BKFinishedAssetRemovalEnabledKey])
    {
      v8 = *&v7[OBJC_IVAR___BKFinishedAssetManager_libraryManager];
      if (v8)
      {
        v9 = v8;
        v10 = sub_1007A2214();
        v11 = swift_allocObject();
        *(v11 + 16) = v7;
        aBlock[4] = sub_1007040A0;
        aBlock[5] = v11;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100201C54;
        aBlock[3] = &unk_100A2DF58;
        v12 = _Block_copy(aBlock);
        v13 = v7;

        [v9 performNamed:v10 workerQueueBlock:v12];

        _Block_release(v12);
      }

      else
      {
      }
    }

    else
    {
      v14 = sub_1007A2744();
      (*(*(v14 - 8) + 56))(v4, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = 0;
      v15[3] = 0;
      v15[4] = v7;
      sub_100345AA0(0, 0, v4, &unk_100841458, v15);
    }
  }
}

Swift::Void __swiftcall FinishedAssetManager.removeFinishedDownloads(threshhold:)(Swift::Double threshhold)
{
  v3 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v3 - 8);
  v5 = &v14 - v4;
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = [v6 BKFinishedAssetRemovalEnabledKey];

  if (v7)
  {
    v8 = sub_1007A2744();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v1;
    *(v9 + 40) = threshhold;
    v10 = v1;
    sub_1003457A0(0, 0, v5, &unk_100841320, v9);
  }

  else
  {
    v15 = sub_10079ACC4();
    v11 = sub_1007A29D4();
    if (os_log_type_enabled(v15, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v15, v11, "Removal of finished assets disabled. Bailing out", v12, 2u);
    }

    v13 = v15;
  }
}

uint64_t sub_1006FF988(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a1;
  *(v5 + 16) = a5;
  v6 = sub_1007A2F14();
  *(v5 + 32) = v6;
  *(v5 + 40) = *(v6 - 8);
  *(v5 + 48) = swift_task_alloc();
  *(v5 + 56) = sub_1001F1160(&qword_100AF3E50);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();

  return _swift_task_switch(sub_1006FFA94, 0, 0);
}

uint64_t sub_1006FFA94()
{
  *(v0 + 80) = OBJC_IVAR___BKFinishedAssetManager_logger;
  v1 = sub_10079ACC4();
  v2 = sub_1007A29D4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Removing finished downloads older than threshold", v3, 2u);
  }

  v4 = [objc_opt_self() sharedAssertion];
  *(v0 + 88) = v4;
  if (v4)
  {
    v5 = v4;
    v6 = sub_1007A2214();
    v7 = sub_1007A2214();
    [v5 claimAssertionForIdentifier:v6 description:v7];
  }

  v8 = *(v0 + 16);
  v9 = OBJC_IVAR___BKFinishedAssetManager_assetCache;
  *(v0 + 96) = OBJC_IVAR___BKFinishedAssetManager_assetCache;
  v10 = *(v8 + v9);
  *(v0 + 104) = v10;
  if (v10)
  {

    return _swift_task_switch(sub_1006FFD54, v10, 0);
  }

  else
  {
    v11 = sub_10079ACC4();
    v12 = sub_1007A29D4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "No items removed", v13, 2u);
    }

    v14 = *(v0 + 88);

    if (v14)
    {
      v15 = *(v0 + 88);
      v16 = sub_1007A2214();
      [v15 releaseAssertionForIdentifier:v16];
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1006FFD54()
{
  *(v0 + 112) = _s5Books18FinishedAssetCacheC9allAssetsSDySS10Foundation4DateVGyF_0();

  return _swift_task_switch(sub_1006FFDC8, 0, 0);
}

uint64_t sub_1006FFDC8()
{
  v1 = v0[14];
  v64 = v0[8];
  v65 = v0[9];
  v72 = v0[7];
  v2 = v0[3];
  *(swift_task_alloc() + 16) = v2;
  sub_1007031DC(v1, sub_10070424C);
  v4 = v3;
  v5 = v0;

  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v67 = v4;

  v16 = 0;
  v17 = _swiftEmptyArrayStorage;
  v63 = v4 + 64;
  v66 = v5;
  v5[15] = _swiftEmptyArrayStorage;
  if (v9)
  {
    while (1)
    {
      v71 = v17;
LABEL_9:
      v20 = v5[8];
      v19 = v5[9];
      v21 = __clz(__rbit64(v9)) | (v16 << 6);
      v22 = *(v67 + 56);
      v23 = (*(v67 + 48) + 16 * v21);
      v24 = *v23;
      v25 = v23[1];
      v26 = sub_100796BB4();
      v27 = *(v26 - 8);
      v70 = v26;
      (*(v27 + 16))(&v19[*(v72 + 48)], v22 + *(v27 + 72) * v21);
      *v19 = v24;
      *(v65 + 8) = v25;
      sub_100704288(v19, v20);
      v28 = *v20;
      v29 = *(v64 + 8);

      v30 = v71;
      v68 = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_10000B3D8(0, *(v71 + 2) + 1, 1, v71);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      v17 = v30;
      v5 = v66;
      v69 = v28;
      if (v32 >= v31 >> 1)
      {
        v17 = sub_10000B3D8((v31 > 1), v32 + 1, 1, v30);
      }

      v9 &= v9 - 1;
      v33 = v66[8];
      v34 = *(v72 + 48);
      sub_100007840(v66[9], &qword_100AF3E50);
      *(v17 + 2) = v32 + 1;
      v35 = &v17[16 * v32];
      *(v35 + 4) = v69;
      *(v35 + 5) = v68;
      v11 = (*(v27 + 8))(v33 + v34, v70);
      v6 = v63;
      v66[15] = v17;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v18 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, v13, v14, v15);
    }

    if (v18 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v18);
    ++v16;
    if (v9)
    {
      v71 = v17;
      v16 = v18;
      goto LABEL_9;
    }
  }

  if (!*(v17 + 2))
  {

    v53 = v5;
    v54 = sub_10079ACC4();
    v55 = sub_1007A29D4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "No items removed", v56, 2u);
    }

    v57 = v53;
    v58 = v53[11];

    if (v58)
    {
      v59 = v53[11];
      v60 = sub_1007A2214();
      [v59 releaseAssertionForIdentifier:v60];

      v57 = v53;
    }

    goto LABEL_31;
  }

  v36 = v5[2];
  v37 = *(v36 + OBJC_IVAR___BKFinishedAssetManager_libraryManager);
  if (v37)
  {
    v38 = [v37 assetInsertDeleteContext];
    v39 = v5[2];
    v5[16] = v38;
    v40 = v5;
    v41 = *(v39 + v5[12]);
    v40[17] = v41;
    if (!v41)
    {
      if (v38)
      {
        v42 = v40[15];
        v43 = v40[11];
        v45 = v40[5];
        v44 = v40[6];
        v46 = v40[4];
        v47 = v38;
        v48 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v49 = swift_allocObject();
        v40[18] = v49;
        v49[2] = v48;
        v49[3] = v43;
        v49[4] = v42;
        v49[5] = v47;
        (*(v45 + 104))(v44, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v46);
        v50 = v47;
        v51 = v43;
        v50;
        v52 = swift_task_alloc();
        v40[19] = v52;
        v15 = sub_1001F1160(&qword_100ADD528);
        *v52 = v40;
        v52[1] = sub_100700674;
        v12 = v40[6];
        v13 = sub_1007042F8;
        v11 = (v40 + 20);
        v14 = v49;

        return NSManagedObjectContext.perform<A>(schedule:_:)(v11, v12, v13, v14, v15);
      }

      goto LABEL_30;
    }
  }

  else
  {
    v5[16] = 0;
    v40 = v5;
    v41 = *(v36 + v5[12]);
    v40[17] = v41;
    if (!v41)
    {
LABEL_30:

      v57 = v40;
LABEL_31:

      v61 = v57[1];

      return v61();
    }
  }

  return _swift_task_switch(sub_10070040C, v41, 0);
}

uint64_t sub_10070040C()
{
  _s5Books18FinishedAssetCacheC12removeAssetsyySaySSGF_0(*(v0 + 120));

  return _swift_task_switch(sub_100700480, 0, 0);
}

uint64_t sub_100700480()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    v2 = *(v0 + 120);
    v3 = *(v0 + 88);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 32);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v0 + 144) = v8;
    v8[2] = v7;
    v8[3] = v3;
    v8[4] = v2;
    v8[5] = v1;
    (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
    v9 = v1;
    v10 = v3;
    v9;
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    v12 = sub_1001F1160(&qword_100ADD528);
    *v11 = v0;
    v11[1] = sub_100700674;
    v13 = *(v0 + 48);

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 160, v13, sub_1007042F8, v8, v12);
  }

  else
  {

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100700674()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = v2[16];
    (*(v2[5] + 8))(v2[6], v2[4]);

    return _swift_task_switch(sub_1007007D0, 0, 0);
  }
}

uint64_t sub_1007007D0()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100700854(void *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v38 = a1;
    v43 = Strong;
    v10 = objc_allocWithZone(NSFetchRequest);
    v11 = sub_1007A2214();
    v39 = [v10 initWithEntityName:v11];

    [v39 setReturnsObjectsAsFaults:0];
    sub_10000A7C4(0, &unk_100AE6940);
    sub_1001F1160(&unk_100AD5090);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1008287D0;
    *(v12 + 56) = &type metadata for String;
    v13 = sub_10000E4C4();
    *(v12 + 64) = v13;
    *(v12 + 32) = 0x44497465737361;
    *(v12 + 40) = 0xE700000000000000;
    v14 = sub_1001F1160(&unk_100AD61F0);
    *(v12 + 96) = v14;
    v15 = sub_100704318();
    *(v12 + 72) = a2;
    *(v12 + 136) = &type metadata for String;
    *(v12 + 144) = v13;
    *(v12 + 104) = v15;
    *(v12 + 112) = 0xD000000000000019;
    *(v12 + 120) = 0x80000001008E8950;
    *(v12 + 176) = &type metadata for String;
    *(v12 + 184) = v13;
    *(v12 + 152) = 0x44497465737361;
    *(v12 + 160) = 0xE700000000000000;
    *(v12 + 216) = v14;
    *(v12 + 224) = v15;
    *(v12 + 192) = a2;
    *(v12 + 256) = &type metadata for String;
    *(v12 + 264) = v13;
    v16 = v39;
    *(v12 + 232) = 0x6574617473;
    *(v12 + 240) = 0xE500000000000000;
    *(v12 + 296) = &type metadata for Int16;
    *(v12 + 304) = &protocol witness table for Int16;
    *(v12 + 272) = 1;
    swift_bridgeObjectRetain_n();
    v17 = sub_1007A2904();
    [v39 setPredicate:v17];

    if (!a3)
    {
      v19 = v43;
      goto LABEL_8;
    }

    sub_10000A7C4(0, &qword_100ADA990);
    v18 = sub_1007A2F34();
    v19 = v43;
    if (v4)
    {

LABEL_8:
      v20 = sub_10079ACC4();
      v21 = sub_1007A29B4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to fetch finished libraryAssets", v22, 2u);
      }

      if (v38)
      {
        v23 = sub_1007A2214();
        [v38 releaseAssertionForIdentifier:v23];
      }

      goto LABEL_13;
    }

    v24 = v18;

    v25 = sub_10079ACC4();
    v26 = sub_1007A29D4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      aBlock[0] = v40;
      *v27 = 134218242;
      v41 = v26;
      if (v24 >> 62)
      {
        v28 = sub_1007A38D4();
      }

      else
      {
        v28 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v27 + 4) = v28;

      *(v27 + 12) = 2080;
      v29 = sub_1007A25F4();
      v31 = sub_1000070F4(v29, v30, aBlock);

      *(v27 + 14) = v31;
      _os_log_impl(&_mh_execute_header, v25, v41, "Removing %ld downloads for assets %s", v27, 0x16u);
      sub_1000074E0(v40);

      v19 = v43;
    }

    else
    {
    }

    v32 = *&v19[OBJC_IVAR___BKFinishedAssetManager_libraryManager];
    if (v32)
    {
      v33 = v32;
      isa = sub_1007A25D4().super.isa;

      v35 = swift_allocObject();
      *(v35 + 16) = v38;
      aBlock[4] = sub_10070437C;
      aBlock[5] = v35;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003323D0;
      aBlock[3] = &unk_100A2E098;
      v36 = _Block_copy(aBlock);
      v37 = v38;

      [v33 deleteAssets:isa exhaustive:0 completion:v36];

      _Block_release(v36);
      v16 = isa;
    }

    else
    {
    }

LABEL_13:

    goto LABEL_14;
  }

  if (a1)
  {
    v16 = sub_1007A2214();
    [a1 releaseAssertionForIdentifier:v16];
    goto LABEL_13;
  }

LABEL_14:
  *a4 = 0;
}

void sub_100700E40(void *a1)
{
  if (a1)
  {
    v2 = sub_1007A2214();
    [a1 releaseAssertionForIdentifier:v2];
  }
}

void sub_100700F18(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v9 - 8);
  v12 = &v49 - v11;
  if (!a1)
  {
    return;
  }

  v50 = v12;
  if (a1 >> 62)
  {
    v13 = sub_1007A38D4();
    if (v13)
    {
      goto LABEL_4;
    }

LABEL_31:
    swift_beginAccess();
    v43 = *(a4 + 16);
    swift_beginAccess();
    v44 = *(a5 + 16);
    v45 = sub_1007A2744();
    v46 = v50;
    (*(*(v45 - 8) + 56))(v50, 1, 1, v45);
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v43;
    v47[5] = a3;
    v47[6] = v44;

    v48 = a3;
    sub_1003457A0(0, 0, v46, &unk_100841488, v47);

    return;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v13)
  {
    goto LABEL_31;
  }

LABEL_4:
  if (v13 >= 1)
  {
    v14 = 0;
    v54 = OBJC_IVAR___BKFinishedAssetManager_logger;
    v57 = a1 & 0xC000000000000001;
    *&v10 = 136315138;
    v51 = v10;
    v55 = v13;
    v56 = a1;
    v52 = a5;
    v53 = a3;
    while (1)
    {
      if (v57)
      {
        v16 = sub_1007A3784();
      }

      else
      {
        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 assetID];
      if (v18)
      {
        v19 = v18;
        v20 = sub_1007A2254();
        v22 = v21;

        if ([v17 isFinished])
        {
          swift_beginAccess();
          v23 = *(a4 + 16);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(a4 + 16) = v23;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v23 = sub_10000B3D8(0, *(v23 + 2) + 1, 1, v23);
            *(a4 + 16) = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_10000B3D8((v25 > 1), v26 + 1, 1, v23);
          }

          *(v23 + 2) = v26 + 1;
          v27 = &v23[16 * v26];
          *(v27 + 4) = v20;
          *(v27 + 5) = v22;
          *(a4 + 16) = v23;
        }

        else
        {
          swift_beginAccess();
          v38 = *(a5 + 16);
          v39 = swift_isUniquelyReferenced_nonNull_native();
          *(a5 + 16) = v38;
          if ((v39 & 1) == 0)
          {
            v38 = sub_10000B3D8(0, *(v38 + 2) + 1, 1, v38);
            *(a5 + 16) = v38;
          }

          v41 = *(v38 + 2);
          v40 = *(v38 + 3);
          if (v41 >= v40 >> 1)
          {
            v38 = sub_10000B3D8((v40 > 1), v41 + 1, 1, v38);
          }

          *(v38 + 2) = v41 + 1;
          v15 = &v38[16 * v41];
          *(v15 + 4) = v20;
          *(v15 + 5) = v22;
          *(a5 + 16) = v38;
        }

        swift_endAccess();
      }

      else
      {
        v28 = v17;
        v29 = sub_10079ACC4();
        v30 = sub_1007A29D4();

        if (!os_log_type_enabled(v29, v30))
        {

          goto LABEL_9;
        }

        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v58[0] = v32;
        *v31 = v51;
        v33 = [v28 title];
        if (v33)
        {
          v34 = v33;
          v35 = sub_1007A2254();
          v37 = v36;
        }

        else
        {
          v35 = 0x6E776F6E6B6E753CLL;
          v37 = 0xEF3E656C74697420;
        }

        v42 = sub_1000070F4(v35, v37, v58);

        *(v31 + 4) = v42;
        _os_log_impl(&_mh_execute_header, v29, v30, "No assetID for asset %s. Skipping asset", v31, 0xCu);
        sub_1000074E0(v32);

        a5 = v52;
        a3 = v53;
      }

      v13 = v55;
      a1 = v56;
LABEL_9:
      if (v13 == ++v14)
      {
        goto LABEL_31;
      }
    }
  }

  __break(1u);
}

uint64_t sub_1007013D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_1007013FC, 0, 0);
}

uint64_t sub_1007013FC()
{
  if (*(v0[2] + 16))
  {
    v1 = *(v0[3] + OBJC_IVAR___BKFinishedAssetManager_assetCache);
    v0[5] = v1;
    if (v1)
    {
      v2 = sub_1007014EC;
LABEL_7:
      v3 = v2;

      return _swift_task_switch(v3, v1, 0);
    }
  }

  if (*(v0[4] + 16))
  {
    v1 = *(v0[3] + OBJC_IVAR___BKFinishedAssetManager_assetCache);
    v0[6] = v1;
    if (v1)
    {
      v2 = sub_100701620;
      goto LABEL_7;
    }
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_1007014EC()
{
  _s5Books18FinishedAssetCacheC9addAssetsyySaySSGF_0(*(v0 + 16));

  return _swift_task_switch(sub_100701560, 0, 0);
}

uint64_t sub_100701560()
{
  if (*(v0[4] + 16) && (v1 = *(v0[3] + OBJC_IVAR___BKFinishedAssetManager_assetCache), (v0[6] = v1) != 0))
  {

    return _swift_task_switch(sub_100701620, v1, 0);
  }

  else
  {
    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_100701620()
{
  _s5Books18FinishedAssetCacheC12removeAssetsyySaySSGF_0(*(v0 + 32));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10070168C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_10000A7C4(0, &qword_100ADA990);
    v4 = sub_1007A25E4();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t sub_1007017A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  *(v4 + 24) = a4;
  return _swift_task_switch(sub_1007017C8, 0, 0);
}

uint64_t sub_1007017C8()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___BKFinishedAssetManager_assetCache);
  *(v0 + 32) = v1;
  if (v1)
  {
    return _swift_task_switch(sub_100701818, v1, 0);
  }

  **(v0 + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_100701818()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100796BB4();
  isa = sub_1007A2024().super.isa;
  v2 = sub_1007A2214();
  [v0 setObject:isa forKey:v2];

  return _swift_task_switch(sub_10068D5A4, 0, 0);
}

uint64_t sub_100701914(uint64_t a1, void *a2)
{
  v63 = a2;
  v2 = sub_1001F1160(&qword_100AD67D0);
  __chkstk_darwin(v2 - 8);
  v65 = &v62 - v3;
  v4 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v4 - 8);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v70 = &v62 - v8;
  v9 = sub_100796BB4();
  v64 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_1007A2214();
  v66 = [v12 initWithEntityName:v13];

  [v66 setReturnsObjectsAsFaults:0];
  sub_1001F1160(&qword_100AD7FB0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10080EFF0;
  *(v14 + 32) = 0x44497465737361;
  *(v14 + 40) = 0xE700000000000000;
  *(v14 + 88) = &type metadata for String;
  *(v14 + 56) = &type metadata for String;
  strcpy((v14 + 64), "dateFinished");
  *(v14 + 77) = 0;
  *(v14 + 78) = -5120;
  isa = sub_1007A25D4().super.isa;

  [v66 setPropertiesToFetch:isa];

  sub_10000A7C4(0, &unk_100AE6940);
  sub_1001F1160(&unk_100AD5090);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10081E180;
  *(v16 + 56) = &type metadata for String;
  v17 = sub_10000E4C4();
  *(v16 + 32) = 0x6873696E69467369;
  *(v16 + 40) = 0xEA00000000006465;
  *(v16 + 96) = &type metadata for String;
  *(v16 + 104) = v17;
  *(v16 + 64) = v17;
  strcpy((v16 + 72), "dateFinished");
  *(v16 + 85) = 0;
  *(v16 + 86) = -5120;
  *(v16 + 136) = &type metadata for String;
  *(v16 + 144) = v17;
  *(v16 + 112) = 0xD000000000000015;
  *(v16 + 120) = 0x80000001008E88C0;
  *(v16 + 176) = &type metadata for String;
  *(v16 + 184) = v17;
  *(v16 + 152) = 0x6574617473;
  *(v16 + 160) = 0xE500000000000000;
  *(v16 + 216) = &type metadata for Int16;
  *(v16 + 224) = &protocol witness table for Int16;
  *(v16 + 192) = 1;
  v18 = sub_1007A2904();
  [v66 setPredicate:v18];

  sub_10000A7C4(0, &qword_100ADA990);
  v19 = sub_1007A2F34();
  v20 = v19;
  v68 = v11;
  v71 = v9;
  v21 = v65;
  if (v19 >> 62)
  {
    goto LABEL_45;
  }

  v73 = v19 & 0xFFFFFFFFFFFFFF8;
  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1007A38D4())
  {
    v23 = v21;
    v24 = v64;
    v74 = v20 & 0xC000000000000001;
    v69 = v20;
    v72 = i;
    if (i)
    {
      v25 = 0;
      v62 = _swiftEmptyArrayStorage;
      do
      {
        v26 = v25;
        while (1)
        {
          if (v74)
          {
            v27 = sub_1007A3784();
          }

          else
          {
            if (v26 >= *(v73 + 16))
            {
              goto LABEL_42;
            }

            v27 = *(v20 + 8 * v26 + 32);
          }

          v28 = v27;
          v25 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          v29 = [v27 assetID];
          if (v29)
          {
            break;
          }

          ++v26;
          i = v72;
          if (v25 == v72)
          {
            goto LABEL_21;
          }
        }

        v30 = v6;
        v31 = v29;
        v32 = sub_1007A2254();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_10000B3D8(0, *(v62 + 2) + 1, 1, v62);
        }

        v36 = *(v62 + 2);
        v35 = *(v62 + 3);
        v6 = v30;
        i = v72;
        if (v36 >= v35 >> 1)
        {
          v62 = sub_10000B3D8((v35 > 1), v36 + 1, 1, v62);
          i = v72;
        }

        v23 = v21;
        v37 = v62;
        *(v62 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v32;
        *(v38 + 5) = v34;
        v20 = v69;
      }

      while (v25 != i);
    }

    else
    {
      v62 = _swiftEmptyArrayStorage;
    }

LABEL_21:
    if (!i)
    {
      break;
    }

    v39 = 0;
    v40 = (v24 + 56);
    v41 = v24;
    v42 = (v24 + 48);
    v43 = _swiftEmptyArrayStorage;
    v67 = (v41 + 32);
    while (1)
    {
      if (v74)
      {
        v44 = sub_1007A3784();
      }

      else
      {
        if (v39 >= *(v73 + 16))
        {
          goto LABEL_44;
        }

        v44 = *(v20 + 8 * v39 + 32);
      }

      v45 = v44;
      v46 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v47 = [v44 dateFinished];
      v21 = v6;
      if (v47)
      {
        v48 = v47;
        sub_100796B64();

        v49 = 0;
      }

      else
      {
        v49 = 1;
      }

      v50 = v71;
      (*v40)(v21, v49, 1, v71);
      v51 = v70;
      sub_1002D73A4(v21, v70);
      v6 = v21;
      if ((*v42)(v51, 1, v50) == 1)
      {
        sub_100007840(v51, &unk_100ADB5C0);
        v20 = v69;
      }

      else
      {
        v52 = v21;
        v53 = *v67;
        (*v67)(v68, v51, v50);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_10066CA14(0, *(v43 + 2) + 1, 1, v43);
        }

        v21 = *(v43 + 2);
        v54 = *(v43 + 3);
        v20 = v69;
        if (v21 >= v54 >> 1)
        {
          v43 = sub_10066CA14(v54 > 1, v21 + 1, 1, v43);
        }

        *(v43 + 2) = v21 + 1;
        v53(&v43[((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v21]);
        v6 = v52;
        v23 = v65;
      }

      ++v39;
      if (v46 == v72)
      {
        goto LABEL_40;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v73 = v20 & 0xFFFFFFFFFFFFFF8;
  }

  v43 = _swiftEmptyArrayStorage;
LABEL_40:

  v55 = sub_1007A2744();
  (*(*(v55 - 8) + 56))(v23, 1, 1, v55);
  v56 = v23;
  v57 = swift_allocObject();
  v57[2] = 0;
  v57[3] = 0;
  v59 = v62;
  v58 = v63;
  v57[4] = v63;
  v57[5] = v59;
  v57[6] = v43;
  v60 = v58;
  sub_100345AA0(0, 0, v56, &unk_100841470, v57);
}

uint64_t sub_100702204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return _swift_task_switch(sub_100702228, 0, 0);
}

uint64_t sub_100702228()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR___BKFinishedAssetManager_assetCache);
  *(v0 + 48) = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1007022E8, v1, 0);
  }

  else
  {
    **(v0 + 16) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1007022E8()
{
  FinishedAssetCache.addAssets(_:dates:)(v0[4], v0[5]);

  return _swift_task_switch(sub_10070235C, 0, 0);
}

id FinishedAssetManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FinishedAssetManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void FinishedAssetCache.dataDict.setter()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100796BB4();
  isa = sub_1007A2024().super.isa;

  v2 = sub_1007A2214();
  [v0 setObject:isa forKey:v2];
}

void sub_100702588(uint64_t a1, char a2)
{
  v3 = objc_opt_self();
  if (a2)
  {
    v4 = v3;

    v5 = [v4 standardUserDefaults];
    sub_100796BB4();
    isa = sub_1007A2024().super.isa;

    v7 = sub_1007A2214();
    [v5 setObject:isa forKey:v7];
  }

  else
  {
    v10 = [v3 standardUserDefaults];
    sub_100796BB4();
    v8 = sub_1007A2024().super.isa;

    v9 = sub_1007A2214();
    [v10 setObject:v8 forKey:v9];
  }
}

uint64_t FinishedAssetCache.init()()
{
  swift_defaultActor_initialize();
  sub_10079ACD4();
  return v0;
}

Swift::Void __swiftcall FinishedAssetCache.addAssets(_:dates:)(Swift::OpaquePointer _, Swift::OpaquePointer dates)
{
  v4 = sub_100796BB4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(_._rawValue + 2);
  if (v8 == *(dates._rawValue + 2))
  {
    v9 = _s5Books18FinishedAssetCacheC9allAssetsSDySS10Foundation4DateVGyF_0();
    if (v8)
    {
      v43 = *(v5 + 16);
      v44 = (v5 + 16);
      v40 = (v5 + 40);
      v41 = (v5 + 32);
      v10 = dates._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80));
      v11 = *(v5 + 72);
      v12 = (_._rawValue + 40);
      v42 = v11;
      while (1)
      {
        v17 = *(v12 - 1);
        v16 = *v12;
        v18 = v7;
        v19 = v7;
        v20 = v4;
        v43(v19, v10, v4);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v9;
        v22 = sub_10000E53C(v17, v16);
        v24 = v9[2];
        v25 = (v23 & 1) == 0;
        v26 = __OFADD__(v24, v25);
        v27 = v24 + v25;
        if (v26)
        {
          break;
        }

        v28 = v23;
        if (v9[3] >= v27)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v33 = v22;
            sub_1002F3E90();
            v22 = v33;
          }
        }

        else
        {
          sub_1003D9854(v27, isUniquelyReferenced_nonNull_native);
          v22 = sub_10000E53C(v17, v16);
          if ((v28 & 1) != (v29 & 1))
          {
            goto LABEL_23;
          }
        }

        v4 = v20;
        v7 = v18;
        if (v28)
        {
          v13 = v22;

          v9 = v45;
          v14 = v45[7] + v13 * v42;
          v15 = v42;
          (*v40)(v14, v18, v4);
        }

        else
        {
          v9 = v45;
          v45[(v22 >> 6) + 8] |= 1 << v22;
          v30 = (v9[6] + 16 * v22);
          *v30 = v17;
          v30[1] = v16;
          v15 = v42;
          (*v41)(v9[7] + v22 * v42, v18, v4);
          v31 = v9[2];
          v26 = __OFADD__(v31, 1);
          v32 = v31 + 1;
          if (v26)
          {
            goto LABEL_22;
          }

          v9[2] = v32;
        }

        v10 += v15;
        v12 += 2;
        if (!--v8)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      sub_1007A3B24();
      __break(1u);
    }

    else
    {
LABEL_20:
      v37 = [objc_opt_self() standardUserDefaults];
      isa = sub_1007A2024().super.isa;

      v39 = sub_1007A2214();
      [v37 setObject:isa forKey:v39];
    }
  }

  else
  {
    v44 = sub_10079ACC4();
    v34 = sub_1007A29B4();
    if (os_log_type_enabled(v44, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&_mh_execute_header, v44, v34, "Different size for assetIDs and dates. Not adding anything to the cache", v35, 2u);
    }

    v36 = v44;
  }
}

Swift::Void __swiftcall FinishedAssetCache.clear()()
{
  v0 = [objc_opt_self() standardUserDefaults];
  sub_100796BB4();
  isa = sub_1007A2024().super.isa;
  v2 = sub_1007A2214();
  [v0 setObject:isa forKey:v2];
}

uint64_t FinishedAssetCache.deinit()
{
  v1 = OBJC_IVAR____TtC5Books18FinishedAssetCache_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t FinishedAssetCache.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC5Books18FinishedAssetCache_logger;
  v2 = sub_10079ACE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_100702D2C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100009A34;

  return sub_1006FF988(v7, a1, v4, v5, v6);
}

void *sub_100702DF0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_100702F90(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *_s5Books18FinishedAssetCacheC9allAssetsSDySS10Foundation4DateVGyF_0()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1007A2214();
  v2 = [v0 objectForKey:v1];

  if (v2 && (sub_1007A3504(), swift_unknownObjectRelease(), sub_1000076D4(v5, v6), sub_1000076D4(v6, v5), sub_1001F1160(&qword_100AF3E48), swift_dynamicCast()))
  {
    return v4;
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }
}

void sub_100702F90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = sub_100796BB4();
  v6.n128_f64[0] = __chkstk_darwin(v34);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v5;
  v8 = 0;
  v36 = a3;
  v9 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v30 = v5 + 8;
  v31 = v5 + 16;
  v14 = v32;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = (v36[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v23 = v33;
    v22 = v34;
    v24 = v18;
    (*(v33 + 16))(v14, v36[7] + *(v33 + 72) * v18, v34, v6);

    LOBYTE(v20) = v35(v20, v21, v14);
    (*(v23 + 8))(v14, v22);

    v12 = v37;
    if (v20)
    {
      *(v27 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1002C6C80(v27, v26, v28, v36);
        return;
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      goto LABEL_15;
    }

    v17 = *(v29 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1007031DC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_100702DF0(v9, v6, v4, a2);

      return;
    }
  }

  __chkstk_darwin(a1);
  v8 = &v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_100702F90(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void _s5Books18FinishedAssetCacheC12removeAssetsyySaySSGF_0(uint64_t a1)
{
  v2 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v2 - 8);
  v4 = &v21 - v3;
  v5 = _s5Books18FinishedAssetCacheC9allAssetsSDySS10Foundation4DateVGyF_0();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = (a1 + 40);
    do
    {
      v9 = *(v7 - 1);
      v10 = *v7;

      v11 = sub_10000E53C(v9, v10);
      v13 = v12;

      if (v13)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v5;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002F3E90();
          v5 = v22;
        }

        v15 = v5[7];
        v16 = sub_100796BB4();
        v17 = *(v16 - 8);
        (*(v17 + 32))(v4, v15 + *(v17 + 72) * v11, v16);
        sub_1002F090C(v11, v5);
        (*(v17 + 56))(v4, 0, 1, v16);
      }

      else
      {
        v8 = sub_100796BB4();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
      }

      sub_100007840(v4, &unk_100ADB5C0);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  v18 = [objc_opt_self() standardUserDefaults];
  sub_100796BB4();
  isa = sub_1007A2024().super.isa;

  v20 = sub_1007A2214();
  [v18 setObject:isa forKey:v20];
}

void sub_10070360C(void *a1)
{
  v2 = v1;
  v4 = _swiftEmptyArrayStorage;
  v32 = _swiftEmptyArrayStorage;
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyArrayStorage;
  v6 = swift_allocObject();
  *(v6 + 16) = _swiftEmptyArrayStorage;
  v7 = [a1 updatedObjects];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1007A25E4();

    v10 = sub_1005AB520(v9);

    if (v10)
    {
      v4 = v10;
    }
  }

  sub_100484B94(v4);
  v11 = [a1 addedObjects];
  v12 = _swiftEmptyArrayStorage;
  if (v11)
  {
    v13 = v11;
    v14 = sub_1007A25E4();

    v15 = sub_1005AB520(v14);

    if (v15)
    {
      v12 = v15;
    }
  }

  sub_100484B94(v12);
  v16 = [a1 deletedObjects];
  v17 = _swiftEmptyArrayStorage;
  if (v16)
  {
    v18 = v16;
    v19 = sub_1007A25E4();

    v20 = sub_1005AB520(v19);

    if (v20)
    {
      v17 = v20;
    }
  }

  sub_100484B94(v17);
  v21 = v32;

  v22 = sub_10079ACC4();
  v23 = sub_1007A29D4();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134218240;
    *(v24 + 4) = *(v21 + 16);

    *(v24 + 12) = 2048;
    swift_beginAccess();
    *(v24 + 14) = *(*(v5 + 16) + 16);

    _os_log_impl(&_mh_execute_header, v22, v23, "%ld assets updated. %ld assets removed", v24, 0x16u);
  }

  else
  {
  }

  v25 = *&v2[OBJC_IVAR___BKFinishedAssetManager_libraryManager];
  if (v25)
  {
    v26 = v25;
    sub_1003BC374(v21);

    isa = sub_1007A25D4().super.isa;

    v28 = swift_allocObject();
    v28[2] = v2;
    v28[3] = v6;
    v28[4] = v5;
    aBlock[4] = sub_100704178;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10070168C;
    aBlock[3] = &unk_100A2DFF8;
    v29 = _Block_copy(aBlock);

    v30 = v2;

    [v26 fetchLibraryAssetsFromAssetIDs:isa handler:v29];
    _Block_release(v29);
  }

  else
  {
  }
}

void _s5Books18FinishedAssetCacheC9addAssetsyySaySSGF_0(uint64_t a1)
{
  v2 = sub_100796BB4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = v41 - v7;
  v8 = sub_1001F1160(&unk_100ADB5C0);
  __chkstk_darwin(v8 - 8);
  v46 = v41 - v9;
  v10 = _s5Books18FinishedAssetCacheC9allAssetsSDySS10Foundation4DateVGyF_0();
  v11 = *(a1 + 16);
  if (!v11)
  {
LABEL_19:
    v38 = [objc_opt_self() standardUserDefaults];
    isa = sub_1007A2024().super.isa;
    v40 = sub_1007A2214();
    [v38 setObject:isa forKey:v40];

    return;
  }

  v45 = (v3 + 56);
  v47 = (v3 + 32);
  v41[1] = v3 + 16;
  v41[2] = v3 + 40;
  v12 = (a1 + 40);
  v42 = v5;
  v43 = v3;
  while (1)
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v15 = v10[2];

    if (v15)
    {
      v16 = sub_10000E53C(v13, v14);
      if (v17)
      {
        v18 = v46;
        (*(v3 + 16))(v46, v10[7] + *(v3 + 72) * v16, v2);
        (*(v3 + 56))(v18, 0, 1, v2);

        sub_100007840(v18, &unk_100ADB5C0);
        goto LABEL_4;
      }
    }

    v19 = v46;
    (*v45)(v46, 1, 1, v2);
    sub_100007840(v19, &unk_100ADB5C0);
    v20 = v44;
    sub_100796B74();
    v21 = *v47;
    v22 = v20;
    v23 = v2;
    (*v47)(v5, v22, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v10;
    v25 = v13;
    v27 = sub_10000E53C(v13, v14);
    v28 = v10[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      break;
    }

    v31 = v26;
    if (v10[3] >= v30)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v2 = v23;
        if (v26)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1002F3E90();
        v2 = v23;
        if (v31)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1003D9854(v30, isUniquelyReferenced_nonNull_native);
      v32 = sub_10000E53C(v25, v14);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_22;
      }

      v27 = v32;
      v2 = v23;
      if (v31)
      {
LABEL_3:

        v10 = v48;
        v5 = v42;
        v3 = v43;
        (*(v43 + 40))(v48[7] + *(v43 + 72) * v27, v42, v2);
        goto LABEL_4;
      }
    }

    v10 = v48;
    v48[(v27 >> 6) + 8] |= 1 << v27;
    v34 = (v10[6] + 16 * v27);
    *v34 = v25;
    v34[1] = v14;
    v5 = v42;
    v3 = v43;
    v21((v10[7] + *(v43 + 72) * v27), v42, v2);
    v35 = v10[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_21;
    }

    v10[2] = v37;
LABEL_4:
    v12 += 2;
    if (!--v11)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1007A3B24();
  __break(1u);
}

uint64_t sub_100703E74()
{
  result = sub_10079ACE4();
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

uint64_t sub_100703F3C()
{
  result = sub_10079ACE4();
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

uint64_t sub_100703FEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002812C;

  return sub_1007017A8(a1, v4, v5, v6);
}

uint64_t sub_1007040B0(uint64_t a1)
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

  return sub_100702204(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_100704184(uint64_t a1)
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

  return sub_1007013D8(a1, v4, v5, v6, v7, v8);
}

BOOL sub_10070424C()
{
  v1 = *(v0 + 16);
  sub_100796B34();
  return v1 < -v2;
}

uint64_t sub_100704288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F1160(&qword_100AF3E50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100704318()
{
  result = qword_100AEC090;
  if (!qword_100AEC090)
  {
    sub_1001F1234(&unk_100AD61F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AEC090);
  }

  return result;
}

uint64_t sub_100704394()
{
  v1[36] = v0;
  v2 = sub_10079B0A4();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v3 = sub_10079B014();
  v1[40] = v3;
  v1[41] = *(v3 - 8);
  v1[42] = swift_task_alloc();
  sub_1001F1160(&qword_100AF3F90);
  v1[43] = swift_task_alloc();
  sub_1001F1160(&qword_100AF3F98);
  v1[44] = swift_task_alloc();
  v4 = sub_10079AFC4();
  v1[45] = v4;
  v1[46] = *(v4 - 8);
  v1[47] = swift_task_alloc();
  v5 = sub_10079AFD4();
  v1[48] = v5;
  v1[49] = *(v5 - 8);
  v1[50] = swift_task_alloc();
  sub_1001F1160(&unk_100AD5AC0);
  v1[51] = swift_task_alloc();
  sub_1007A26F4();
  v1[52] = sub_1007A26E4();
  v7 = sub_1007A2694();

  return _swift_task_switch(sub_100704644, v7, v6);
}

void sub_100704644()
{
  v67 = v0;
  sub_10000E3E8(*(v0 + 288), *(*(v0 + 288) + 24));
  v1 = sub_100796EB4();
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  v3 = [v1 view];

  if (!v3)
  {
    __break(1u);
    goto LABEL_37;
  }

  v4 = [v3 window];

  if (v4)
  {
    v5 = [v4 windowScene];
    if (v5)
    {
      v6 = v5;
      v7 = *(v0 + 288);
      v62 = v4;
      v63[0] = 0xD000000000000036;
      v63[1] = 0x80000001008E8990;
      sub_10000E3E8((v7 + 40), *(v7 + 64));
      v8 = sub_100797704();
      v61 = v6;
      if (*(v8 + 16))
      {
        v9 = 0x3E4C5255206F4E3CLL;
        sub_100009864(v8 + 32, v0 + 56);

        sub_1000077C0((v0 + 56), v0 + 16);
        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        sub_10000E3E8((v0 + 16), *(v0 + 40));
        v10._countAndFlagsBits = sub_100797664();
        if (v10._object)
        {
          object = v10._object;
        }

        else
        {
          v10._countAndFlagsBits = 0x6C746954206F4E3CLL;
          object = 0xEA00000000003E65;
        }

        v10._object = object;
        sub_1007A23D4(v10);

        v69._countAndFlagsBits = 10272;
        v69._object = 0xE200000000000000;
        sub_1007A23D4(v69);
        sub_10000E3E8((v0 + 16), *(v0 + 40));
        v70._countAndFlagsBits = sub_100797674();
        sub_1007A23D4(v70);

        v71._countAndFlagsBits = 41;
        v71._object = 0xE100000000000000;
        sub_1007A23D4(v71);
        sub_1007A23D4(v64);

        v72._object = 0x80000001008E89D0;
        v72._countAndFlagsBits = 0xD000000000000011;
        sub_1007A23D4(v72);
        v64._countAndFlagsBits = 0;
        v64._object = 0xE000000000000000;
        sub_10000E3E8((v0 + 16), *(v0 + 40));
        v12._countAndFlagsBits = sub_100797614();
        if (v12._object)
        {
          v13 = v12._object;
        }

        else
        {
          v12._countAndFlagsBits = 0x3E4C5255206F4E3CLL;
          v13 = 0xE800000000000000;
        }

        v12._object = v13;
        sub_1007A23D4(v12);

        v73._countAndFlagsBits = 2570;
        v73._object = 0xE200000000000000;
        sub_1007A23D4(v73);
        sub_1007A23D4(v64);

        sub_10000E3E8((v0 + 16), *(v0 + 40));
        if (sub_100797644())
        {
          sub_1007A3744(24);

          v64._countAndFlagsBits = 0xD000000000000013;
          v64._object = 0x80000001008E89F0;
          sub_10000E3E8((v0 + 16), *(v0 + 40));
          v14 = *(sub_1007975C4() + 16);

          *(v0 + 280) = v14;
          v74._countAndFlagsBits = sub_1007A3A74();
          sub_1007A23D4(v74);

          v75._countAndFlagsBits = 670249;
          v75._object = 0xE300000000000000;
          sub_1007A23D4(v75);
          sub_1007A23D4(v64);

          v15 = sub_10000E3E8((v0 + 16), *(v0 + 40));
          v16 = sub_1007975C4();
          v17 = v16;
          v18 = *(v16 + 16);
          if (v18)
          {
            v6 = 0;
            v19 = v16 + 32;
            while (1)
            {
              v22 = *(v17 + 16);
              if (v6 >= v22)
              {
                break;
              }

              v23 = *(v0 + 408);
              sub_100009864(v19, v0 + 176);
              v64._countAndFlagsBits = 8234;
              v64._object = 0xE200000000000000;
              sub_10000E3E8((v0 + 176), *(v0 + 200));
              sub_100799514();
              v24 = sub_1007969B4();
              v9 = *(v24 - 8);
              v25 = (*(v9 + 48))(v23, 1, v24);
              v26 = *(v0 + 408);
              if (v25 == 1)
              {
                sub_100007840(*(v0 + 408), &unk_100AD5AC0);
                v20 = 0xE800000000000000;
                v21._countAndFlagsBits = 0x3E4C5255206F4E3CLL;
              }

              else
              {
                v27 = sub_100796914();
                v20 = v28;
                v29 = *(v9 + 8);
                v9 += 8;
                v29(v26, v24);
                v21._countAndFlagsBits = v27;
              }

              v6 = (v6 + 1);
              v21._object = v20;
              sub_1007A23D4(v21);

              v76._countAndFlagsBits = 10;
              v76._object = 0xE100000000000000;
              sub_1007A23D4(v76);
              v15 = v63;
              sub_1007A23D4(v64);

              sub_1000074E0(v0 + 176);
              v19 += 40;
              if (v18 == v6)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
LABEL_35:
            v18 = sub_10066CA3C(v22 > 1, v15, 1, v18);
LABEL_26:
            v35 = *(v0 + 392);
            v34 = *(v0 + 400);
            v36 = *(v0 + 384);
            *(v18 + 2) = v15;
            (*(v35 + 32))(v18 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v17, v34, v36);
            v37 = [objc_opt_self() delegate];
            v38 = [v37 containerHost];

            sub_1000076D8(v0 + 96);
            sub_10000E3E8((v0 + 96), *(v0 + 120));
            sub_1001F1160(&qword_100AF3FA0);
            sub_100798CD4();
            if (*(v0 + 256))
            {
              v39 = sub_10079AF94();
              swift_allocObject();
              v40 = sub_10079AF84();
              v41.super.super.super.isa = v6;
              sub_10079AF74(v41);
              if (qword_100AD1B48 != -1)
              {
                swift_once();
              }

              v60 = v9;
              v43 = *(v0 + 368);
              v42 = *(v0 + 376);
              v59 = sub_100008B98(*(v0 + 360), static RadarComponent.iBooksStoreAll);
              v58 = *(v43 + 16);
              v58(v42);
              sub_10000E3E8((v0 + 96), *(v0 + 120));
              sub_1001F1160(&qword_100AF3FA8);
              sub_100798CD4();
              if (*(v0 + 160))
              {
                v44 = *(v0 + 368);
                v49 = *(v0 + 344);
                v50 = *(v0 + 360);
                v52 = *(v0 + 336);
                v51 = *(v0 + 328);
                v53 = *(v0 + 320);
                v54 = *(v0 + 352);
                v55 = *(v0 + 304);
                v56 = *(v0 + 312);
                v57 = *(v0 + 296);
                swift_getObjectType();

                v65 = v39;
                v66 = &protocol witness table for SceneProvider;
                v64._countAndFlagsBits = v40;
                sub_10079B074();
                swift_allocObject();

                *(v0 + 272) = sub_10079B064();
                sub_1001F1160(&qword_100AF3FB0);
                sub_10079B0D4();
                v45 = sub_10079B0C4();
                sub_10079B034();

                sub_10079B0D4();
                (v58)(v49, v59, v50);
                (*(v44 + 56))(v49, 0, 1, v50);
                (*(v51 + 104))(v52, enum case for RadarDiagnostics.sysdiagnose(_:), v53);

                sub_10079B0B4();
                (*(*(v45 - 8) + 56))(v54, 0, 1, v45);
                (*(v55 + 104))(v56, enum case for CommandExecutionLocation.contextMenu(_:), v57);
                v46 = type metadata accessor for NulCommandTracker();
                v47 = swift_allocObject();
                v65 = v46;
                v66 = sub_1007056CC();
                v64._countAndFlagsBits = v47;
                *(v0 + 216) = 0u;
                *(v0 + 232) = 0u;
                *(v0 + 248) = 1;
                sub_10079B094();
                swift_allocObject();
                sub_10079B084();
                sub_10079B024();

                swift_unknownObjectRelease();
                sub_100007840(*(v0 + 352), &qword_100AF3F98);
                sub_1000074E0(v0 + 96);

                goto LABEL_31;
              }

LABEL_38:
              __break(1u);
              return;
            }

LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

LABEL_23:
        }

        sub_1000074E0(v0 + 16);
        v6 = v61;
      }

      else
      {
      }

      v31 = *(v0 + 392);
      v30 = *(v0 + 400);
      v32 = *(v0 + 384);
      v33 = swift_allocObject();
      *(v33 + 16) = v62;
      *v30 = v33;
      (*(v31 + 104))(v30, enum case for RadarAttachment.screenshot(_:), v32);
      v9 = v62;
      v18 = sub_10066CA3C(0, 1, 1, _swiftEmptyArrayStorage);
      v17 = *(v18 + 2);
      v22 = *(v18 + 3);
      v15 = (v17 + 1);
      if (v17 < v22 >> 1)
      {
        goto LABEL_26;
      }

      goto LABEL_35;
    }
  }

  else
  {
LABEL_20:
  }

LABEL_31:

  v48 = *(v0 + 8);

  v48();
}

uint64_t RadarComponent.iBooksStoreAll.unsafeMutableAddressor()
{
  if (qword_100AD1B48 != -1)
  {
    swift_once();
  }

  v0 = sub_10079AFC4();

  return sub_100008B98(v0, static RadarComponent.iBooksStoreAll);
}

uint64_t sub_100705240()
{
  v1 = sub_1007971A4();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v11 - v6;
  if (sub_100798F24())
  {
    sub_10000E3E8((v0 + 40), *(v0 + 64));
    sub_100797784();
    (*(v2 + 104))(v4, enum case for ContextActionSource.productPage(_:), v1);
    v8 = sub_100797184();
    v9 = *(v2 + 8);
    v9(v4, v1);
    v9(v7, v1);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1007053AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100704394();
}

uint64_t sub_100705438@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *(a5 + 32);
  v12 = enum case for ContextActionType.internalTapToRadar(_:);
  v13 = sub_100797144();
  (*(*(v13 - 8) + 104))(a6 + v11, v12, v13);
  sub_1000077C0(a1, a6 + 40);
  sub_1000077C0(a2, a6);
  *(a6 + 80) = a3;

  return sub_1000077C0(a4, a6 + 88);
}

uint64_t sub_100705500()
{
  v0 = sub_10079AFC4();
  sub_100009A38(v0, static RadarComponent.iBooksStoreAll);
  sub_100008B98(v0, static RadarComponent.iBooksStoreAll);
  return sub_10079AFB4();
}

uint64_t static RadarComponent.iBooksStoreAll.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1B48 != -1)
  {
    swift_once();
  }

  v2 = sub_10079AFC4();
  v3 = sub_100008B98(v2, static RadarComponent.iBooksStoreAll);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for InternalTapToRadarActionItem()
{
  result = qword_100AF3F48;
  if (!qword_100AF3F48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1007056CC()
{
  result = qword_100AF3FB8;
  if (!qword_100AF3FB8)
  {
    type metadata accessor for NulCommandTracker();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3FB8);
  }

  return result;
}

uint64_t sub_10070574C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001F1160(&qword_100AF3FC0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1007057C4()
{
  result = qword_100AF3FC8;
  if (!qword_100AF3FC8)
  {
    sub_1001F1234(&qword_100AF3FC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3FC8);
  }

  return result;
}

uint64_t type metadata accessor for EditFinishedDateActionItem()
{
  result = qword_100AF4028;
  if (!qword_100AF4028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10070589C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_100009864(a1, v28);
  sub_100009864(a2, v27);
  sub_100009864(a4, v26);
  v10 = objc_opt_self();
  v11 = [v10 delegate];
  v12 = [v11 serviceCenter];

  v13 = [objc_opt_self() defaultManager];
  v14 = [v10 delegate];
  v15 = [v14 engagementManager];

  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v17 = result;
    v18 = [objc_opt_self() defaultHelper];
    v24 = &type metadata for MenuLibraryOperationProvider;
    v25 = &off_100A266E8;
    v19 = swift_allocObject();
    *&v23 = v19;
    v19[2] = v12;
    v19[3] = v13;
    v19[4] = v15;
    v19[5] = v17;
    v19[6] = v18;
    sub_1000074E0(a4);
    sub_1000074E0(a2);
    sub_1000074E0(a1);
    v20 = *(type metadata accessor for EditFinishedDateActionItem() + 36);
    v21 = enum case for ContextActionType.editFinishedDate(_:);
    v22 = sub_100797144();
    (*(*(v22 - 8) + 104))(a5 + v20, v21, v22);
    sub_1000077C0(v28, a5 + 40);
    sub_1000077C0(v27, a5);
    *(a5 + 80) = a3;
    sub_1000077C0(v26, a5 + 88);
    return sub_1000077C0(&v23, a5 + 128);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100705AD8()
{
  sub_1001FEC24(&v3);
  if (v4)
  {
    sub_1001FF7C8(&v3, &v5);
    sub_10000E3E8(&v5, v6);
    v0 = sub_1007975D4();
    if (v0 == 2)
    {
      sub_1000074E0(&v5);
      v1 = 0;
    }

    else
    {
      v1 = v0;
      sub_10000E3E8(&v5, v6);
      sub_1007976B4();
      if (sub_1007972D4() & 1) != 0 || (sub_10000E3E8(&v5, v6), sub_1007976B4(), (sub_1007972D4()))
      {
        v1 = 0;
      }

      sub_1000074E0(&v5);
    }
  }

  else
  {
    sub_100007840(&v3, &qword_100AD4B40);
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_100705BE8()
{
  v0 = sub_100796CF4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v6 = &v19[-v5];
  v7 = sub_1007A21D4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v13 = &v19[-v12];
  sub_1001FEC24(&v20);
  if (v21)
  {
    sub_1001FF7C8(&v20, &v22);
    sub_10000E3E8(&v22, v23);
    v14 = sub_1002C4E64();
    if (v14 == 2 || (v14 & 1) != 0)
    {
      sub_1007A2154();
      (*(v8 + 16))(v10, v13, v7);
      sub_100796C94();
      v15 = sub_1007A22B4();
    }

    else
    {
      sub_1007A2154();
      sub_100796C94();
      (*(v8 + 16))(v10, v13, v7);
      type metadata accessor for BundleFinder();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v17 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
      (*(v1 + 16))(v3, v6, v0);
      v15 = sub_1007A22D4();
      (*(v1 + 8))(v6, v0);
    }

    (*(v8 + 8))(v13, v7);
    sub_1000074E0(&v22);
  }

  else
  {
    sub_100007840(&v20, &qword_100AD4B40);
    return 0;
  }

  return v15;
}

uint64_t sub_100705F70()
{
  v1[29] = v0;
  v2 = sub_10079ACE4();
  v1[30] = v2;
  v1[31] = *(v2 - 8);
  v1[32] = swift_task_alloc();
  sub_1007A26F4();
  v1[33] = sub_1007A26E4();
  v4 = sub_1007A2694();
  v1[34] = v4;
  v1[35] = v3;

  return _swift_task_switch(sub_100706064, v4, v3);
}

uint64_t sub_100706064()
{
  sub_100009864(*(v0 + 232), v0 + 192);
  sub_1001F1160(&qword_100AD5ED0);
  sub_1001F1160(&qword_100AD5ED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(v0 + 184) = 0;
    *(v0 + 168) = 0u;
    *(v0 + 152) = 0u;
    goto LABEL_8;
  }

  if (!*(v0 + 176))
  {
LABEL_8:

    sub_100007840(v0 + 152, qword_100AD5EE0);
    goto LABEL_9;
  }

  sub_1000077C0((v0 + 152), v0 + 112);
  sub_1001FEC24((v0 + 64));
  if (*(v0 + 88))
  {
    v1 = *(v0 + 232);
    sub_1001FF7C8((v0 + 64), (v0 + 16));
    v2 = sub_10000E3E8((v0 + 112), *(v0 + 136));
    v3 = *(v1 + 80);
    v4 = swift_task_alloc();
    *(v0 + 288) = v4;
    *v4 = v0;
    v4[1] = sub_100706304;

    return (sub_100706534)(v0 + 16, v1 + 40, v3, v2);
  }

  sub_100007840(v0 + 64, &qword_100AD4B40);
  sub_1000074E0(v0 + 112);
LABEL_9:
  sub_10079AC44();
  v6 = sub_10079ACC4();
  v7 = sub_1007A29B4();
  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 248);
  v9 = *(v0 + 256);
  v11 = *(v0 + 240);
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Action doesn't have sufficient context or assetInfo to handle action.", v12, 2u);
  }

  (*(v10 + 8))(v9, v11);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100706304()
{
  v1 = *v0;

  v2 = *(v1 + 280);
  v3 = *(v1 + 272);

  return _swift_task_switch(sub_100706424, v3, v2);
}

uint64_t sub_100706424()
{

  sub_1000074E0(v0 + 16);
  sub_1000074E0(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007064A4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002812C;

  return sub_100705F70();
}

uint64_t sub_100706534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[14] = a1;
  sub_1001F1160(&qword_100ADA978);
  v4[17] = swift_task_alloc();
  sub_100798374();
  v4[18] = swift_task_alloc();
  v5 = sub_10079B634();
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();
  v6 = sub_10079B654();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  sub_1007A26F4();
  v4[25] = sub_1007A26E4();
  v8 = sub_1007A2694();
  v4[26] = v8;
  v4[27] = v7;

  return _swift_task_switch(sub_1007066EC, v8, v7);
}

uint64_t sub_1007066EC()
{
  v1 = *(v0 + 120);
  if (v1)
  {
    sub_10000E3E8(*(v0 + 112), *(*(v0 + 112) + 24));
    v2 = v1;
    sub_100797554();
    if (*(v0 + 80))
    {
      v4 = *(v0 + 160);
      v3 = *(v0 + 168);
      v5 = *(v0 + 152);
      sub_1000077C0((v0 + 56), v0 + 16);
      (*(v4 + 104))(v3, enum case for ActionOrigin.Kind.lockup(_:), v5);
      sub_10079B644();
      v6 = swift_task_alloc();
      *(v0 + 224) = v6;
      *v6 = v0;
      v6[1] = sub_100706A3C;

      return BaseObjectGraph.withSyncDependenciesForSwiftUI.getter();
    }

    sub_100007840(v0 + 56, &qword_100AEF240);
    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v11 = sub_10079ACE4();
    sub_100008B98(v11, qword_100AE6DD0);
    v8 = sub_10079ACC4();
    v12 = sub_1007A29C4();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v8, v12, "Failed to convert ContextAssetInfo to BookFoundation.AssetInfo", v13, 2u);
    }
  }

  else
  {

    if (qword_100AD1760 != -1)
    {
      swift_once();
    }

    v7 = sub_10079ACE4();
    sub_100008B98(v7, qword_100AE6DD0);
    v8 = sub_10079ACC4();
    v9 = sub_1007A29C4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Can't present Edit Finished Date sheet when tracker is nil", v10, 2u);
    }
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100706A3C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_100706DC8;
  }

  else
  {
    v4[30] = a1;
    v5 = v4[26];
    v6 = v4[27];
    v7 = sub_100706B64;
  }

  return _swift_task_switch(v7, v5, v6);
}

uint64_t sub_100706B64()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[17];
  v5 = v0[15];

  v6 = v5;
  sub_100798364();
  (*(v2 + 16))(v4, v1, v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v7 = swift_task_alloc();
  *(v7 + 16) = v0 + 2;
  objc_allocWithZone(sub_100797934());
  v8 = sub_1001F1160(&qword_100AF4070);
  v9 = sub_1007978B4();
  v10 = sub_1004C6A6C();
  v0[12] = v9;
  v0[13] = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LOBYTE(v17) = 0;
  v11 = sub_100797924();

  Strong = swift_unknownObjectWeakLoadStrong();
  v13 = v0[15];
  if (Strong)
  {
    v14 = Strong;
    [Strong presentViewController:v11 animated:1 completion:{0, v4, v17, sub_100706FC0, v7, v8, OpaqueTypeConformance2}];
  }

  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_1000074E0((v0 + 2));

  v15 = v0[1];

  return v15();
}

uint64_t sub_100706DC8()
{

  if (qword_100AD1760 != -1)
  {
    swift_once();
  }

  v1 = sub_10079ACE4();
  sub_100008B98(v1, qword_100AE6DD0);
  swift_errorRetain();
  v2 = sub_10079ACC4();
  v3 = sub_1007A29B4();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[15];
  if (v4)
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_1007967C4();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create Edit Finished Date: %@", v6, 0xCu);
    sub_100007840(v7, &unk_100AD9480);
  }

  else
  {
  }

  (*(v0[23] + 8))(v0[24], v0[22]);
  sub_1000074E0((v0 + 2));

  v9 = v0[1];

  return v9();
}

unint64_t sub_100706FCC()
{
  result = qword_100AF4078;
  if (!qword_100AF4078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4078);
  }

  return result;
}

unint64_t sub_100707024()
{
  result = qword_100AF4080;
  if (!qword_100AF4080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4080);
  }

  return result;
}

uint64_t sub_1007070B0()
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
  sub_100009A38(v3, qword_100B23A30);
  v21 = sub_100008B98(v3, qword_100B23A30);
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

uint64_t sub_100707454@<X0>(uint64_t a1@<X8>)
{
  if (qword_100AD1B50 != -1)
  {
    swift_once();
  }

  v2 = sub_100796814();
  v3 = sub_100008B98(v2, qword_100B23A30);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1007074FC()
{
  v0 = sub_1001F1160(&unk_100AF40A0);
  __chkstk_darwin(v0 - 8);
  sub_1007961E4();
  return sub_1007961A4();
}

uint64_t sub_1007075D0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 56) = a1;
  *(v2 + 64) = v3;
  return _swift_task_switch(sub_1007075F4, 0, 0);
}

uint64_t sub_1007075F4()
{
  sub_100795A94();
  v1 = *(v0 + 24);
  *(v0 + 72) = *(v0 + 16);
  *(v0 + 80) = v1;
  v5 = *(v0 + 32);
  *(v0 + 88) = v5;
  v2 = *(v0 + 48);
  *(v0 + 104) = v2;
  v3 = swift_task_alloc();
  *(v0 + 112) = v3;
  *v3 = v0;
  v3[1] = sub_1007076D0;

  return sub_1004F91FC(v1, v5, v2);
}

uint64_t sub_1007076D0()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_100707884;
  }

  else
  {
    v4 = *(v2 + 88);

    swift_unknownObjectRelease();

    v3 = sub_100707820;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100707820()
{
  sub_100795D24();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100707884()
{
  v1 = *(v0 + 88);

  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_100707918()
{
  result = qword_100AF4088;
  if (!qword_100AF4088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF4088);
  }

  return result;
}

uint64_t sub_10070796C(uint64_t a1)
{
  v2 = sub_1006F6CD0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1007079BC()
{
  v0 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v0 - 8);
  v64 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v68 = &v60 - v3;
  __chkstk_darwin(v4);
  v63 = &v60 - v5;
  __chkstk_darwin(v6);
  v66 = &v60 - v7;
  v8 = sub_10079FD44();
  v70 = *(v8 - 8);
  v71 = v8;
  __chkstk_darwin(v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v69 = &v60 - v11;
  __chkstk_darwin(v12);
  v61 = &v60 - v13;
  __chkstk_darwin(v14);
  v67 = &v60 - v15;
  v16 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v16 - 8);
  v18 = &v60 - v17;
  v19 = sub_1007A0F74();
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v60 - v24;
  __chkstk_darwin(v26);
  v28 = &v60 - v27;
  type metadata accessor for CurrentLocationController(0);
  sub_100716E80(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
  sub_1007A09C4();
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v29 = &unk_100AEB380;
    v30 = v18;
  }

  else
  {
    v31 = *(v20 + 32);
    v65 = v28;
    v31(v28, v18, v19);
    v32 = sub_1007A03E4();
    v33 = (v20 + 8);
    v34 = v70;
    v35 = (v70 + 48);
    if (v32)
    {
      sub_100708160(v22);
      v36 = v68;
      sub_1007A0F14();
      v37 = *v33;
      (*v33)(v22, v19);
      v38 = *v35;
      v39 = v71;
      if ((*v35)(v36, 1, v71) != 1)
      {
        v40 = v34;
        v41 = *(v34 + 32);
        (v41)(v69, v36, v39);
        v36 = v64;
        sub_1007A0F04();
        v42 = v71;
        if (v38(v36, 1, v71) != 1)
        {
          v53 = v62;
          v41();
          sub_100716E80(&unk_100AF4240, &type metadata accessor for PageLocation);
          v54 = v53;
          v55 = v69;
          v51 = sub_1007A20D4();
          v56 = *(v40 + 8);
          v56(v54, v42);
          v56(v55, v42);
          v37(v65, v19);
          return v51 & 1;
        }

        (*(v40 + 8))(v69, v42);
      }

      v37(v65, v19);
      v29 = &qword_100AE6A10;
      v30 = v36;
    }

    else
    {
      sub_100708160(v25);
      v43 = v66;
      sub_1007A0F04();
      v44 = *v33;
      (*v33)(v25, v19);
      v45 = *v35;
      v46 = v71;
      if ((*v35)(v43, 1, v71) == 1)
      {
        v44(v65, v19);
        v29 = &qword_100AE6A10;
        v30 = v43;
      }

      else
      {
        v47 = v34;
        v69 = *(v34 + 32);
        (v69)(v67, v43, v46);
        v48 = v63;
        v49 = v65;
        sub_1007A0F14();
        v50 = v71;
        if (v45(v48, 1, v71) != 1)
        {
          v57 = v61;
          (v69)(v61, v48, v50);
          v58 = v67;
          v51 = sub_10079FD24();
          v59 = *(v47 + 8);
          v59(v57, v50);
          v59(v58, v50);
          v44(v65, v19);
          return v51 & 1;
        }

        (*(v47 + 8))(v67, v50);
        v44(v49, v19);
        v29 = &qword_100AE6A10;
        v30 = v48;
      }
    }
  }

  sub_100007840(v30, v29);
  v51 = 0;
  return v51 & 1;
}

uint64_t sub_1007080DC()
{
  v0 = sub_10079ACE4();
  sub_100009A38(v0, qword_100AF40B0);
  sub_100008B98(v0, qword_100AF40B0);
  sub_10000A7C4(0, &qword_100AD20A0);
  return sub_1007A33F4();
}

uint64_t sub_100708160@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1007A0F74();
  v49 = *(v1 - 8);
  __chkstk_darwin(v1);
  v47 = &v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v48 = &v42 - v4;
  v5 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v5 - 8);
  v7 = &v42 - v6;
  v8 = sub_1007A1C14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10079FD44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v46 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v42 - v16;
  sub_10079B904();
  sub_1007A1B64();
  (*(v9 + 8))(v11, v8);
  v18 = v1;
  v19 = v49;
  swift_getObjectType();
  sub_10079F9D4();
  sub_10079F3D4();

  if ((*(v19 + 48))(v7, 1, v18) == 1)
  {
    sub_100007840(v7, &unk_100AEB380);
    sub_10079F9D4();
    v20 = v48;
    sub_10079F3A4();

    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v21 = sub_10079ACE4();
    sub_100008B98(v21, qword_100AF40B0);
    v22 = v13;
    v23 = v46;
    (*(v13 + 16))(v46, v17, v12);
    v24 = v47;
    (*(v19 + 16))(v47, v20, v18);
    v25 = sub_10079ACC4();
    v26 = sub_1007A29B4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v51 = v45;
      *v27 = 136315394;
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation);
      v44 = v26;
      v28 = sub_1007A3A74();
      v29 = v23;
      v30 = v22;
      v32 = v31;
      v43 = v25;
      v33 = *(v30 + 8);
      v33(v29, v12);
      v34 = sub_1000070F4(v28, v32, &v51);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v35 = sub_1007A3A74();
      v37 = v36;
      (*(v19 + 8))(v24, v18);
      v38 = sub_1000070F4(v35, v37, &v51);

      *(v27 + 14) = v38;
      v39 = v43;
      swift_arrayDestroy();

      v33(v17, v12);
      v7 = v48;
    }

    else
    {

      (*(v19 + 8))(v24, v18);
      v40 = *(v22 + 8);
      v40(v23, v12);
      v40(v17, v12);
      v7 = v20;
    }
  }

  else
  {
    (*(v13 + 8))(v17, v12);
  }

  return (*(v19 + 32))(v50, v7, v18);
}

uint64_t sub_1007087B8()
{
  v1 = sub_1007A0044();
  v2 = *(v1 - 8);
  v100 = v1;
  v101 = v2;
  __chkstk_darwin(v1);
  v97 = &v92 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v96 = &v92 - v5;
  __chkstk_darwin(v6);
  v98 = &v92 - v7;
  __chkstk_darwin(v8);
  v99 = &v92 - v9;
  v10 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v10 - 8);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v92 - v13;
  v15 = sub_10079FD44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v104 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v105 = &v92 - v19;
  v20 = sub_1007A0F74();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v106 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v102 = &v92 - v24;
  __chkstk_darwin(v25);
  v27 = &v92 - v26;
  sub_100708160(&v92 - v26);
  sub_1007A0F14();
  v28 = *(v16 + 48);
  if (v28(v14, 1, v15) == 1)
  {
    goto LABEL_4;
  }

  v94 = v21;
  v29 = v20;
  v95 = v0;
  v30 = *(v16 + 32);
  v31 = v105;
  v30(v105, v14, v15);
  v14 = v103;
  v107 = v27;
  sub_1007A0F04();
  if (v28(v14, 1, v15) == 1)
  {
    (*(v16 + 8))(v31, v15);
    v20 = v29;
    v21 = v94;
    v27 = v107;
LABEL_4:
    sub_100007840(v14, &qword_100AE6A10);
    v32 = v106;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v33 = sub_10079ACE4();
    sub_100008B98(v33, qword_100AF40B0);
    (*(v21 + 16))(v32, v27, v20);
    v34 = sub_10079ACC4();
    v35 = sub_1007A29B4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = v20;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v108 = v38;
      *v37 = 136446210;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v39 = sub_1007A3A74();
      v107 = v27;
      v41 = v40;
      v42 = *(v21 + 8);
      v42(v32, v36);
      v43 = sub_1000070F4(v39, v41, &v108);

      *(v37 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v34, v35, "Failed to update visible CFI range: unable to get first/last location from spread %{public}s", v37, 0xCu);
      sub_1000074E0(v38);

      v42(v107, v36);
    }

    else
    {

      v44 = *(v21 + 8);
      v44(v32, v20);
      v44(v27, v20);
    }

    return sub_100714ED8();
  }

  v93 = v16;
  v106 = v15;
  v30(v104, v14, v15);
  v109 = &_swiftEmptySetSingleton;
  v46 = sub_10079FD14();
  v47 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiUpdatesByOrdinal;
  v48 = v95;
  swift_beginAccess();
  v49 = *(v48 + v47);
  v50 = v29;
  v51 = v94;
  v52 = v107;
  if (*(v49 + 16))
  {
    v53 = sub_1002F9CDC(v46);
    if (v54)
    {
      v55 = v100;
      v56 = *(v101 + 72);
      v57 = *(v49 + 56) + v56 * v53;
      v58 = v99;
      v103 = *(v101 + 16);
      (v103)(v99, v57, v100);
      v59 = sub_10079FD14();
      v60 = *(v48 + v47);
      if (!*(v60 + 16))
      {
        goto LABEL_17;
      }

      v61 = sub_1002F9CDC(v59);
      if ((v62 & 1) == 0)
      {
        goto LABEL_17;
      }

      v63 = *(v60 + 56) + v61 * v56;
      v64 = v103;
      (v103)(v98, v63, v55);
      v65 = v97;
      v64(v97, v58, v55);
      v66 = v96;
      sub_1006E6500(v96, v65);
      v52 = (v101 + 8);
      v102 = *(v101 + 8);
      (v102)(v66, v55);
      v64(v65, v98, v55);
      sub_1006E6500(v66, v65);
      v67 = v66;
      v58 = v102;
      (v102)(v67, v55);
      v68 = v109;
      v69 = v109[2];
      if (v69)
      {
        v55 = sub_1005D6618(v109[2], 0);
        sub_1005D6978(&v108, &v55[(*(v101 + 80) + 32) & ~*(v101 + 80)], v69, v68);
        v71 = v70;
        sub_10004DC54();
        if (v71 != v69)
        {
          __break(1u);
LABEL_17:
          (*(v101 + 8))(v58, v55);
          v31 = v105;
          goto LABEL_18;
        }
      }

      else
      {

        v55 = _swiftEmptyArrayStorage;
      }

      sub_10079B904();
      v88 = sub_1004A1028(v108, v55);

      if (v88)
      {
      }

      else
      {
        v108 = v55;
        sub_10079B914();
      }

      v89 = v100;
      (v58)(v98, v100);
      (v58)(v99, v89);
      v90 = *(v93 + 8);
      v91 = v106;
      v90(v104, v106);
      v90(v105, v91);
      (*(v51 + 8))(v107, v50);
      return sub_100714ED8();
    }
  }

LABEL_18:
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v72 = sub_10079ACE4();
  sub_100008B98(v72, qword_100AF40B0);
  v73 = v102;
  (*(v51 + 16))(v102, v52, v50);
  v74 = sub_10079ACC4();
  v75 = sub_1007A29B4();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    v108 = v77;
    *v76 = 136446210;
    sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
    v78 = sub_1007A3A74();
    v80 = v79;
    v81 = *(v51 + 8);
    v81(v73, v50);
    v82 = sub_1000070F4(v78, v80, &v108);

    *(v76 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v74, v75, "Failed to get CFI Ranges for start/end documents %{public}s", v76, 0xCu);
    sub_1000074E0(v77);

    v83 = *(v93 + 8);
    v84 = v106;
    v83(v104, v106);
    v83(v105, v84);
    v81(v107, v50);
  }

  else
  {

    v85 = *(v51 + 8);
    v85(v73, v50);
    v86 = *(v93 + 8);
    v87 = v106;
    v86(v104, v106);
    v86(v31, v87);
    v85(v107, v50);
  }

  return sub_100714ED8();
}

uint64_t sub_1007092D8(uint64_t a1)
{
  v3 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v3);
  v5 = v8 - v4;
  sub_1007A0044();
  sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
  v8[0] = sub_1007A3A74();
  v8[1] = v6;
  v9._countAndFlagsBits = 2108704;
  v9._object = 0xE300000000000000;
  sub_1007A23D4(v9);
  sub_1000077D8(v1 + *(a1 + 20), v5, &unk_100AF1140);
  v10._countAndFlagsBits = sub_1007A22E4();
  sub_1007A23D4(v10);

  return v8[0];
}

uint64_t sub_100709414()
{
  v1 = sub_1001F1160(&qword_100AF42D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v15 - v2;
  v4 = sub_1001F1160(&unk_100AF2970);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  v16 = sub_1007A0164();
  v10 = *(v16 - 8);
  __chkstk_darwin(v16);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider);
  v13 = (v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController);
  sub_10000E3E8((v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController), *(v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController + 24));
  sub_1007A1924();
  sub_100716EC8(v3, v9);
  sub_100007840(v3, &qword_100AF42D0);
  sub_10000E3E8(v13, v13[3]);
  sub_1007A1934();
  sub_100716EC8(v3, v6);
  sub_100007840(v3, &qword_100AF42D0);
  sub_1007A0134();
  sub_100237D1C(v12);
  return (*(v10 + 8))(v12, v16);
}

void sub_100709678(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v27 = a2;
  v2 = sub_1007A1C14();
  v24 = *(v2 - 8);
  v25 = v2;
  __chkstk_darwin(v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1007A0BD4();
  v5 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10079FE84();
  v22 = *(v8 - 8);
  v23 = v8;
  __chkstk_darwin(v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001F1160(&qword_100AF43B0);
  __chkstk_darwin(v11 - 8);
  v13 = &v20 - v12;
  v14 = sub_1007A0BF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000077D8(v26, v13, &qword_100AF43B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_100007840(v13, &qword_100AF43B0);
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_10000E3E8(&Strong[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController], *&Strong[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController + 24]);
    sub_1007A18E4();
    sub_100709414();
  }

  else
  {
    (*(v15 + 32))(v17, v13, v14);
    v19 = swift_unknownObjectUnownedLoadStrong();
    sub_1007A0BE4();
    sub_1007A0BB4();
    sub_1007A0BC4();
    (*(v5 + 8))(v7, v21);
    sub_10000E3E8(&v19[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController], *&v19[OBJC_IVAR____TtC5Books25CurrentLocationController_historyController + 24]);
    sub_1007A1904();
    swift_getObjectType();
    sub_10079FA24();
    sub_100709414();

    (*(v24 + 8))(v4, v25);
    (*(v22 + 8))(v10, v23);
    (*(v15 + 8))(v17, v14);
  }
}

void sub_100709A9C(_BYTE *a1)
{
  if (*a1 == 1)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
    sub_100709414();
  }
}

id sub_100709B28()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CurrentLocationController(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100709CA0()
{
  v0 = sub_1007A0F74();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_10079F9D4();
  sub_100708160(v3);
  v4 = sub_10079F464();

  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_100709DC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v80 = a3;
  v6 = sub_1007A0404();
  v78 = *(v6 - 8);
  v79 = v6;
  __chkstk_darwin(v6);
  v77 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1007A1C14();
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v72 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v10 - 8);
  v12 = &v72 - v11;
  v13 = sub_1007A0F74();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v76 = &v72 - v18;
  __chkstk_darwin(v19);
  v21 = &v72 - v20;
  __chkstk_darwin(v22);
  v24 = &v72 - v23;
  v75 = v3;
  swift_getObjectType();
  sub_10079F9D4();
  sub_10079F3E4();

  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100007840(v12, &unk_100AEB380);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v25 = sub_10079ACE4();
    sub_100008B98(v25, qword_100AF40B0);
    (*(v14 + 16))(v16, a2, v13);
    v27 = v77;
    v26 = v78;
    v28 = v79;
    (v78[2].isa)(v77, a1, v79);
    v29 = sub_10079ACC4();
    v30 = sub_1007A29B4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v81 = v76;
      *v31 = 136315650;
      *(v31 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008E8CA0, &v81);
      *(v31 + 12) = 2080;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      LODWORD(v75) = v30;
      v32 = sub_1007A3A74();
      v34 = v33;
      (*(v14 + 8))(v16, v13);
      v35 = sub_1000070F4(v32, v34, &v81);

      *(v31 + 14) = v35;
      *(v31 + 22) = 2080;
      sub_100716E80(&qword_100AE2858, &type metadata accessor for LocationMovement);
      v36 = sub_1007A3A74();
      v38 = v37;
      (v26[1].isa)(v27, v28);
      v39 = sub_1000070F4(v36, v38, &v81);

      *(v31 + 24) = v39;
      _os_log_impl(&_mh_execute_header, v29, v75, "%s end spread from start %s by movement %s!", v31, 0x20u);
      swift_arrayDestroy();
    }

    else
    {

      (v26[1].isa)(v27, v28);
      (*(v14 + 8))(v16, v13);
    }

LABEL_14:
    v69 = 1;
    v68 = v80;
    return (*(v14 + 56))(v68, v69, 1, v13);
  }

  v40 = *(v14 + 32);
  v40(v24, v12, v13);
  sub_100716E80(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
  if (sub_1007A2124())
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v41 = sub_10079ACE4();
    sub_100008B98(v41, qword_100AF40B0);
    v42 = *(v14 + 16);
    v42(v21, a2, v13);
    v43 = v76;
    v42(v76, v24, v13);
    v44 = v75;
    v45 = sub_10079ACC4();
    v46 = sub_1007A29D4();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v78 = v45;
      v48 = v47;
      v79 = swift_slowAlloc();
      v81 = v79;
      *v48 = 136315906;
      *(v48 + 4) = sub_1000070F4(0xD000000000000016, 0x80000001008E8CA0, &v81);
      *(v48 + 12) = 2080;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      LODWORD(v75) = v46;
      v49 = sub_1007A3A74();
      v77 = v24;
      v51 = v50;
      v52 = *(v14 + 8);
      v52(v21, v13);
      v53 = sub_1000070F4(v49, v51, &v81);

      *(v48 + 14) = v53;
      *(v48 + 22) = 2080;
      v54 = v76;
      v55 = sub_1007A3A74();
      v57 = v56;
      v52(v54, v13);
      v58 = v52;
      v59 = sub_1000070F4(v55, v57, &v81);

      *(v48 + 24) = v59;
      *(v48 + 32) = 2080;
      v60 = v72;
      sub_10079B904();
      sub_100716E80(&qword_100AD65A0, &type metadata accessor for Location);
      v61 = v74;
      v62 = sub_1007A3A74();
      v64 = v63;
      (*(v73 + 8))(v60, v61);
      v65 = sub_1000070F4(v62, v64, &v81);

      *(v48 + 34) = v65;
      v66 = v78;
      _os_log_impl(&_mh_execute_header, v78, v75, "%s startSpread:%s endSpread:%s currentLocation: %s", v48, 0x2Au);
      swift_arrayDestroy();

      v58(v77, v13);
    }

    else
    {

      v70 = *(v14 + 8);
      v70(v43, v13);
      v70(v21, v13);
      v70(v24, v13);
    }

    goto LABEL_14;
  }

  v67 = v80;
  v40(v80, v24, v13);
  v68 = v67;
  v69 = 0;
  return (*(v14 + 56))(v68, v69, 1, v13);
}

void sub_10070A7BC()
{
  v1 = v0;
  v2 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_1007A0F74();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v24 - v10;
  type metadata accessor for CurrentLocationController(0);
  sub_100716E80(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
  sub_1007A09C4();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_100007840(v4, &unk_100AEB380);
    sub_1007A03E4();
    if (sub_1007A03D4() & 1) != 0 && (sub_1007135F0())
    {
      v12 = *(v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider);
      v13 = [objc_opt_self() defaultCenter];
      if (qword_100AD12D0 != -1)
      {
        swift_once();
      }

      [v13 postNotificationName:qword_100AD6288 object:v12];
    }
  }

  else
  {
    (*(v6 + 32))(v11, v4, v5);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v14 = sub_10079ACE4();
    sub_100008B98(v14, qword_100AF40B0);
    (*(v6 + 16))(v8, v11, v5);
    v15 = sub_10079ACC4();
    v16 = sub_1007A29D4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v24 = v17;
      v25 = swift_slowAlloc();
      v27 = v25;
      *v17 = 136315138;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      v18 = sub_1007A3A74();
      v26 = v1;
      v20 = v19;
      v21 = *(v6 + 8);
      v21(v8, v5);
      v22 = sub_1000070F4(v18, v20, &v27);

      v23 = v24;
      *(v24 + 1) = v22;
      _os_log_impl(&_mh_execute_header, v15, v16, "Moving to spread: %s", v23, 0xCu);
      sub_1000074E0(v25);
    }

    else
    {

      v21 = *(v6 + 8);
      v21(v8, v5);
    }

    sub_10070D730(v11);
    v21(v11, v5);
  }
}

void sub_10070AC38()
{
  if (sub_1007135F0())
  {
    v1 = *(v0 + OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider);
    v2 = [objc_opt_self() defaultCenter];
    v3 = v2;
    if (qword_100AD12D0 != -1)
    {
      swift_once();
      v2 = v3;
    }

    [v2 postNotificationName:qword_100AD6288 object:v1];
  }
}

uint64_t sub_10070AD08(char *a1)
{
  v68 = a1;
  v2 = sub_10079FD94();
  v64 = *(v2 - 8);
  v65 = v2;
  __chkstk_darwin(v2);
  v63 = &v54[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v4 - 8);
  v62 = &v54[-v5];
  v6 = sub_1001F1160(&unk_100AF4260);
  __chkstk_darwin(v6 - 8);
  v61 = &v54[-v7];
  v8 = sub_1001F1160(&unk_100AD65C0);
  __chkstk_darwin(v8 - 8);
  v60 = &v54[-v9];
  v10 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v10 - 8);
  v58 = &v54[-v11];
  v12 = sub_10079FD44();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v57 = &v54[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v59 = &v54[-v16];
  __chkstk_darwin(v17);
  v19 = &v54[-v18];
  v20 = sub_1007A1C14();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v54[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v69 = v1;
  sub_10079B904();
  v24 = sub_1007A1B44();
  v66 = *(v21 + 8);
  v67 = v20;
  v25 = v20;
  v26 = v12;
  v27 = v13;
  v66(v23, v25);
  if (v24)
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v28 = sub_10079ACE4();
    sub_100008B98(v28, qword_100AF40B0);
    (*(v13 + 16))(v19, v68, v26);
    v29 = v69;
    v30 = sub_10079ACC4();
    v31 = sub_1007A2994();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v70 = v56;
      *v32 = 136315394;
      v55 = v31;
      sub_10079B904();
      sub_100716E80(&qword_100AD65A0, &type metadata accessor for Location);
      v33 = v67;
      v34 = sub_1007A3A74();
      v36 = v35;
      v66(v23, v33);
      v37 = sub_1000070F4(v34, v36, &v70);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation);
      v38 = sub_1007A3A74();
      v40 = v39;
      (*(v27 + 8))(v19, v26);
      v41 = sub_1000070F4(v38, v40, &v70);

      *(v32 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v30, v55, "We have a requested location already -- Overriding %s request move to %s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v27 + 8))(v19, v26);
    }
  }

  swift_getObjectType();
  sub_10079F9D4();
  v42 = v68;
  sub_10079FD14();
  v43 = sub_10079F434();

  v44 = v59;
  if (!v43)
  {
    goto LABEL_11;
  }

  if ((sub_1007A1254() & 1) == 0)
  {

LABEL_11:
    v45 = *(v27 + 16);
    v45(v44, v42, v26);
    v45(v57, v44, v26);
    goto LABEL_12;
  }

  sub_100715EB8(v42, v44);

  (*(v27 + 16))(v57, v44, v26);
LABEL_12:
  v46 = sub_1001F1160(&unk_100AF1150);
  (*(*(v46 - 8) + 56))(v58, 1, 1, v46);
  v47 = sub_1007A1BC4();
  (*(*(v47 - 8) + 56))(v60, 1, 1, v47);
  v48 = sub_1007A1B84();
  (*(*(v48 - 8) + 56))(v61, 1, 1, v48);
  v49 = sub_1001F1160(&qword_100AD6190);
  (*(*(v49 - 8) + 56))(v62, 1, 1, v49);
  sub_1007A1B54();
  v51 = v63;
  v50 = v64;
  v52 = v65;
  (*(v64 + 104))(v63, enum case for UpdateReason.userInteraction(_:), v65);
  sub_100713AC4(v23, v51);
  (*(v50 + 8))(v51, v52);
  v66(v23, v67);
  return (*(v27 + 8))(v44, v26);
}

void sub_10070B5B4(uint64_t a1)
{
  v3 = sub_10079FD44();
  v25 = *(v3 - 8);
  v26 = v3;
  __chkstk_darwin(v3);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_1007A1C14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if ((sub_10079F9E4() & 1) == 0)
  {
    v23 = v1;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v12 = sub_10079ACE4();
    sub_100008B98(v12, qword_100AF40B0);
    v13 = sub_10079ACC4();
    v14 = sub_1007A29B4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v22 = a1;
      *v15 = 0;
      a1 = v22;
    }
  }

  sub_10079F924();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100007840(v7, &unk_100AD5A90);
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v16 = sub_10079ACE4();
    sub_100008B98(v16, qword_100AF40B0);
    v17 = sub_10079ACC4();
    v18 = sub_1007A29B4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 134217984;
      *(v19 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v17, v18, "Failed to get location for Book PageNumber %ld", v19, 0xCu);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    v20 = v24;
    sub_1007A1B64();
    sub_10070AD08(v20);
    (*(v25 + 8))(v20, v26);
    (*(v9 + 8))(v11, v8);
  }
}

void sub_10070B9CC(uint64_t a1, unint64_t a2)
{
  v110 = a2;
  v104 = sub_10079FD94();
  v103 = *(v104 - 1);
  __chkstk_darwin(v104);
  v102 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v5 - 8);
  v101 = &v95 - v6;
  v7 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v7 - 8);
  v105 = &v95 - v8;
  v9 = sub_10079FD44();
  v107 = *(v9 - 8);
  v108 = v9;
  __chkstk_darwin(v9);
  v106 = &v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1007A0404();
  v100 = *(v98 - 8);
  __chkstk_darwin(v98);
  v99 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1007A1C14();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v18 = &v95 - v17;
  v116 = v2;
  ObjectType = swift_getObjectType();
  v20 = a1;
  v21 = v109;
  v22 = v110;
  sub_10079FA34();
  v109 = v21;
  if (v21)
  {
    v107 = v15;
    v97 = v13;
    v108 = v12;
    v115[0] = v20;
    v115[1] = v22;
    *&v113 = 35;
    *(&v113 + 1) = 0xE100000000000000;
    sub_100206ECC();
    v23 = sub_1007A3484();
    v24 = v23[2];
    if ((v24 - 3) < 0xFFFFFFFFFFFFFFFELL)
    {

      if (qword_100AD1B58 != -1)
      {
LABEL_52:
        swift_once();
      }

      v25 = sub_10079ACE4();
      sub_100008B98(v25, qword_100AF40B0);

      v26 = sub_10079ACC4();
      v27 = sub_1007A29B4();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v115[0] = v29;
        *v28 = 136315138;
        *(v28 + 4) = sub_1000070F4(v20, v22, v115);
        _os_log_impl(&_mh_execute_header, v26, v27, "Invalid URL: '%s'", v28, 0xCu);
        sub_1000074E0(v29);
      }

      v30 = 0;
      goto LABEL_33;
    }

    v106 = v23;
    v46 = v23[4];
    v48 = v23[5];
    v47 = v23 + 4;
    v49 = qword_100AD1B58;

    if (v49 != -1)
    {
      swift_once();
    }

    v50 = sub_10079ACE4();
    v51 = sub_100008B98(v50, qword_100AF40B0);

    v100 = v51;
    v52 = sub_10079ACC4();
    v53 = sub_1007A2994();

    v54 = os_log_type_enabled(v52, v53);
    v99 = v24;
    v96 = v20;
    v98 = v47;
    if (v54)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v115[0] = v56;
      *v55 = 136315138;
      *(v55 + 4) = sub_1000070F4(v20, v22, v115);
      _os_log_impl(&_mh_execute_header, v52, v53, "Failed to get pageNumber for %s. Using fallback navigation", v55, 0xCu);
      sub_1000074E0(v56);
    }

    sub_10000E3E8((v116 + OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity), *(v116 + OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity + 24));
    v57 = sub_10079ECD4();
    v58 = v57;
    v20 = *(v57 + 16);
    if (!v20)
    {
LABEL_30:

      v63 = v110;

      v64 = sub_10079ACC4();
      v65 = sub_1007A29B4();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v115[0] = v67;
        *v66 = 136315138;
        *(v66 + 4) = sub_1000070F4(v96, v63, v115);
        _os_log_impl(&_mh_execute_header, v64, v65, "Failed to find document for: '%s'", v66, 0xCu);
        sub_1000074E0(v67);
      }

      v30 = 1;
LABEL_33:
      sub_100717D00();
      swift_allocError();
      *v68 = v30;
      swift_willThrow();

      return;
    }

    v22 = 0;
    v59 = v57 + 32;
    while (1)
    {
      if (v22 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      sub_100009864(v59, &v111);
      sub_10000E3E8(&v111, v112);
      if (v46 == sub_1007A0674() && v48 == v60)
      {
        break;
      }

      v62 = sub_1007A3AB4();

      if (v62)
      {
        goto LABEL_35;
      }

      ++v22;
      sub_1000074E0(&v111);
      v59 += 40;
      if (v20 == v22)
      {
        goto LABEL_30;
      }
    }

LABEL_35:

    sub_1001FF7E0(&v111, &v113);
    sub_1001FF7E0(&v113, v115);
    sub_100009864(v115, &v113);

    v69 = v106;

    v70 = sub_10079ACC4();
    v71 = sub_1007A29A4();

    v72 = os_log_type_enabled(v70, v71);
    v73 = v99;
    if (v72)
    {
      LODWORD(v100) = v71;
      v110 = v98 + 16 * v99;
      v74 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *&v111 = v98;
      *v74 = 134218498;
      sub_10000E3E8(&v113, v114);
      v75 = sub_1007A0684();
      sub_1000074E0(&v113);
      *(v74 + 4) = v75;
      *(v74 + 12) = 2080;
      v76 = sub_1000070F4(v46, v48, &v111);

      *(v74 + 14) = v76;
      *(v74 + 22) = 2080;
      if (v73 > *(v69 + 2))
      {
        goto LABEL_55;
      }

      v78 = *(v110 - 16);
      v77 = *(v110 - 8);

      v79 = sub_1000070F4(v78, v77, &v111);

      *(v74 + 24) = v79;
      _os_log_impl(&_mh_execute_header, v70, v100, "Found documentOrdinal %ld matching url: %s -- requesting navigation to anchor: %s", v74, 0x20u);
      swift_arrayDestroy();
    }

    else
    {
      sub_1000074E0(&v113);
    }

    v81 = v107;
    v80 = v108;
    v82 = v97;
    v83 = v105;
    sub_10000E3E8(v115, v115[3]);
    sub_1007A0684();
    v84 = sub_1001F1160(&unk_100AF1150);
    (*(*(v84 - 8) + 56))(v83, 1, 1, v84);
    if (v99 <= *(v106 + 2))
    {

      v85 = sub_1001F1160(&qword_100AD6190);
      (*(*(v85 - 8) + 56))(v101, 1, 1, v85);
      sub_1007A1BD4();
      v86 = v103;
      v87 = v102;
      v88 = v104;
      (v103)[13](v102, enum case for UpdateReason.userInteraction(_:), v104);
      sub_100713AC4(v81, v87);

      (v86[1])(v87, v88);
      (*(v82 + 8))(v81, v80);
      sub_1000074E0(v115);
      return;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v110 = ObjectType;
  sub_10079B904();
  v105 = sub_100716504();
  v32 = v31;
  v35 = *(v13 + 8);
  v33 = v13 + 8;
  v34 = v35;
  v35(v15, v12);
  v36 = v12;
  v37 = v108;
  if ((v32 & 1) != 0 || (Strong = swift_unknownObjectWeakLoadStrong()) == 0)
  {
LABEL_42:
    v89 = v106;
    sub_1007A1B64();
    sub_10070AD08(v89);
    v107[1](v89, v37);
    v34(v18, v36);
    return;
  }

  v104 = v34;
  v103 = Strong;
  v97 = v33;
  sub_10079F9D4();
  sub_1007A1BE4();
  v39 = sub_10079F434();

  if (!v39)
  {

    v34 = v104;
    goto LABEL_42;
  }

  v108 = v18;
  sub_10079F984();
  swift_getObjectType();
  v40 = sub_10079F684();
  swift_unknownObjectRelease();
  v41 = v105;
  v42 = v36;
  v43 = v100;
  v44 = v99;
  v45 = v104;
  if (v105 < 0)
  {
    v41 = -v105;
    if (__OFSUB__(0, v105))
    {
      goto LABEL_57;
    }
  }

  if (v40 < 1)
  {
    goto LABEL_54;
  }

  if (v41 < 1 || v40 < v41)
  {
    if (!__OFADD__(v40, 1))
    {
      if (v41 < v40 + 1)
      {
        (v104)(v108, v42);

        return;
      }

      v90 = sub_1007A1264();
      v91 = sub_1007A1B94();
      v92 = v90 + v91;
      if (!__OFADD__(v90, v91))
      {
        if (!__OFADD__(v92, 1))
        {
          v93 = v103;
          sub_10033C80C(v92 + 1, 0);

          v45(v108, v42);

          return;
        }

        goto LABEL_59;
      }

LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      return;
    }

    goto LABEL_56;
  }

  if (v105 < 1)
  {
    sub_1007A0384();
  }

  else
  {
    sub_1007A0364();
  }

  v94 = v98;
  sub_10070A7BC();

  (*(v43 + 8))(v44, v94);
  v45(v108, v42);
}

id sub_10070C88C(void *a1)
{
  v2 = sub_10079FD44();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if ([a1 location])
  {
    v19[2] = &OBJC_PROTOCOL___BEAnchorLocationProtocol;
    v6 = swift_dynamicCastObjCProtocolConditional();
    if (v6)
    {
      v7 = [v6 anchor];
      if (v7)
      {
        v8 = v7;
        v9 = sub_1007A2254();
        v11 = v10;

        sub_10070B9CC(v9, v11);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  if ([a1 location])
  {
    v19[3] = &OBJC_PROTOCOL___BECFILocationProtocol;
    v12 = swift_dynamicCastObjCProtocolConditional();
    if (v12)
    {
      v13 = [v12 cfiString];
      if (v13)
      {
        v14 = v13;
        v15 = sub_1007A2254();
        v17 = v16;

        sub_10070CAE8(v15, v17);
        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  result = [a1 location];
  if (result)
  {
    swift_unknownObjectRelease();
    sub_1007A29E4();
    sub_10070AD08(v5);
    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

uint64_t sub_10070CAE8(uint64_t a1, uint64_t a2)
{
  v5 = sub_10079FD94();
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v8 - 8);
  v10 = &v27 - v9;
  v11 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v11 - 8);
  v13 = &v27 - v12;
  v14 = sub_1007A1C14();
  v28 = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for CurrentLocationProvider();
  sub_100716E80(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);
  if (sub_1007A05E4() == a1 && v17 == a2)
  {
  }

  else
  {
    v27 = v2;
    v19 = sub_1007A3AB4();

    if ((v19 & 1) == 0)
    {
      sub_1007A23F4();
      if (v21)
      {
        sub_10079B904();
        sub_1007A1BE4();
        v22 = v28;
        (*(v28 + 8))(v16, v14);
      }

      else
      {
        v22 = v28;
      }

      v23 = sub_1001F1160(&unk_100AF1150);
      (*(*(v23 - 8) + 56))(v13, 1, 1, v23);
      v24 = sub_1001F1160(&qword_100AD6190);
      (*(*(v24 - 8) + 56))(v10, 1, 1, v24);

      sub_1007A1BD4();
      v26 = v29;
      v25 = v30;
      (*(v29 + 104))(v7, enum case for UpdateReason.userInteraction(_:), v30);
      sub_1002370E0(v16, v7);
      (*(v26 + 8))(v7, v25);
      sub_1007087B8();
      return (*(v22 + 8))(v16, v14);
    }
  }

  return result;
}

uint64_t sub_10070CF38(uint64_t a1)
{
  v3 = sub_10079FD44();
  v52 = *(v3 - 8);
  v53 = v3;
  __chkstk_darwin(v3);
  v51 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_10079FE64();
  __chkstk_darwin(v54);
  v55 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_100796C04();
  v49 = *(v6 - 8);
  v50 = v6;
  __chkstk_darwin(v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001F1160(&qword_100AF42D0);
  __chkstk_darwin(v9 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v48 = v44 - v13;
  v14 = sub_10079FE84();
  v57 = *(v14 - 8);
  __chkstk_darwin(v14);
  v56 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v44 - v17;
  v19 = sub_1007A1C14();
  v46 = *(v19 - 8);
  v47 = v19;
  __chkstk_darwin(v19);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = v1;
  v22 = (v1 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController);
  sub_10000E3E8((v1 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController), *(v1 + OBJC_IVAR____TtC5Books25CurrentLocationController_historyController + 24));
  if (sub_1007A1944())
  {
    sub_10000E3E8(v22, v22[3]);
    if (sub_1007A18F4())
    {
      v44[1] = a1;
      type metadata accessor for CurrentLocationProvider();
      sub_100716E80(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);
      v23 = sub_1007A05E4();
      v25 = v24;
      sub_10079B904();
      v59[0] = v23;
      v59[1] = v25;
      sub_1002060B4();
      v26 = sub_1007A28A4();
      v45 = v14;
      if (v26)
      {
        sub_10079FE44();
      }

      else
      {

        sub_1007A1B94();
        sub_1007A1BE4();
        sub_10079FE34();
      }

      sub_10000E3E8(v22, v22[3]);
      sub_1007A1904();
      swift_getObjectType();
      sub_10079FA24();
      sub_10000E3E8(v22, v22[3]);
      sub_10079FE54();
      v27 = v48;
      sub_1007A1914();
      (*(v49 + 8))(v8, v50);
      sub_100007840(v27, &qword_100AF42D0);
      v14 = v45;
      (*(v57 + 8))(v18, v45);
      (*(v46 + 8))(v21, v47);
    }
  }

  sub_10000E3E8(v22, v22[3]);
  sub_1007A1914();
  v28 = v57;
  if ((*(v57 + 48))(v11, 1, v14) == 1)
  {
    return sub_100007840(v11, &qword_100AF42D0);
  }

  v30 = v56;
  (*(v28 + 32))(v56, v11, v14);
  sub_1007A10D4();
  v31 = v55;
  sub_10079FE74();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v33 = v51;
    v32 = v52;
    v34 = v31;
    v35 = v53;
    (*(v52 + 32))(v51, v34, v53);
    sub_10070AD08(v33);
    (*(v32 + 8))(v33, v35);
  }

  else
  {
    v37 = *v31;
    v36 = v31[1];
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v38 = sub_10079ACE4();
    sub_100008B98(v38, qword_100AF40B0);

    v39 = sub_10079ACC4();
    v40 = sub_1007A2994();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = v14;
      v43 = swift_slowAlloc();
      v59[0] = v43;
      *v41 = 136315138;
      *(v41 + 4) = sub_1000070F4(v37, v36, v59);
      _os_log_impl(&_mh_execute_header, v39, v40, "History attempting navigation to %s", v41, 0xCu);
      sub_1000074E0(v43);
      v14 = v42;

      v30 = v56;
    }

    type metadata accessor for CurrentLocationController(0);
    sub_100716E80(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
    v60._countAndFlagsBits = v37;
    v60._object = v36;
    sub_1007A09D4(v60);
  }

  sub_100709414();
  return (*(v28 + 8))(v30, v14);
}

void sub_10070D730(uint64_t a1)
{
  v3 = sub_10079FD94();
  v202 = *(v3 - 8);
  v203 = v3;
  __chkstk_darwin(v3);
  v201 = v180 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v5 - 8);
  v200 = v180 - v6;
  v7 = sub_1001F1160(&unk_100AF4260);
  __chkstk_darwin(v7 - 8);
  v199 = v180 - v8;
  v9 = sub_1001F1160(&unk_100AD65C0);
  __chkstk_darwin(v9 - 8);
  v197 = v180 - v10;
  v11 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v11 - 8);
  v195 = v180 - v12;
  v198 = sub_1007A1C14();
  v196 = *(v198 - 8);
  __chkstk_darwin(v198);
  v193 = v180 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v192 = v180 - v15;
  __chkstk_darwin(v16);
  v194 = v180 - v17;
  v18 = sub_10079FD44();
  v19 = *(v18 - 8);
  v215 = v18;
  v216 = v19;
  __chkstk_darwin(v18);
  v209 = v180 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v204 = v180 - v22;
  __chkstk_darwin(v23);
  v187 = v180 - v24;
  __chkstk_darwin(v25);
  v210 = v180 - v26;
  __chkstk_darwin(v27);
  v214 = v180 - v28;
  v29 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v29 - 8);
  v190 = v180 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v208 = v180 - v32;
  __chkstk_darwin(v33);
  v212 = v180 - v34;
  __chkstk_darwin(v35);
  v213 = v180 - v36;
  __chkstk_darwin(v37);
  v183 = v180 - v38;
  __chkstk_darwin(v39);
  v186 = v180 - v40;
  __chkstk_darwin(v41);
  v188 = v180 - v42;
  __chkstk_darwin(v43);
  v205 = v180 - v44;
  v45 = sub_1001F1160(&unk_100AF4270);
  v46 = *(v45 - 8);
  __chkstk_darwin(v45);
  v48 = v180 - v47;
  v49 = sub_1007A0F74();
  v50 = *(v49 - 8);
  __chkstk_darwin(v49);
  v52 = v180 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v211 = v180 - v54;
  __chkstk_darwin(v55);
  v191 = v180 - v56;
  __chkstk_darwin(v57);
  v189 = v180 - v58;
  __chkstk_darwin(v59);
  v207 = v180 - v60;
  __chkstk_darwin(v61);
  v206 = v180 - v62;
  __chkstk_darwin(v63);
  v182 = v180 - v64;
  __chkstk_darwin(v65);
  v185 = v180 - v66;
  __chkstk_darwin(v67);
  v69 = v180 - v68;
  v70 = v1;
  sub_100708160(v180 - v68);
  sub_100716E80(&qword_100AEB790, &type metadata accessor for SpreadPaginationEntity);
  v71 = sub_1007A2124();
  v217 = v50;
  v218 = v49;
  v219 = *(v50 + 8);
  v220 = v50 + 8;
  v219(v69, v49);
  p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  if (v71)
  {
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v73 = sub_10079ACE4();
    sub_100008B98(v73, qword_100AF40B0);
    v74 = v218;
    (*(v217 + 2))(v52, a1, v218);
    v75 = sub_10079ACC4();
    v76 = sub_1007A29D4();
    if (!os_log_type_enabled(v75, v76))
    {

      v219(v52, v74);
      return;
    }

    v77 = swift_slowAlloc();
    v78 = swift_slowAlloc();
    v221 = v78;
    *v77 = 136315138;
    sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
    v79 = sub_1007A3A74();
    v81 = v80;
    v219(v52, v74);
    v82 = sub_1000070F4(v79, v81, &v221);

    *(v77 + 4) = v82;
    _os_log_impl(&_mh_execute_header, v75, v76, "Already on spread %s, nothing to do", v77, 0xCu);
    sub_1000074E0(v78);

    goto LABEL_36;
  }

  v83 = *(v70 + OBJC_IVAR____TtC5Books25CurrentLocationController_paginationProvider);
  v84 = *(v70 + OBJC_IVAR____TtC5Books25CurrentLocationController_paginationProvider + 8);
  ObjectType = swift_getObjectType();
  v180[1] = v83;
  v180[0] = ObjectType;
  v180[2] = v84;
  sub_10079F9D4();
  sub_10079F414();

  swift_getOpaqueTypeConformance2();
  v86 = sub_1007A2514();
  v184 = v70;
  if (v86 == 2)
  {
    __chkstk_darwin(v86);
    v180[-2] = a1;
    v87 = sub_10058041C(sub_100717D54, &v180[-4]);
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
  }

  else
  {
    v87 = v86;
  }

  (*(v46 + 8))(v48, v45);
  v88 = v215;
  v89 = v213;
  if (!v87)
  {
    v90 = v205;
    sub_1007A0F14();
    v91 = v216;
    v92 = *(v216 + 48);
    if (v92(v90, 1, v88) == 1)
    {
      sub_100007840(v90, &qword_100AE6A10);
      v93 = v188;
      sub_1007A0F04();
      if (v92(v93, 1, v88) == 1)
      {
        sub_100007840(v93, &qword_100AE6A10);
        v94 = v185;
        sub_100708160(v185);
        v95 = v186;
        sub_1007A0F14();
        v96 = v218;
        v219(v94, v218);
        if (v92(v95, 1, v88) == 1 && (sub_100007840(v95, &qword_100AE6A10), v97 = v182, sub_100708160(v182), v95 = v183, sub_1007A0F04(), v219(v97, v96), v92(v95, 1, v88) == 1))
        {
          sub_100007840(v95, &qword_100AE6A10);
        }

        else
        {
          sub_10079FD14();
          (*(v216 + 8))(v95, v88);
        }

        goto LABEL_19;
      }

      sub_10079FD14();
      (*(v216 + 8))(v93, v88);
    }

    else
    {
      sub_10079FD14();
      (*(v91 + 8))(v90, v88);
    }

    v96 = v218;
LABEL_19:
    v98 = v206;
    sub_10079F9D4();
    sub_10079F404();

    if (p_inst_props[363] != -1)
    {
      swift_once();
    }

    v99 = sub_10079ACE4();
    sub_100008B98(v99, qword_100AF40B0);
    (*(v217 + 2))(v98, a1, v96);

    v100 = sub_10079ACC4();
    v101 = sub_1007A29B4();

    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      v221 = swift_slowAlloc();
      *v102 = 136315394;
      sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
      LODWORD(v206) = v101;
      v103 = sub_1007A3A74();
      v105 = v104;
      v219(v98, v96);
      v106 = sub_1000070F4(v103, v105, &v221);

      *(v102 + 4) = v106;
      *(v102 + 12) = 2080;
      v107 = sub_1007A25F4();
      v109 = v108;

      v110 = sub_1000070F4(v107, v109, &v221);
      v89 = v213;
      p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);

      *(v102 + 14) = v110;
      _os_log_impl(&_mh_execute_header, v100, v206, "Cannot move to spread %s because it's not part of book %s. Maybe it's from an old pagination pass?", v102, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v219(v98, v96);
    }
  }

  v111 = v212;
  sub_1007A0F14();
  v112 = v216;
  v113 = *(v216 + 48);
  v114 = v113(v111, 1, v88);
  v181 = a1;
  if (v114 == 1)
  {
    sub_1007A0F04();
    v115 = v113(v111, 1, v88);
    v116 = v214;
    v117 = v218;
    if (v115 != 1)
    {
      sub_100007840(v111, &qword_100AE6A10);
    }
  }

  else
  {
    (*(v112 + 32))(v89, v111, v88);
    (*(v112 + 56))(v89, 0, 1, v88);
    v116 = v214;
    v117 = v218;
  }

  if (v113(v89, 1, v88) == 1)
  {
    v118 = v89;
  }

  else
  {
    v213 = *(v112 + 32);
    (v213)(v116, v89, v88);
    sub_10079F9D4();
    v119 = v207;
    sub_10079F3A4();

    v120 = v208;
    sub_1007A0F14();
    v118 = v120;
    v121 = v119;
    v122 = v219;
    v219(v121, v117);
    if (v113(v120, 1, v88) != 1)
    {
      (v213)(v210, v120, v88);
      v135 = v189;
      sub_100708160(v189);
      v136 = v190;
      sub_1007A0F14();
      v122(v135, v117);
      if (v113(v136, 1, v88) == 1)
      {
        v137 = v210;
        sub_100007840(v136, &qword_100AE6A10);
        v138 = v204;
        v139 = v191;
        v140 = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
        v141 = v181;
        v142 = v216;
      }

      else
      {
        v143 = v187;
        (v213)(v187, v136, v88);
        v144 = v210;
        v145 = sub_10079FD14();
        v146 = sub_10079FD14();
        v141 = v181;
        if (v146 >= v145)
        {
          v148 = sub_10079FCF4();
          v137 = v144;
          v147 = v148 >= sub_10079FCF4();
        }

        else
        {
          v137 = v144;
          v147 = 0;
        }

        v138 = v204;
        v139 = v191;
        v140 = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
        v142 = v216;
        sub_100239064(v147);
        (*(v142 + 8))(v143, v88);
      }

      if (v140[363] != -1)
      {
        swift_once();
      }

      v149 = sub_10079ACE4();
      sub_100008B98(v149, qword_100AF40B0);
      v150 = v218;
      (*(v217 + 2))(v139, v141, v218);
      v151 = v142;
      v152 = v137;
      v213 = *(v142 + 16);
      (v213)(v138, v137, v88);
      v153 = sub_10079ACC4();
      v154 = sub_1007A2994();
      if (os_log_type_enabled(v153, v154))
      {
        v155 = swift_slowAlloc();
        v212 = swift_slowAlloc();
        v221 = v212;
        *v155 = 136315394;
        sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
        v156 = sub_1007A3A74();
        v158 = v157;
        v219(v139, v150);
        v159 = sub_1000070F4(v156, v158, &v221);
        v152 = v210;

        *(v155 + 4) = v159;
        *(v155 + 12) = 2080;
        sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation);
        v160 = v204;
        v161 = sub_1007A3A74();
        v163 = v162;
        v164 = *(v151 + 8);
        v216 = (v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v217 = v164;
        v164(v160, v215);
        v165 = sub_1000070F4(v161, v163, &v221);
        v88 = v215;

        *(v155 + 14) = v165;
        _os_log_impl(&_mh_execute_header, v153, v154, "Requesting move to #spread: %s, choosing location: %s", v155, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v166 = *(v151 + 8);
        v216 = (v151 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v217 = v166;
        v166(v138, v88);
        v219(v139, v150);
      }

      (v213)(v209, v152, v88);
      v167 = sub_1001F1160(&unk_100AF1150);
      (*(*(v167 - 8) + 56))(v195, 1, 1, v167);
      v168 = v192;
      sub_10079B904();
      sub_1007A1BF4();
      v169 = *(v196 + 8);
      v170 = v198;
      v169(v168, v198);
      v171 = v193;
      sub_10079B904();
      sub_1007A1BA4();
      v169(v171, v170);
      v172 = sub_1001F1160(&qword_100AD6190);
      (*(*(v172 - 8) + 56))(v200, 1, 1, v172);
      v173 = v152;
      v174 = v194;
      sub_1007A1B54();
      v176 = v202;
      v175 = v203;
      v177 = v201;
      (*(v202 + 104))(v201, enum case for UpdateReason.userInteraction(_:), v203);
      sub_100713AC4(v174, v177);
      (*(v176 + 8))(v177, v175);
      v169(v174, v170);
      v178 = v215;
      v179 = v217;
      v217(v173, v215);
      v179(v214, v178);
      return;
    }

    (*(v112 + 8))(v116, v88);
    p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
  }

  sub_100007840(v118, &qword_100AE6A10);
  v123 = v219;
  v124 = v211;
  if (p_inst_props[363] != -1)
  {
    swift_once();
  }

  v125 = sub_10079ACE4();
  sub_100008B98(v125, qword_100AF40B0);
  (*(v217 + 2))(v124, v181, v117);
  v75 = sub_10079ACC4();
  v126 = sub_1007A29B4();
  if (os_log_type_enabled(v75, v126))
  {
    v127 = swift_slowAlloc();
    v128 = v117;
    v129 = swift_slowAlloc();
    v221 = v129;
    *v127 = 136315138;
    sub_100716E80(&qword_100AE2830, &type metadata accessor for SpreadPaginationEntity);
    v130 = sub_1007A3A74();
    v131 = v124;
    v133 = v132;
    v123(v131, v128);
    v134 = sub_1000070F4(v130, v133, &v221);

    *(v127 + 4) = v134;
    _os_log_impl(&_mh_execute_header, v75, v126, "Cannot move to spread %s because it lacks any page locations", v127, 0xCu);
    sub_1000074E0(v129);

LABEL_36:

    return;
  }

  v123(v124, v117);
}

uint64_t sub_10070F098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v6 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v6 - 8);
  v39 = &v33 - v7;
  v8 = sub_1001F1160(&unk_100AF4260);
  __chkstk_darwin(v8 - 8);
  v38 = &v33 - v9;
  v10 = sub_1001F1160(&unk_100AD65C0);
  __chkstk_darwin(v10 - 8);
  v36 = &v33 - v11;
  v12 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_10079FD44();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1007A1C14();
  v19 = *(v35 - 8);
  __chkstk_darwin(v35);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = &v33 - v23;
  v40 = v3;
  sub_10079B904();
  if (sub_1007A1B44())
  {
    v34 = a3;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v25 = sub_10079ACE4();
    sub_100008B98(v25, qword_100AF40B0);
    v26 = sub_10079ACC4();
    v27 = sub_1007A2994();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v33 = a2;
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "updating our current location, but we have a requested location in flight.", v28, 2u);
      a2 = v33;
    }

    a3 = v34;
  }

  (*(v16 + 16))(v18, v37, v15);
  sub_1000077D8(a2, v14, &qword_100AD65A8);
  sub_1007A1BF4();
  sub_1007A1BA4();
  v29 = sub_1001F1160(&qword_100AD6190);
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  sub_1007A1B54();
  sub_100713AC4(v21, a3);
  v30 = *(v19 + 8);
  v31 = v35;
  v30(v21, v35);
  return (v30)(v24, v31);
}

uint64_t sub_10070F534(uint64_t a1, uint64_t a2)
{
  v327 = a2;
  v363 = sub_1001F1160(&qword_100AF4288);
  __chkstk_darwin(v363);
  v372 = v315 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v323 = v315 - v5;
  v367 = type metadata accessor for CurrentLocationController.StoredUpdate(0);
  v366 = *(v367 - 8);
  __chkstk_darwin(v367);
  v356 = v315 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F1160(&qword_100AF4290);
  __chkstk_darwin(v7 - 8);
  v333 = v315 - v8;
  v335 = sub_1007A3354();
  v334 = *(v335 - 8);
  __chkstk_darwin(v335);
  v332 = v315 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v330 = v315 - v11;
  v331 = sub_1007A3364();
  v329 = *(v331 - 8);
  __chkstk_darwin(v331);
  v328 = v315 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1007A0044();
  v375 = *(v13 - 8);
  __chkstk_darwin(v13);
  v353 = v315 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v320 = v315 - v16;
  __chkstk_darwin(v17);
  v348 = v315 - v18;
  __chkstk_darwin(v19);
  v338 = v315 - v20;
  __chkstk_darwin(v21);
  v337 = v315 - v22;
  __chkstk_darwin(v23);
  v322 = v315 - v24;
  __chkstk_darwin(v25);
  v326 = v315 - v26;
  v27 = sub_1001F1160(&qword_100AF4298);
  __chkstk_darwin(v27 - 8);
  v362 = v315 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v321 = v315 - v30;
  __chkstk_darwin(v31);
  v339 = v315 - v32;
  __chkstk_darwin(v33);
  v342 = v315 - v34;
  v347 = sub_1007A0014();
  v344 = *(v347 - 8);
  __chkstk_darwin(v347);
  v340 = v315 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v341 = v315 - v37;
  __chkstk_darwin(v38);
  v343 = v315 - v39;
  __chkstk_darwin(v40);
  v346 = v315 - v41;
  v42 = sub_1001F1160(&unk_100AD5A90);
  __chkstk_darwin(v42 - 8);
  v345 = v315 - v43;
  v44 = sub_1007A1C14();
  v369 = *(v44 - 8);
  v370 = v44;
  __chkstk_darwin(v44);
  v359 = v315 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v46);
  v352 = v315 - v47;
  __chkstk_darwin(v48);
  v360 = v315 - v49;
  __chkstk_darwin(v50);
  v364 = v315 - v51;
  v52 = sub_1001F1160(&qword_100AF4280);
  __chkstk_darwin(v52 - 8);
  v365 = v315 - v53;
  v54 = sub_1001F1160(&qword_100AED4A0);
  __chkstk_darwin(v54 - 8);
  v358 = v315 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v371 = (v315 - v57);
  __chkstk_darwin(v58);
  v373 = v315 - v59;
  __chkstk_darwin(v60);
  v319 = v315 - v61;
  __chkstk_darwin(v62);
  v324 = v315 - v63;
  __chkstk_darwin(v64);
  v325 = (v315 - v65);
  __chkstk_darwin(v66);
  v68 = v315 - v67;
  v69 = sub_1007A1B34();
  v70 = *(v69 - 8);
  v376 = v69;
  v377 = v70;
  __chkstk_darwin(v69);
  v72 = v315 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v73);
  v351 = v315 - v74;
  __chkstk_darwin(v75);
  v77 = v315 - v76;
  __chkstk_darwin(v78);
  v80 = v315 - v79;
  v81 = a1;
  sub_1007A0034();
  sub_1007A1B24();
  v82 = sub_1007A23F4();
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    v99 = v375;
    v100 = *(v375 + 16);
    v357 = v81;
    v355 = v375 + 16;
    v354 = v100;
    v100(v68, v81, v13);
    v101 = *(v99 + 56);
    v317 = v99 + 56;
    v361 = v101;
    v101(v68, 0, 1, v13);
    v102 = v368;
    swift_beginAccess();
    sub_1005EAE14(v68, v82);
    swift_endAccess();
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v336 = v13;
    v103 = sub_10079ACE4();
    v104 = sub_100008B98(v103, qword_100AF40B0);
    v106 = v376;
    v105 = v377;
    v107 = *(v377 + 16);
    v374 = v80;
    v350 = v377 + 16;
    v349 = v107;
    v107(v77, v80, v376);
    v108 = v102;
    v315[1] = v104;
    v109 = sub_10079ACC4();
    v110 = sub_1007A29A4();

    v111 = os_log_type_enabled(v109, v110);
    v368 = v108;
    if (v111)
    {
      v112 = swift_slowAlloc();
      v378 = swift_slowAlloc();
      *v112 = 136315394;
      sub_100716E80(&unk_100ADE790, &type metadata accessor for CFIRange);
      v113 = sub_1007A3A74();
      v115 = v114;
      v318 = *(v377 + 8);
      v318(v77, v106);
      v116 = sub_1000070F4(v113, v115, &v378);

      *(v112 + 4) = v116;
      *(v112 + 12) = 2082;
      sub_10000E3E8(&v368[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity], *&v368[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity + 24]);
      v117 = sub_10079ECF4();
      v119 = sub_1000070F4(v117, v118, &v378);

      *(v112 + 14) = v119;
      _os_log_impl(&_mh_execute_header, v109, v110, "#visibleCFI Received update of currentCFIInformation. Received: %s for:%{public}s", v112, 0x16u);
      swift_arrayDestroy();
      v105 = v377;

      v108 = v368;
    }

    else
    {

      v318 = *(v105 + 8);
      v318(v77, v106);
    }

    v121 = v373;
    v122 = v365;
    v349(v365, v374, v106);
    (*(v105 + 56))(v122, 0, 1, v106);
    swift_beginAccess();
    v316 = v82;
    sub_1005EB064(v122, v82);
    swift_endAccess();
    sub_1007087B8();
    v123 = sub_1007A1B24();
    v125 = v124;
    v126 = *&v108[OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider];
    type metadata accessor for CurrentLocationProvider();
    sub_100716E80(&unk_100AF42A0, type metadata accessor for CurrentLocationProvider);
    v127 = sub_1007A05E4();
    v365 = v126;
    v315[0] = v123;
    if (v127 == v123 && v128 == v125)
    {

      v129 = v375;
LABEL_22:
      v143 = v336;
      v144 = v354;
      v354(v121, v357, v336);
      v361(v121, 0, 1, v143);
      v145 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
      v146 = v368;
      swift_beginAccess();
      v147 = &v146[v145];
      v148 = v362;
      sub_1000077D8(v147, v362, &qword_100AF4298);
      if ((*(v366 + 48))(v148, 1, v367))
      {
        sub_100007840(v148, &qword_100AF4298);
        v149 = 1;
        v150 = v371;
      }

      else
      {
        v151 = v356;
        sub_100717DEC(v148, v356);
        sub_100007840(v148, &qword_100AF4298);
        v150 = v371;
        v144(v371, v151, v143);
        sub_100717E50(v151);
        v149 = 0;
      }

      v361(v150, v149, 1, v143);
      v152 = *(v363 + 48);
      v153 = v372;
      sub_1000077D8(v121, v372, &qword_100AED4A0);
      v154 = v153;
      sub_1000077D8(v150, &v153[v152], &qword_100AED4A0);
      v155 = *(v129 + 48);
      if (v155(v153, 1, v143) == 1)
      {
        sub_100007840(v150, &qword_100AED4A0);
        v156 = v372;
        sub_100007840(v121, &qword_100AED4A0);
        v157 = v155(&v156[v152], 1, v143);
        v158 = v369;
        if (v157 == 1)
        {
          sub_100007840(v156, &qword_100AED4A0);
          goto LABEL_36;
        }
      }

      else
      {
        v159 = v358;
        sub_1000077D8(v153, v358, &qword_100AED4A0);
        if (v155(&v153[v152], 1, v143) != 1)
        {
          v175 = &v153[v152];
          v176 = v348;
          (*(v129 + 32))(v348, v175, v143);
          sub_100716E80(&qword_100AE6000, &type metadata accessor for ContentMessage.CFIUpdate);
          v177 = v129;
          v178 = sub_1007A2124();
          v179 = *(v177 + 8);
          v179(v176, v143);
          sub_100007840(v371, &qword_100AED4A0);
          sub_100007840(v373, &qword_100AED4A0);
          v179(v159, v143);
          sub_100007840(v154, &qword_100AED4A0);
          v158 = v369;
          if (v178)
          {
LABEL_36:

            v180 = v360;
            sub_10079B904();
            v181 = v353;
            v354(v353, v357, v143);
            v182 = *(v158 + 2);
            v183 = v352;
            v184 = v370;
            v182(v352, v180, v370);
            v185 = v359;
            v182(v359, v180, v184);
            v186 = sub_10079ACC4();
            v187 = sub_1007A29B4();
            if (os_log_type_enabled(v186, v187))
            {
              v188 = swift_slowAlloc();
              v189 = swift_slowAlloc();
              v380 = v189;
              *v188 = 136315650;
              sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
              LODWORD(v373) = v187;
              v190 = sub_1007A3A74();
              v192 = v191;
              (*(v375 + 8))(v181, v143);
              v193 = sub_1000070F4(v190, v192, &v380);

              *(v188 + 4) = v193;
              *(v188 + 12) = 2048;
              v194 = sub_1007A1BE4();
              v195 = *(v158 + 1);
              v195(v183, v184);
              *(v188 + 14) = v194;
              *(v188 + 22) = 1024;
              v196 = v359;
              LODWORD(v194) = sub_1007A1B44() & 1;
              v195(v196, v184);
              *(v188 + 24) = v194;
              _os_log_impl(&_mh_execute_header, v186, v373, "Our cfiUpdate was our stored update however we were not setup to send our stored update!\n    cfiUpdate: %s\n    currentOrdinal: %ld\n    requestedLocation: %{BOOL}d", v188, 0x1Cu);
              sub_1000074E0(v189);

              v195(v360, v184);
            }

            else
            {
              v197 = *(v158 + 1);
              v197(v185, v184);
              v197(v183, v184);

              (*(v375 + 8))(v181, v143);
              v197(v180, v184);
            }

            return (v318)(v374, v376);
          }

          goto LABEL_31;
        }

        sub_100007840(v371, &qword_100AED4A0);
        v156 = v372;
        sub_100007840(v373, &qword_100AED4A0);
        (*(v129 + 8))(v159, v143);
        v158 = v369;
      }

      sub_100007840(v156, &qword_100AF4288);
LABEL_31:
      v160 = v364;
      sub_10079B904();
      v161 = sub_1007A1BE4();
      (*(v158 + 1))(v160, v370);
      if (v316 != v161)
      {

        v162 = v351;
        v163 = v374;
        v164 = v376;
        v349(v351, v374, v376);
        v165 = sub_10079ACC4();
        v166 = sub_1007A29A4();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v380 = v168;
          *v167 = 136315138;
          sub_100716E80(&unk_100ADE790, &type metadata accessor for CFIRange);
          v169 = sub_1007A3A74();
          v171 = v170;
          v172 = v162;
          v173 = v318;
          v318(v172, v164);
          v174 = sub_1000070F4(v169, v171, &v380);

          *(v167 + 4) = v174;
          _os_log_impl(&_mh_execute_header, v165, v166, "#visibleCFI Ordinal Mismatch - Ignoring: %s", v167, 0xCu);
          sub_1000074E0(v168);

          return v173(v163, v164);
        }

        else
        {

          v198 = v318;
          v318(v162, v164);
          return v198(v163, v164);
        }
      }

      sub_100238938(v315[0], v125);

      return (v318)(v374, v376);
    }

    v130 = sub_1007A3AB4();

    v129 = v375;
    if (v130)
    {
      goto LABEL_22;
    }

    v131 = v364;
    sub_10079B904();
    v132 = sub_1007A1BE4();
    v133 = *(v369 + 1);
    v134 = v131;
    v121 = v373;
    v133(v134, v370);
    if (v316 != v132)
    {
      goto LABEL_22;
    }

    v135 = v364;
    sub_10079B904();
    v136 = sub_1007A1B44();
    v137 = v135;
    v121 = v373;
    v133(v137, v370);
    if (v136)
    {
      goto LABEL_22;
    }

    v138 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_configurationChangeResumeLocation;
    swift_beginAccess();
    v139 = v345;
    sub_1000077D8(&v126[v138], v345, &unk_100AD5A90);
    LODWORD(v138) = (*(v369 + 6))(v139, 1, v370);
    sub_100007840(v139, &unk_100AD5A90);
    if (v138 != 1)
    {
      goto LABEL_22;
    }

    v373 = v125;
    sub_1007A0024();
    v140 = v344;
    v141 = v343;
    v372 = *(v344 + 104);
    (v372)(v343, enum case for ContentMessage.CFIUpdate.Event.load(_:), v347);
    sub_100716E80(&unk_100AF42C0, &type metadata accessor for ContentMessage.CFIUpdate.Event);
    sub_1007A2574();
    sub_1007A2574();
    if (v378 == v380 && v379 == v381)
    {
      v142 = 1;
    }

    else
    {
      v142 = sub_1007A3AB4();
    }

    v199 = *(v140 + 8);
    v200 = v347;
    v199(v141, v347);
    v199(v346, v200);

    if ((v142 & 1) != 0 && (v368[OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate] & 1) == 0)
    {

      v233 = v342;
      v234 = v357;
      v235 = v336;
      v236 = v354;
      v354(v342, v357, v336);
      v237 = v367;
      sub_1000077D8(v327, v233 + *(v367 + 20), &unk_100AF1140);
      (*(v366 + 56))(v233, 0, 1, v237);
      v238 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
      v239 = v368;
      swift_beginAccess();
      sub_1002391EC(v233, v239 + v238, &qword_100AF4298);
      swift_endAccess();
      v240 = v326;
      v236(v326, v234, v235);
      v241 = sub_10079ACC4();
      v242 = sub_1007A29D4();
      if (os_log_type_enabled(v241, v242))
      {
        v243 = swift_slowAlloc();
        v244 = swift_slowAlloc();
        v378 = v244;
        *v243 = 136315138;
        sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
        v245 = sub_1007A3A74();
        v247 = v246;
        (*(v375 + 8))(v240, v235);
        v248 = sub_1000070F4(v245, v247, &v378);

        *(v243 + 4) = v248;
        sub_1000074E0(v244);
        v239 = v368;
      }

      else
      {

        (*(v375 + 8))(v240, v235);
      }

      v262 = v376;
      v263 = [objc_opt_self() currentRunLoop];
      v264 = v328;
      sub_1007A3374();
      v265 = v330;
      sub_1007A3344();
      v266 = v332;
      sub_1007A3334();
      v267 = sub_1007A3324();
      v268 = v333;
      (*(*(v267 - 8) + 56))(v333, 1, 1, v267);
      v269 = swift_allocObject();
      *(v269 + 16) = v239;
      *(v269 + 24) = 25;
      v270 = v239;
      sub_1007A3384();

      sub_100007840(v268, &qword_100AF4290);
      v271 = *(v334 + 8);
      v272 = v335;
      v271(v266, v335);
      v271(v265, v272);
      (*(v329 + 8))(v264, v331);
      v318(v374, v262);
      v273 = OBJC_IVAR____TtC5Books25CurrentLocationController_sendTimer;
      swift_beginAccess();
      sub_1002391EC(&v378, v270 + v273, &qword_100AD9580);
      return swift_endAccess();
    }

    v201 = v341;
    sub_1007A0024();
    v202 = v340;
    (v372)(v340, enum case for ContentMessage.CFIUpdate.Event.scroll(_:), v347);
    sub_1007A2574();
    sub_1007A2574();
    if (v378 == v380 && v379 == v381)
    {
      v203 = v347;
      v199(v202, v347);
      v199(v201, v203);

      v204 = v375;
      v205 = v336;
      v206 = v368;
    }

    else
    {
      v207 = sub_1007A3AB4();
      v208 = v202;
      v209 = v347;
      v199(v208, v347);
      v199(v201, v209);

      v204 = v375;
      v205 = v336;
      v206 = v368;
      if ((v207 & 1) == 0)
      {
        v210 = OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate;
        if (v368[OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate] != 1)
        {
          v274 = v320;
          v354(v320, v357, v336);
          v275 = v206;
          v276 = sub_10079ACC4();
          v277 = v205;
          v278 = sub_1007A29D4();
          if (os_log_type_enabled(v276, v278))
          {
            v279 = swift_slowAlloc();
            v280 = v204;
            v281 = swift_slowAlloc();
            v378 = v281;
            *v279 = 136315394;
            sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
            v282 = sub_1007A3A74();
            v283 = v274;
            v285 = v284;
            (*(v280 + 8))(v283, v277);
            v286 = sub_1000070F4(v282, v285, &v378);

            *(v279 + 4) = v286;
            *(v279 + 12) = 1024;
            LODWORD(v286) = v368[v210];

            *(v279 + 14) = v286;
            _os_log_impl(&_mh_execute_header, v276, v278, "Fallthrough all cases - cfiUpdate: %s sendStoredUpdate: %{BOOL}d", v279, 0x12u);
            sub_1000074E0(v281);
          }

          else
          {

            (*(v204 + 8))(v274, v277);
          }

          v300 = v376;
          v301 = v318;
          sub_100238938(v315[0], v373);

          sub_100238C24();
          return v301(v374, v300);
        }
      }
    }

    v211 = OBJC_IVAR____TtC5Books25CurrentLocationController_storedUpdate;
    swift_beginAccess();
    v212 = v339;
    sub_1000077D8(v211 + v206, v339, &qword_100AF4298);
    v213 = *(v366 + 48);
    v214 = v213(v212, 1, v367);
    sub_100007840(v212, &qword_100AF4298);
    v215 = OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate;
    if (v214 == 1)
    {
      if (!*(v206 + OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate))
      {
        goto LABEL_78;
      }
    }

    else if ((*(v206 + OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate) & 1) == 0)
    {
      v249 = v322;
      v354(v322, v357, v205);
      v250 = v368;
      v251 = sub_10079ACC4();
      v252 = sub_1007A29D4();
      if (os_log_type_enabled(v251, v252))
      {
        v253 = swift_slowAlloc();
        v254 = v204;
        v255 = swift_slowAlloc();
        v380 = v255;
        *v253 = 136315394;
        sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
        LODWORD(v371) = v252;
        v256 = sub_1007A3A74();
        v257 = v249;
        v259 = v258;
        (*(v254 + 8))(v257, v205);
        v260 = sub_1000070F4(v256, v259, &v380);

        *(v253 + 4) = v260;
        *(v253 + 12) = 1024;
        LODWORD(v260) = v368[v215];

        *(v253 + 14) = v260;
        _os_log_impl(&_mh_execute_header, v251, v371, "Clearing stored & resetting sending of stored update CFIUpdate: %s sendStoredUpdate: %{BOOL}d", v253, 0x12u);
        sub_1000074E0(v255);

LABEL_77:

        goto LABEL_78;
      }

      (*(v204 + 8))(v249, v205);
      goto LABEL_78;
    }

    v216 = v337;
    v217 = v357;
    v218 = v354;
    v354(v337, v357, v205);
    v219 = v338;
    v218(v338, v217, v205);
    v220 = v368;
    v221 = v368;
    v222 = sub_10079ACC4();
    v223 = sub_1007A29D4();
    if (os_log_type_enabled(v222, v223))
    {
      v362 = v221;
      LODWORD(v370) = v223;
      v371 = v222;
      v224 = swift_slowAlloc();
      v364 = swift_slowAlloc();
      v380 = v364;
      v369 = v224;
      *v224 = 67109378;
      v225 = v211 + v220;
      v226 = v321;
      sub_1000077D8(v225, v321, &qword_100AF4298);
      v227 = v213(v226, 1, v367);
      v372 = v211;
      if (v227)
      {
        sub_100007840(v226, &qword_100AF4298);
        v228 = 1;
        v229 = v336;
        v230 = v323;
        v231 = v354;
        v232 = v325;
      }

      else
      {
        v287 = v356;
        sub_100717DEC(v226, v356);
        sub_100007840(v226, &qword_100AF4298);
        v232 = v325;
        v229 = v336;
        v231 = v354;
        v354(v325, v287, v336);
        sub_100717E50(v287);
        v228 = 0;
        v230 = v323;
      }

      v288 = v375;
      v289 = v361;
      v361(v232, v228, 1, v229);
      v290 = v324;
      v231(v324, v216, v229);
      v289(v290, 0, 1, v229);
      v291 = *(v363 + 48);
      sub_1000077D8(v232, v230, &qword_100AED4A0);
      sub_1000077D8(v290, v230 + v291, &qword_100AED4A0);
      v292 = *(v288 + 48);
      if (v292(v230, 1, v229) == 1)
      {
        sub_100007840(v290, &qword_100AED4A0);
        sub_100007840(v232, &qword_100AED4A0);
        v293 = v292(v230 + v291, 1, v229);
        v294 = v230;
        v295 = v375;
        v296 = v338;
        v251 = v371;
        v211 = v372;
        if (v293 == 1)
        {
          sub_100007840(v294, &qword_100AED4A0);
          v297 = 1;
LABEL_76:
          v305 = v362;
          v306 = *(v295 + 8);
          v307 = v336;
          v306(v337, v336);
          v308 = v369;
          v369[1] = v297;

          *(v308 + 4) = 2080;
          sub_100716E80(&unk_100AF42B0, &type metadata accessor for ContentMessage.CFIUpdate);
          v309 = sub_1007A3A74();
          v311 = v310;
          v306(v296, v307);
          v312 = sub_1000070F4(v309, v311, &v380);

          *(v308 + 10) = v312;
          _os_log_impl(&_mh_execute_header, v251, v370, "Possibly sending stored update - storedUpdate == cfiUpdate = %{BOOL}d cfiUpdate: %s", v308, 0x12u);
          sub_1000074E0(v364);

          goto LABEL_77;
        }
      }

      else
      {
        v298 = v319;
        sub_1000077D8(v230, v319, &qword_100AED4A0);
        v299 = v292(v230 + v291, 1, v229);
        v294 = v230;
        v251 = v371;
        if (v299 != 1)
        {
          v295 = v375;
          v302 = v348;
          (*(v375 + 32))(v348, v294 + v291, v229);
          sub_100716E80(&qword_100AE6000, &type metadata accessor for ContentMessage.CFIUpdate);
          v303 = sub_1007A2124();
          v304 = *(v295 + 8);
          v304(v302, v229);
          sub_100007840(v324, &qword_100AED4A0);
          sub_100007840(v325, &qword_100AED4A0);
          v304(v298, v229);
          sub_100007840(v294, &qword_100AED4A0);
          v297 = v303 & 1;
          v296 = v338;
          v211 = v372;
          goto LABEL_76;
        }

        sub_100007840(v324, &qword_100AED4A0);
        sub_100007840(v325, &qword_100AED4A0);
        v295 = v375;
        (*(v375 + 8))(v298, v229);
        v296 = v338;
        v211 = v372;
      }

      sub_100007840(v294, &qword_100AF4288);
      v297 = 0;
      goto LABEL_76;
    }

    v261 = *(v375 + 8);
    v261(v216, v205);

    v261(v219, v205);
LABEL_78:
    v313 = v368;
    v368[OBJC_IVAR____TtC5Books25CurrentLocationController_sendStoredUpdate] = 0;
    v314 = v342;
    (*(v366 + 56))(v342, 1, 1, v367);
    swift_beginAccess();
    sub_1002391EC(v314, v211 + v313, &qword_100AF4298);
    swift_endAccess();
    sub_10004A804(v313);
    sub_100238938(v315[0], v373);

    sub_100238C24();
    return (v318)(v374, v376);
  }

  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v85 = sub_10079ACE4();
  sub_100008B98(v85, qword_100AF40B0);
  v87 = v376;
  v86 = v377;
  (*(v377 + 16))(v72, v80, v376);
  v88 = sub_10079ACC4();
  v89 = sub_1007A29B4();
  if (os_log_type_enabled(v88, v89))
  {
    v90 = swift_slowAlloc();
    v374 = v80;
    v91 = v90;
    v92 = swift_slowAlloc();
    v378 = v92;
    *v91 = 136446210;
    sub_1007A1B24();
    v93 = sub_1007A23E4();
    v95 = v94;

    v96 = *(v86 + 8);
    v96(v72, v87);
    v97 = sub_1000070F4(v93, v95, &v378);

    *(v91 + 4) = v97;
    _os_log_impl(&_mh_execute_header, v88, v89, "Failed to get spineIndex from cfi.start %{public}s", v91, 0xCu);
    sub_1000074E0(v92);

    return (v96)(v374, v87);
  }

  else
  {

    v120 = *(v86 + 8);
    v120(v72, v87);
    return (v120)(v80, v87);
  }
}

uint64_t sub_1007121CC(void (*a1)(uint64_t, uint64_t), uint64_t a2, char a3, uint64_t a4)
{
  v5 = v4;
  v127 = a4;
  v144 = a2;
  v134 = a1;
  v139 = sub_10079FD44();
  v125 = *(v139 - 8);
  __chkstk_darwin(v139);
  v128 = v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v138 = v119 - v9;
  v10 = sub_10079FD94();
  v141 = *(v10 - 8);
  v142 = v10;
  __chkstk_darwin(v10);
  v140 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1001F1160(&unk_100AF1140);
  __chkstk_darwin(v12 - 8);
  v136 = v119 - v13;
  v14 = sub_1001F1160(&qword_100AD65A8);
  __chkstk_darwin(v14 - 8);
  v135 = v119 - v15;
  v16 = sub_1001F1160(&unk_100AD65C0);
  __chkstk_darwin(v16 - 8);
  v124 = v119 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v119 - v19;
  v21 = sub_1001F1160(&unk_100AF4260);
  __chkstk_darwin(v21 - 8);
  v123 = v119 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v119 - v24;
  v145 = sub_1007A1C14();
  v26 = *(v145 - 8);
  __chkstk_darwin(v145);
  v126 = v119 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v137 = v119 - v29;
  __chkstk_darwin(v30);
  v122 = v119 - v31;
  __chkstk_darwin(v32);
  v133 = v119 - v33;
  __chkstk_darwin(v34);
  v132 = v119 - v35;
  __chkstk_darwin(v36);
  v38 = v119 - v37;
  __chkstk_darwin(v39);
  v41 = v119 - v40;
  sub_10079B904();
  v143 = v41;
  v42 = v26;
  if (a3)
  {
    if (sub_1007A1B94() >= 1)
    {
      if (qword_100AD1B58 != -1)
      {
        swift_once();
      }

      v43 = sub_10079ACE4();
      sub_100008B98(v43, qword_100AF40B0);
      v44 = v145;
      (*(v26 + 16))(v38, v41, v145);
      v45 = sub_10079ACC4();
      v46 = sub_1007A29D4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = v4;
        v48 = swift_slowAlloc();
        *v48 = 134217984;
        v49 = sub_1007A1B94();
        (*(v42 + 8))(v38, v44);
        *(v48 + 4) = v49;
        v5 = v47;
      }

      else
      {
        (*(v26 + 8))(v38, v44);
      }

      v41 = v143;
    }

    v144 = sub_1007A1B94();
  }

  sub_1007A1BA4();
  v50 = sub_1007A1B84();
  v51 = *(v50 - 8);
  v52 = (*(v51 + 48))(v25, 1, v50);
  v121 = v50;
  if (v52 == 1)
  {
    sub_100007840(v25, &unk_100AF4260);
    sub_1007A1BF4();
    v53 = sub_1007A1BC4();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v20, 1, v53) == 1)
    {
      sub_100007840(v20, &unk_100AD65C0);
      v55 = 0x80000001008E8C80;
      v56 = 0xD000000000000016;
    }

    else
    {
      v56 = sub_1007A1BB4();
      v55 = v58;
      (*(v54 + 8))(v20, v53);
    }

    v41 = v143;
  }

  else
  {
    v56 = sub_1007A1B74();
    v55 = v57;
    (*(v51 + 8))(v25, v50);
  }

  v120 = v51;
  if (qword_100AD1B58 != -1)
  {
    swift_once();
  }

  v59 = sub_10079ACE4();
  v60 = sub_100008B98(v59, qword_100AF40B0);
  v61 = v42;
  v62 = v42 + 16;
  v63 = *(v42 + 16);
  v64 = v132;
  v65 = v145;
  v129 = v63;
  v130 = v62;
  v63(v132, v41, v145);

  v131 = v60;
  v66 = sub_10079ACC4();
  v67 = sub_1007A29D4();

  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v119[1] = v5;
    v69 = v68;
    v146[0] = swift_slowAlloc();
    *v69 = 136315906;
    v70 = sub_1000070F4(v56, v55, v146);

    *(v69 + 4) = v70;
    *(v69 + 12) = 2050;
    *(v69 + 14) = v134;
    *(v69 + 22) = 2050;
    *(v69 + 24) = v144;
    *(v69 + 32) = 2080;
    sub_100716E80(&qword_100AD65A0, &type metadata accessor for Location);
    v71 = sub_1007A3A74();
    v73 = v72;
    v132 = *(v61 + 8);
    (v132)(v64, v65);
    v74 = sub_1000070F4(v71, v73, v146);

    *(v69 + 34) = v74;
    _os_log_impl(&_mh_execute_header, v66, v67, "#requestedLoc CurrentLocationController Received Fulfilled %s destOrdinal: %{public}ld destPage:%{public}ld currentLocation:%s", v69, 0x2Au);
    swift_arrayDestroy();
  }

  else
  {

    v132 = *(v61 + 8);
    (v132)(v64, v65);
  }

  swift_getObjectType();
  sub_10079F984();
  swift_getObjectType();
  sub_10079F6D4();
  swift_unknownObjectRelease();
  if (sub_1007A2BB4())
  {
    v75 = sub_1001F1160(&unk_100AF1150);
    (*(*(v75 - 8) + 56))(v135, 1, 1, v75);
    sub_1000077D8(v127, v136, &unk_100AF1140);
    v76 = v133;
    sub_1007A1BD4();
    v77 = v122;
    v78 = v145;
    v129(v122, v76, v145);
    v79 = sub_10079ACC4();
    v80 = sub_1007A2994();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v146[0] = v82;
      *v81 = 136315138;
      sub_100716E80(&qword_100AD65A0, &type metadata accessor for Location);
      v83 = sub_1007A3A74();
      v85 = v84;
      v86 = v77;
      v87 = v132;
      (v132)(v86, v78);
      v88 = sub_1000070F4(v83, v85, v146);
      v89 = v87;

      *(v81 + 4) = v88;
      _os_log_impl(&_mh_execute_header, v79, v80, "Updating to requestPageChangeLocation: %s", v81, 0xCu);
      sub_1000074E0(v82);
    }

    else
    {

      v89 = v132;
      (v132)(v77, v78);
    }

    v109 = v142;
    v110 = v143;
    v112 = v140;
    v111 = v141;
    (*(v141 + 104))(v140, enum case for UpdateReason.locationFulfillment(_:), v142);
    v113 = v133;
    sub_100713AC4(v133, v112);
    (*(v111 + 8))(v112, v109);
    v89(v113, v78);
  }

  else
  {
    v90 = v128;
    sub_10079FD04();
    v91 = v138;
    sub_100715EB8(v90, v138);
    v92 = v125;
    v93 = *(v125 + 8);
    v94 = v139;
    v144 = v125 + 8;
    v134 = v93;
    v93(v90, v139);
    (*(v92 + 16))(v90, v91, v94);
    v95 = sub_1001F1160(&unk_100AF1150);
    (*(*(v95 - 8) + 56))(v135, 1, 1, v95);
    v96 = sub_1007A1BC4();
    (*(*(v96 - 8) + 56))(v124, 1, 1, v96);
    (*(v120 + 56))(v123, 1, 1, v121);
    v97 = sub_1001F1160(&qword_100AD6190);
    (*(*(v97 - 8) + 56))(v136, 1, 1, v97);
    v98 = v137;
    sub_1007A1B54();
    v99 = v126;
    v100 = v145;
    v129(v126, v98, v145);
    v101 = sub_10079ACC4();
    v102 = sub_1007A2994();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v146[0] = v104;
      *v103 = 136315138;
      sub_100716E80(&qword_100AD65A0, &type metadata accessor for Location);
      v105 = sub_1007A3A74();
      v107 = v106;
      v89 = v132;
      (v132)(v99, v100);
      v108 = sub_1000070F4(v105, v107, v146);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v101, v102, "Updating to newLocation: %s reason: .locationFulfillment", v103, 0xCu);
      sub_1000074E0(v104);
    }

    else
    {

      v89 = v132;
      (v132)(v99, v100);
    }

    v114 = v142;
    v110 = v143;
    v78 = v100;
    v116 = v140;
    v115 = v141;
    (*(v141 + 104))(v140, enum case for UpdateReason.locationFulfillment(_:), v142);
    v117 = v137;
    sub_100713AC4(v137, v116);
    (*(v115 + 8))(v116, v114);
    v89(v117, v78);
    v134(v138, v139);
  }

  return (v89)(v110, v78);
}

uint64_t sub_100713248(uint64_t a1, uint64_t a2)
{
  v20 = a2;
  v3 = sub_1001F1160(&qword_100AD7EB0);
  __chkstk_darwin(v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_10079B844();
  v7 = sub_10000A7C4(255, &qword_100AD1E10);
  WitnessTable = swift_getWitnessTable();
  v9 = sub_100017E1C();
  v22 = v6;
  v23 = v7;
  v24 = WitnessTable;
  v25 = v9;
  v10 = sub_10079B824();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - v12;
  v22 = a1;
  v14 = sub_1007A2D74();
  v21 = v14;
  v15 = sub_1007A2D24();
  (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  sub_10079BAB4();
  sub_100007840(v5, &qword_100AD7EB0);

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v20;
  *(v17 + 24) = v16;

  swift_getWitnessTable();
  sub_10079BB04();

  (*(v11 + 8))(v13, v10);

  swift_beginAccess();
  sub_10079B854();
  swift_endAccess();
}

void sub_100713564()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC5Books25CurrentLocationController_started) == 1)
    {
      v1 = Strong;

      sub_100238068();
    }

    else
    {
    }
  }
}

uint64_t sub_1007135F0()
{
  v0 = sub_10079FD44();
  v37 = *(v0 - 8);
  v38 = v0;
  __chkstk_darwin(v0);
  v36 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v4 = &v32 - v3;
  v5 = sub_1007A0F74();
  v34 = *(v5 - 8);
  v35 = v5;
  __chkstk_darwin(v5);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1007A1C14();
  v7 = *(v39 - 8);
  __chkstk_darwin(v39);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  sub_10079B904();
  swift_getObjectType();
  sub_10079FA44();
  sub_10079F984();
  swift_getObjectType();
  v13 = sub_10079F684();
  swift_unknownObjectRelease();
  sub_10079F984();
  swift_getObjectType();
  sub_10079F6D4();
  swift_unknownObjectRelease();
  v14 = sub_1007A2BB4();
  if (sub_1007A1C04())
  {
    v15 = 1;
    goto LABEL_3;
  }

  if ((v13 > 1) | v14 & 1)
  {
    sub_10079F9D4();
    sub_1007A1B64();
    v32 = v7;
    v19 = v33;
    sub_10079F3A4();

    v20 = v38;
    v21 = *(v37 + 8);
    v21(v4, v38);
    sub_1007A1B64();
    v15 = sub_1007A0F64();
    v21(v4, v20);
    v22 = v19;
    v7 = v32;
    (*(v34 + 8))(v22, v35);
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = 0;
    v20 = v38;
  }

  if ((v14 ^ 1))
  {
LABEL_3:
    v16 = *(v7 + 8);
    v17 = v39;
    v16(v9, v39);
    v16(v12, v17);
    return v15 & 1;
  }

  sub_1007A1B64();
  v23 = sub_10079FD14();
  v24 = *(v37 + 8);
  v24(v4, v20);
  v25 = v36;
  sub_1007A1B64();
  v26 = sub_10079FD14();
  v24(v25, v20);
  if (v23 != v26)
  {
    v15 = 0;
    goto LABEL_3;
  }

  sub_1007A1B64();
  v27 = sub_10079FCF4();
  result = (v24)(v4, v20);
  v28 = v27 + 1;
  if (!__OFADD__(v27, 1))
  {
    sub_1007A1B64();
    v29 = sub_10079FCF4();
    v24(v4, v20);
    v30 = *(v7 + 8);
    v31 = v39;
    v30(v9, v39);
    v30(v12, v31);
    v15 = v28 == v29;
    return v15 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_100713AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v161 = a2;
  v148 = sub_1007A1B34();
  v147 = *(v148 - 8);
  __chkstk_darwin(v148);
  v145 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F1160(&qword_100AF4280);
  __chkstk_darwin(v6 - 8);
  v146 = &v144 - v7;
  v8 = sub_1001F1160(&qword_100AE6A10);
  __chkstk_darwin(v8 - 8);
  v150 = &v144 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v153 = &v144 - v11;
  v167 = sub_1007A0F74();
  v12 = *(v167 - 8);
  __chkstk_darwin(v167);
  v154 = &v144 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v162 = &v144 - v15;
  v166 = sub_1007A0404();
  v16 = *(v166 - 8);
  __chkstk_darwin(v166);
  v18 = &v144 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1001F1160(&unk_100AEB380);
  __chkstk_darwin(v19 - 8);
  v21 = &v144 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v156 = &v144 - v23;
  __chkstk_darwin(v24);
  v160 = &v144 - v25;
  __chkstk_darwin(v26);
  v159 = &v144 - v27;
  __chkstk_darwin(v28);
  v30 = &v144 - v29;
  v31 = sub_10079FD44();
  v32 = *(v31 - 8);
  v171 = v31;
  v172 = v32;
  __chkstk_darwin(v31);
  v149 = &v144 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v151 = &v144 - v35;
  __chkstk_darwin(v36);
  v38 = &v144 - v37;
  __chkstk_darwin(v39);
  v41 = &v144 - v40;
  v42 = sub_1007A1C14();
  v164 = *(v42 - 8);
  v165 = v42;
  __chkstk_darwin(v42);
  v155 = &v144 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v170 = *&v2[OBJC_IVAR____TtC5Books25CurrentLocationController_currentLocationProvider];
  v168 = &v144 - v45;
  sub_10079B904();
  if (sub_1007135F0())
  {
    sub_1007A1B64();
    sub_1007A1B64();
    LODWORD(v157) = sub_10079FD34();
    v158 = v30;
    v46 = v21;
    v47 = v3;
    v48 = v16;
    v49 = *(v172 + 8);
    v50 = v38;
    v51 = v171;
    v49(v50, v171);
    v49(v41, v51);
    v30 = v158;
    v16 = v48;
    v3 = v47;
    v21 = v46;
    if (v157)
    {
      return (*(v164 + 8))(v168, v165);
    }
  }

  v152 = v21;
  v169 = a1;
  sub_1007A0364();
  type metadata accessor for CurrentLocationController(0);
  sub_100716E80(&qword_100AE63A8, type metadata accessor for CurrentLocationController);
  v173 = v3;
  sub_1007A09C4();
  v52 = *(v16 + 8);
  v158 = (v16 + 8);
  v52(v18, v166);
  v53 = v12;
  v54 = *(v12 + 48);
  v55 = v30;
  v56 = v30;
  v57 = v53;
  v58 = v167;
  v157 = v54;
  v59 = v54(v55, 1, v167);
  v163 = v57;
  if (v59 == 1)
  {
    sub_100007840(v56, &unk_100AEB380);
    v60 = v159;
  }

  else
  {
    sub_1007A1B64();
    v61 = sub_1007A0F64();
    (*(v172 + 8))(v41, v171);
    (*(v57 + 8))(v56, v58);
    v60 = v159;
    if (v61)
    {
      v62 = [objc_opt_self() defaultCenter];
      if (qword_100AD12D8 != -1)
      {
        swift_once();
      }

      [v62 postNotificationName:qword_100AD6290 object:v170];
    }
  }

  sub_1007A0384();
  sub_1007A09C4();
  v52(v18, v166);
  v63 = v167;
  v64 = v157;
  if (v157(v60, 1, v167) == 1)
  {
    sub_100007840(v60, &unk_100AEB380);
    v65 = v169;
    v66 = v171;
  }

  else
  {
    v65 = v169;
    sub_1007A1B64();
    v67 = sub_1007A0F64();
    v66 = v171;
    (*(v172 + 8))(v41, v171);
    (*(v163 + 8))(v60, v63);
    if (v67)
    {
      v68 = [objc_opt_self() defaultCenter];
      if (qword_100AD12E0 != -1)
      {
        swift_once();
      }

      [v68 postNotificationName:qword_100AD6298 object:v170];
    }
  }

  swift_getObjectType();
  sub_10079F9D4();
  sub_1007A1B64();
  v69 = v160;
  sub_10079F3D4();
  v70 = v69;

  v71 = v172;
  v72 = *(v172 + 8);
  v166 = v172 + 8;
  (v72)(v41, v66);
  if (v64(v70, 1, v63) == 1)
  {
    v159 = v72;
    sub_100007840(v70, &unk_100AEB380);
    v73 = v164;
    v74 = v165;
    if (qword_100AD1B58 != -1)
    {
      swift_once();
    }

    v75 = sub_10079ACE4();
    sub_100008B98(v75, qword_100AF40B0);
    v76 = v155;
    (*(v73 + 16))(v155, v65, v74);
    v77 = v73;
    v78 = sub_10079ACC4();
    v79 = sub_1007A29B4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v175 = v81;
      *v80 = 136315138;
      sub_1007A1B64();
      sub_100716E80(&qword_100AE9A40, &type metadata accessor for PageLocation);
      v82 = sub_1007A3A74();
      v83 = v66;
      v85 = v84;
      (v159)(v41, v83);
      (*(v77 + 8))(v76, v74);
      v86 = sub_1000070F4(v82, v85, &v175);

      *(v80 + 4) = v86;
      _os_log_impl(&_mh_execute_header, v78, v79, "Unable to find a spread containing: %s", v80, 0xCu);
      sub_1000074E0(v81);
    }

    else
    {

      (*(v77 + 8))(v76, v74);
    }

    v94 = 0;
    v95 = 0;
    v97 = v169;
    v96 = v170;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    goto LABEL_33;
  }

  v87 = (v163 + 32);
  v88 = *(v163 + 32);
  (v88)(v162, v70, v63);
  v89 = OBJC_IVAR____TtC5Books23CurrentLocationProvider_currentSpread;
  v90 = v170;
  swift_beginAccess();
  v91 = v90 + v89;
  v92 = v156;
  sub_1000077D8(v91, v156, &unk_100AEB380);
  v93 = v64(v92, 1, v63);
  v158 = v88;
  if (v93 == 1)
  {
    sub_100007840(v92, &unk_100AEB380);
    v94 = 0;
    v95 = 0;
    v97 = v169;
    v96 = v170;
    v98 = v163;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
  }

  else
  {
    v157 = v89;
    v159 = v72;
    v100 = v154;
    v160 = v87;
    (v88)(v154, v92, v63);
    v101 = v153;
    sub_1007A0F14();
    v102 = v71;
    v103 = *(v71 + 48);
    v104 = v171;
    p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
    if (v103(v101, 1, v171) == 1)
    {
      v98 = v163;
      (*(v163 + 8))(v100, v63);
      sub_100007840(v101, &qword_100AE6A10);
      v94 = 0;
      v95 = 0;
      v97 = v169;
      v96 = v170;
    }

    else
    {
      v105 = *(v102 + 32);
      v106 = v151;
      v105(v151, v101, v104);
      v107 = v150;
      sub_1007A0F14();
      v108 = v103(v107, 1, v104);
      v97 = v169;
      if (v108 == 1)
      {
        (v159)(v106, v104);
        v98 = v163;
        (*(v163 + 8))(v154, v63);
        sub_100007840(v107, &qword_100AE6A10);
      }

      else
      {
        v109 = v149;
        v105(v149, v107, v104);
        v110 = sub_10079FD14();
        if (v110 != sub_10079FD14())
        {
          v125 = sub_10079FD14();
          v126 = OBJC_IVAR____TtC5Books25CurrentLocationController_cfiByOrdinal;
          v127 = v173;
          swift_beginAccess();
          v128 = *&v127[v126];
          v96 = v170;
          if (*(v128 + 16))
          {
            v129 = sub_1002F9CDC(v125);
            v130 = v146;
            p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
            v89 = v157;
            if (v131)
            {
              v132 = *(v128 + 56);
              v133 = v147;
              v134 = v148;
              (*(v147 + 16))(v146, v132 + *(v147 + 72) * v129, v148);
              v135 = 0;
            }

            else
            {
              v135 = 1;
              v134 = v148;
              v133 = v147;
            }
          }

          else
          {
            v135 = 1;
            v134 = v148;
            v133 = v147;
            v130 = v146;
            p_inst_props = (&OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling + 56);
            v89 = v157;
          }

          (*(v133 + 56))(v130, v135, 1, v134);
          if ((*(v133 + 48))(v130, 1, v134))
          {
            v136 = v171;
            v137 = v159;
            (v159)(v149, v171);
            v137(v151, v136);
            v98 = v163;
            (*(v163 + 8))(v154, v63);
            sub_100007840(v130, &qword_100AF4280);
            v94 = 0;
            v95 = 0;
          }

          else
          {
            v138 = v145;
            (*(v133 + 16))(v145, v130, v134);
            sub_100007840(v130, &qword_100AF4280);
            v139 = sub_1007A1B24();
            v140 = v134;
            v94 = v139;
            v95 = v141;
            (*(v133 + 8))(v138, v140);
            v142 = v171;
            v143 = v159;
            (v159)(v149, v171);
            v143(v151, v142);
            v98 = v163;
            (*(v163 + 8))(v154, v63);
          }

          goto LABEL_32;
        }

        v111 = v159;
        (v159)(v109, v104);
        v111(v106, v104);
        v98 = v163;
        (*(v163 + 8))(v154, v63);
      }

      v94 = 0;
      v95 = 0;
      v96 = v170;
      p_inst_props = &OBJC_PROTOCOL___BKLibraryDataSourceRestoreControlling.inst_props;
    }

    v89 = v157;
  }

LABEL_32:
  v112 = v152;
  (v158)(v152, v162, v63);
  (*(v98 + 56))(v112, 0, 1, v63);
  swift_beginAccess();
  sub_1002391EC(v112, v96 + v89, &unk_100AEB380);
  swift_endAccess();
LABEL_33:
  sub_1002370E0(v97, v161);
  v113 = v173;
  sub_1007087B8();
  if (v95)
  {
    if (p_inst_props[363] != -1)
    {
      swift_once();
    }

    v114 = sub_10079ACE4();
    sub_100008B98(v114, qword_100AF40B0);
    v115 = v113;
    v116 = sub_10079ACC4();
    v117 = sub_1007A2994();

    if (os_log_type_enabled(v116, v117))
    {
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v174 = v119;
      *v118 = 136446210;
      sub_10000E3E8(&v115[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity], *&v115[OBJC_IVAR____TtC5Books25CurrentLocationController_bookEntity + 24]);
      v120 = sub_10079ECF4();
      v122 = sub_1000070F4(v120, v121, &v174);

      *(v118 + 4) = v122;
      _os_log_impl(&_mh_execute_header, v116, v117, "#visibleCFI First location ordinal change. Updating readingLocationCFI  for:%{public}s", v118, 0xCu);
      sub_1000074E0(v119);

      v96 = v170;
    }

    sub_100238938(v94, v95);

    sub_100238C24();
  }

  if (sub_1007135F0())
  {
    v123 = [objc_opt_self() defaultCenter];
    if (qword_100AD12C8 != -1)
    {
      swift_once();
    }

    [v123 postNotificationName:qword_100AD6280 object:v96];
  }

  return (*(v164 + 8))(v168, v165);
}