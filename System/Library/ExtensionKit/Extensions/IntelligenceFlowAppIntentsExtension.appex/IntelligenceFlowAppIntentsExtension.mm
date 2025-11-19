uint64_t sub_100001254()
{
  sub_100003F04();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_100004164();
  v0[4] = v3;
  sub_100003F60(v3);
  v0[5] = v4;
  v6 = *(v5 + 64);
  v0[6] = sub_100003F94();
  sub_100004204();
  v0[7] = sub_1000041F4();
  v8 = sub_1000041D4();

  return _swift_task_switch(sub_100001334, v8, v7);
}

id sub_100001334()
{
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v2 = result;
    v4 = v0[6];
    v3 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v8 = v0[2];
    v7 = v0[3];

    sub_100004084();
    sub_100004134(v9);
    v11 = v10;
    (*(v6 + 8))(v4, v5);
    v12 = sub_1000041B4();
    sub_100003B00(v11, v12, v2);

    sub_100004074();

    sub_100003F24();

    return v13();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100001454()
{
  v0 = sub_10000379C(&qword_10000C0E0, &qword_100004920);
  sub_100003EEC(v0);
  v2 = *(v1 + 64);
  sub_100003EF8();
  (__chkstk_darwin)();
  sub_100003F40();
  v3 = sub_10000379C(&qword_10000C098, &qword_1000048C8);
  sub_100003EEC(v3);
  v5 = *(v4 + 64);
  sub_100003EF8();
  (__chkstk_darwin)();
  v6 = sub_100004124();
  v7 = sub_100003EC8(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_100003EB8();
  sub_10000379C(&qword_10000C0F8, &qword_100004930);
  sub_100004114();
  sub_100003F10();
  sub_1000037E4(v10, v11, v12, v6);
  sub_100004164();
  sub_100003F10();
  sub_1000037E4(v13, v14, v15, v16);
  v17 = sub_10000379C(&qword_10000C0A8, &qword_1000048D8);
  sub_100003EEC(v17);
  v19 = *(v18 + 64);
  sub_100003EF8();
  __chkstk_darwin(v20);
  sub_100003F50();
  sub_100004064();
  sub_100003F10();
  sub_1000037E4(v21, v22, v23, v24);
  v25 = sub_100004104();
  v26 = sub_100003E9C(v25);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  sub_100003EB8();
  (*(v31 + 104))(v30 - v29, enum case for InputConnectionBehavior.default(_:));
  return sub_1000040B4();
}

uint64_t sub_1000016D0()
{
  sub_100003F04();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_100003F30(v2);
  *v3 = v4;
  sub_100003ED8(v3);

  return sub_100001254();
}

uint64_t sub_100001758@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100001454();
  *a1 = result;
  return result;
}

uint64_t sub_1000017D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100004124();
  sub_1000039B8(v3, a2);
  sub_100003910(v3, a2);
  sub_100003F70();
  return sub_100004114();
}

uint64_t sub_100001854(uint64_t a1, uint64_t *a2)
{
  v3 = sub_10000379C(&qword_10000C0C0, &qword_1000048F8);
  sub_1000039B8(v3, a2);
  v4 = sub_100003910(v3, a2);
  sub_100003F70();
  sub_1000040E4();
  v5 = sub_1000040F4();

  return sub_1000037E4(v4, 0, 1, v5);
}

uint64_t sub_1000018F8()
{
  sub_100003F04();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_10000379C(&qword_10000C0E0, &qword_100004920);
  sub_100003EEC(v3);
  v5 = *(v4 + 64);
  v0[4] = sub_100003F94();
  v6 = sub_100004164();
  v0[5] = v6;
  sub_100003F60(v6);
  v0[6] = v7;
  v9 = *(v8 + 64);
  v0[7] = sub_100003F94();
  v0[8] = sub_100004204();
  v0[9] = sub_1000041F4();
  v11 = sub_1000041D4();
  v0[10] = v11;
  v0[11] = v10;

  return _swift_task_switch(sub_100001A08, v11, v10);
}

uint64_t sub_100001A08()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_100004054();
  sub_100003E9C(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  v9 = sub_100003F94();
  sub_100004084();
  sub_100004044();
  (*(v6 + 8))(v9, v4);
  if (sub_100003A1C(v2, 1, v1) != 1)
  {
    (*(v0[6] + 32))(v0[7], v0[4], v0[5]);

    if (sub_100004154())
    {
      v13 = [objc_opt_self() defaultWorkspace];
      if (!v13)
      {
        __break(1u);
        return withCheckedContinuation<A>(isolation:function:_:)();
      }

      v15 = v13;
      v16 = v0[7];
      sub_100004134(v14);
      v18 = v17;
      v19 = sub_1000041B4();
      v20 = sub_100003B84(v18, 0, v19, v15);
      v0[12] = v20;

      if (v20)
      {
        v21 = v0[8];
        v0[13] = sub_1000041F4();
        v22 = swift_task_alloc();
        v0[14] = v22;
        *(v22 + 16) = v20;
        v23 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
        v24 = swift_task_alloc();
        v0[15] = v24;
        *v24 = v0;
        v24[1] = sub_100001DA4;

        return withCheckedContinuation<A>(isolation:function:_:)();
      }

      v30 = v0[9];
      v27 = v0[6];
      v26 = v0[7];
      v28 = v0[5];

      sub_100003AAC();
      swift_allocError();
      *v31 = 2;
      swift_willThrow();
      sub_100004144();
    }

    else
    {
      v25 = v0[9];
      v27 = v0[6];
      v26 = v0[7];
      v28 = v0[5];

      sub_100003AAC();
      swift_allocError();
      *v29 = 1;
      swift_willThrow();
    }

    (*(v27 + 8))(v26, v28);
    goto LABEL_12;
  }

  v10 = v0[9];
  v11 = v0[4];

  sub_100003A44(v11);

  sub_100003AAC();
  swift_allocError();
  *v12 = 0;
  swift_willThrow();
LABEL_12:
  v32 = v0[7];
  v33 = v0[4];

  sub_100003F24();

  return v34();
}

uint64_t sub_100001DA4()
{
  v1 = *v0;
  v2 = *(*v0 + 120);
  v3 = *(*v0 + 112);
  v4 = *(*v0 + 104);
  v8 = *v0;

  v5 = *(v1 + 88);
  v6 = *(v1 + 80);

  return _swift_task_switch(sub_100001F04, v6, v5);
}

uint64_t sub_100001F04()
{
  v1 = v0[12];
  v2 = v0[9];
  v4 = v0[6];
  v3 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[2];

  sub_100004074();

  sub_100004144();
  v8 = *(v4 + 8);
  v9 = sub_100003F70();
  v10(v9);

  sub_100003F24();

  return v11();
}

id sub_100001FB8(uint64_t a1, void *a2)
{
  v5 = sub_10000379C(&qword_10000C0F0, &qword_100004928);
  v6 = sub_100003E9C(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  sub_100003F50();
  (*(v8 + 16))(v2, a1, v5);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v2, v5);
  aBlock[4] = sub_100003CB4;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100002164;
  aBlock[3] = &unk_1000085A8;
  v13 = _Block_copy(aBlock);

  [a2 setCompletionBlock:v13];
  _Block_release(v13);
  return [a2 start];
}

uint64_t sub_100002164(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_1000021A8()
{
  v0 = sub_10000379C(&qword_10000C098, &qword_1000048C8);
  sub_100003EEC(v0);
  v2 = *(v1 + 64);
  sub_100003EF8();
  __chkstk_darwin(v3);
  sub_100003F40();
  v4 = sub_100004124();
  v5 = sub_100003EC8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003EB8();
  sub_10000379C(&qword_10000C0C8, &qword_100004900);
  sub_100004114();
  sub_100003F10();
  sub_1000037E4(v8, v9, v10, v4);
  v11 = sub_10000379C(&qword_10000C0D0, &qword_100004908);
  sub_100003EEC(v11);
  v13 = *(v12 + 64);
  sub_100003EF8();
  __chkstk_darwin(v14);
  sub_100003FAC();
  sub_100004054();
  sub_100003F10();
  sub_1000037E4(v15, v16, v17, v18);
  v19 = sub_10000379C(&qword_10000C0A8, &qword_1000048D8);
  sub_100003EEC(v19);
  v21 = *(v20 + 64);
  sub_100003EF8();
  __chkstk_darwin(v22);
  sub_100003F50();
  sub_100004064();
  sub_100003F10();
  sub_1000037E4(v23, v24, v25, v26);
  sub_10000379C(&qword_10000C0D8, &qword_100004910);
  v27 = sub_100004194();
  sub_100003F60(v27);
  v29 = *(v28 + 72);
  v31 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  *(swift_allocObject() + 16) = xmmword_1000044B0;
  sub_100004184();
  v32 = sub_100004104();
  v33 = sub_100003E9C(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_100003EB8();
  (*(v38 + 104))(v37 - v36, enum case for InputConnectionBehavior.default(_:));
  sub_100003F70();
  return sub_1000040A4();
}

uint64_t sub_1000024AC()
{
  sub_100003F04();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_100003F30(v2);
  *v3 = v4;
  sub_100003ED8(v3);

  return sub_1000018F8();
}

uint64_t sub_100002534@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000021A8();
  *a1 = result;
  return result;
}

uint64_t sub_10000258C()
{
  v0 = sub_100004124();
  sub_1000039B8(v0, qword_10000C7A0);
  sub_100003910(v0, qword_10000C7A0);
  sub_100003F7C();
  return sub_100004114();
}

uint64_t sub_1000025E0()
{
  v0 = sub_10000379C(&qword_10000C0C0, &qword_1000048F8);
  sub_1000039B8(v0, qword_10000C7B8);
  v1 = sub_100003910(v0, qword_10000C7B8);
  sub_100003F7C();
  sub_1000040E4();
  v2 = sub_1000040F4();

  return sub_1000037E4(v1, 0, 1, v2);
}

uint64_t sub_10000266C()
{
  sub_100003F04();
  v0[18] = v1;
  v0[19] = v2;
  sub_100004204();
  v0[20] = sub_1000041F4();
  v4 = sub_1000041D4();
  v0[21] = v4;
  v0[22] = v3;

  return _swift_task_switch(sub_100002700, v4, v3);
}

uint64_t sub_100002700()
{
  v1 = [objc_opt_self() defaultWorkspace];
  v0[23] = v1;
  if (v1)
  {
    v2 = v1;
    v3 = v0[19];
    v4 = sub_1000040D4();
    sub_100003E9C(v4);
    v6 = v5;
    v8 = *(v7 + 64);
    v9 = sub_100003F94();
    sub_100004084();
    sub_1000040C4();
    (*(v6 + 8))(v9, v4);
    v10 = sub_1000041C4();
    v0[24] = v10;

    v0[2] = v0;
    v0[7] = v0 + 26;
    v0[3] = sub_100002908;
    v11 = swift_continuation_init();
    v0[17] = sub_10000379C(&qword_10000C0B0, &qword_1000048E8);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100002B30;
    v0[13] = &unk_100008558;
    v0[14] = v11;
    [v2 openApplicationWithBundleIdentifier:v10 usingConfiguration:0 completionHandler:v0 + 10];
    v1 = v0 + 2;
  }

  else
  {
    __break(1u);
  }

  return _swift_continuation_await(v1);
}

uint64_t sub_100002908()
{
  sub_100003F04();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 176);
  v5 = *(v1 + 168);
  if (v3)
  {
    v6 = sub_100002AB4;
  }

  else
  {
    v6 = sub_100002A34;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100002A34()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[20];
  v4 = v0[18];

  sub_100004074();
  sub_100003F24();

  return v5();
}

uint64_t sub_100002AB4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  v4 = v0[20];

  swift_willThrow();

  sub_100003F24();
  v6 = v0[25];

  return v5();
}

uint64_t sub_100002B30(uint64_t a1, char a2, void *a3)
{
  v5 = sub_1000038CC((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    v7 = a3;

    return sub_100002BB4(v6, v7);
  }

  else
  {
    v9 = *v5;

    return sub_100002C20(v9, a2);
  }
}

uint64_t sub_100002BB4(uint64_t a1, uint64_t a2)
{
  sub_10000379C(&qword_10000C0B8, &qword_1000048F0);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t sub_100002C40()
{
  v0 = sub_10000379C(&qword_10000C098, &qword_1000048C8);
  sub_100003EEC(v0);
  v2 = *(v1 + 64);
  sub_100003EF8();
  __chkstk_darwin(v3);
  sub_100003F40();
  v4 = sub_100004124();
  v5 = sub_100003EC8(v4);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_100003EB8();
  sub_10000379C(&qword_10000C0A0, &qword_1000048D0);
  sub_100004114();
  sub_100003F10();
  sub_1000037E4(v8, v9, v10, v4);
  v11 = sub_10000379C(&qword_10000C0A8, &qword_1000048D8);
  sub_100003EEC(v11);
  v13 = *(v12 + 64);
  sub_100003EF8();
  __chkstk_darwin(v14);
  sub_100003FAC();
  sub_100004064();
  sub_100003F10();
  sub_1000037E4(v15, v16, v17, v18);
  v19 = sub_100004104();
  v20 = sub_100003E9C(v19);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  sub_100003EB8();
  (*(v25 + 104))(v24 - v23, enum case for InputConnectionBehavior.default(_:));
  sub_100003F70();
  return sub_100004094();
}

uint64_t sub_100002E40(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100003FC0(a1, a2, a3);
  if (!v5)
  {
    swift_once();
  }

  v6 = sub_100004124();
  v7 = sub_100003910(v6, v4);
  v8 = *(*(v6 - 8) + 16);

  return v8(v3, v7, v6);
}

uint64_t sub_100002F74(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100003FC0(a1, a2, a3);
  if (!v5)
  {
    swift_once();
  }

  v6 = sub_10000379C(&qword_10000C0C0, &qword_1000048F8);
  v7 = sub_100003910(v6, v4);

  return sub_100003948(v7, v3);
}

uint64_t sub_100002FD8()
{
  sub_100003F04();
  v1 = *v0;
  v2 = swift_task_alloc();
  v3 = sub_100003F30(v2);
  *v3 = v4;
  sub_100003ED8(v3);

  return sub_10000266C();
}

uint64_t sub_100003060()
{
  sub_100003F04();
  v1 = *(*v0 + 16);
  v4 = *v0;

  sub_100003F24();

  return v2();
}

uint64_t sub_10000314C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100002C40();
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100003200();
  sub_100004174();
  return 0;
}

unint64_t sub_100003200()
{
  result = qword_10000C030;
  if (!qword_10000C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C030);
  }

  return result;
}

unint64_t sub_100003278()
{
  result = qword_10000C038;
  if (!qword_10000C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C038);
  }

  return result;
}

unint64_t sub_1000032D0()
{
  result = qword_10000C040;
  if (!qword_10000C040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C040);
  }

  return result;
}

unint64_t sub_100003328()
{
  result = qword_10000C048;
  if (!qword_10000C048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C048);
  }

  return result;
}

unint64_t sub_1000033B4()
{
  result = qword_10000C050;
  if (!qword_10000C050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C050);
  }

  return result;
}

unint64_t sub_10000340C()
{
  result = qword_10000C058;
  if (!qword_10000C058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C058);
  }

  return result;
}

unint64_t sub_100003464()
{
  result = qword_10000C060;
  if (!qword_10000C060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C060);
  }

  return result;
}

unint64_t sub_1000034F0()
{
  result = qword_10000C068;
  if (!qword_10000C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C068);
  }

  return result;
}

unint64_t sub_100003548()
{
  result = qword_10000C070;
  if (!qword_10000C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C070);
  }

  return result;
}

unint64_t sub_1000035A0()
{
  result = qword_10000C078;
  if (!qword_10000C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C078);
  }

  return result;
}

unint64_t sub_100003674()
{
  result = qword_10000C080;
  if (!qword_10000C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C080);
  }

  return result;
}

unint64_t sub_1000036FC()
{
  result = qword_10000C088;
  if (!qword_10000C088)
  {
    sub_100003754(&qword_10000C090, &qword_1000048C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C088);
  }

  return result;
}

uint64_t sub_100003754(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000379C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_10000381C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100003880(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_1000038CC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_100003910(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100003948(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000379C(&qword_10000C0C0, &qword_1000048F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t *sub_1000039B8(uint64_t a1, uint64_t *a2)
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

uint64_t sub_100003A44(uint64_t a1)
{
  v2 = sub_10000379C(&qword_10000C0E0, &qword_100004920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100003AAC()
{
  result = qword_10000C0E8;
  if (!qword_10000C0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10000C0E8);
  }

  return result;
}

id sub_100003B00(uint64_t a1, uint64_t a2, void *a3)
{
  isa = sub_1000041A4().super.isa;

  v6 = [a3 openSensitiveURL:a1 withOptions:isa];

  return v6;
}

id sub_100003B84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  isa = sub_1000041A4().super.isa;

  v8 = [a4 operationToOpenResource:a1 usingApplication:a2 userInfo:isa];

  return v8;
}

uint64_t sub_100003C28()
{
  v1 = sub_10000379C(&qword_10000C0F0, &qword_100004928);
  sub_100003EC8(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100003CB4()
{
  v1 = *(sub_10000379C(&qword_10000C0F0, &qword_100004928) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1000041E4();
}

uint64_t sub_100003D20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100003D38(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100003D5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003DB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100003E08(void *result, int a2)
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

void type metadata accessor for CFError()
{
  if (!qword_10000C100)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_10000C100);
    }
  }
}

uint64_t sub_100003F24()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_100003F94()
{

  return swift_task_alloc();
}