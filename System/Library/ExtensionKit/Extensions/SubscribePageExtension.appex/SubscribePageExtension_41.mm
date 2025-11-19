__n128 sub_1004A6854(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1004A6870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1004A68B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004A6918()
{
  sub_10000C724(&qword_100939C40);
  sub_10002DDC8(&qword_100939C60, &qword_100939C40);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_1004A69B4()
{
  result = qword_100939D20;
  if (!qword_100939D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D20);
  }

  return result;
}

unint64_t sub_1004A6A10()
{
  result = qword_100939D28;
  if (!qword_100939D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D28);
  }

  return result;
}

uint64_t sub_1004A6A80(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004A65FC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1004A6AC4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1004A660C(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1004A6B08(char *a1, uint64_t a2)
{
  v32 = a2;
  v31 = sub_1007524B4();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v28 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_100939D50);
  __chkstk_darwin(v4 - 8);
  v6 = &v26 - v5;
  v7 = sub_100752384();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752E54();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v26 - v16;
  v33 = a1;
  sub_100752394();
  sub_100752364();
  v18 = *(v8 + 8);
  v30 = v7;
  v18(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_10000C8CC(v6, &qword_100939D50);
    v19 = sub_100752E64();
    sub_1004A6384(&qword_100939C38, &type metadata accessor for JSONError);
    swift_allocError();
    *v20 = 0x6573614374736574;
    v20[1] = 0xE900000000000073;
    v20[2] = &type metadata for LocalizationTestResponse;
    (*(*(v19 - 8) + 104))(v20, enum case for JSONError.missingProperty(_:), v19);
    swift_willThrow();
    (*(v29 + 8))(v32, v31);
    v18(v33, v30);
  }

  else
  {
    (*(v12 + 32))(v17, v6, v11);
    v21 = *(v12 + 16);
    v27 = v18;
    v21(v14, v17, v11);
    v22 = v29;
    v24 = v31;
    v23 = v32;
    (*(v29 + 16))(v28, v32, v31);
    sub_1004A6FA0();
    v19 = sub_100753364();
    (*(v22 + 8))(v23, v24);
    v27(v33, v30);
    (*(v12 + 8))(v17, v11);
  }

  return v19;
}

unint64_t sub_1004A6FA0()
{
  result = qword_100939D58;
  if (!qword_100939D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D58);
  }

  return result;
}

unint64_t sub_1004A7074()
{
  result = qword_100935470;
  if (!qword_100935470)
  {
    sub_10074E0D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100935470);
  }

  return result;
}

void sub_1004A70CC(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v3 = 0;
    v12 = v1 & 0xC000000000000001;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v12)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_12;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v8 = [v5 items];
      sub_100016C60(0, &qword_100939BC0);
      v9 = v1;
      v10 = sub_1007532A4();

      v11 = v10;
      v1 = v9;
      sub_1004A0400(v11);

      ++v3;
      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1004A7204(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_100752404();
  __chkstk_darwin(v10 - 8);
  if (a1)
  {
    v39 = a6;
    v40 = a4;
    v11 = swift_allocObject();
    *(v11 + 16) = _swiftEmptyArrayStorage;
    v12 = (v11 + 16);
    v41 = a1;
    v13 = sub_10074E0C4();
    if (v13)
    {
      v14 = v13;
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v15 = sub_100752E44();
      sub_10000D0FC(v15, qword_100983318);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523F4();
      v48._countAndFlagsBits = 0xD00000000000004DLL;
      v48._object = 0x800000010077F2F0;
      sub_1007523E4(v48);
      v45 = sub_10000C518(&unk_100928A70);
      aBlock = v14;

      sub_1007523C4();
      sub_1000277BC(&aBlock);
      v49._countAndFlagsBits = 0;
      v49._object = 0xE000000000000000;
      sub_1007523E4(v49);
      sub_100752414();
      sub_100752CE4();

      v16 = [v41 sections];
      sub_100016C60(0, &qword_100939D88);
      v17 = sub_1007532A4();

      sub_1004A8200(v17, v12, v14);

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (qword_100921EE0 != -1)
      {
        swift_once();
      }

      v18 = sub_100752E44();
      sub_10000D0FC(v18, qword_100983318);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();

      v19 = [v41 sections];
      sub_100016C60(0, &qword_100939D88);
      v20 = sub_1007532A4();

      sub_1004A70CC(v20);
    }

    v21 = *v12;
    if (*v12 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {

      if (!i)
      {
        break;
      }

      v23 = 0;
      while (1)
      {
        if ((v21 & 0xC000000000000001) != 0)
        {
          v24 = sub_100754574();
        }

        else
        {
          if (v23 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v24 = *(v21 + 8 * v23 + 32);
        }

        v25 = v24;
        v26 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        [v24 setEnabled:1];

        ++v23;
        if (v26 == i)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_22:

    v27 = sub_100744AB4();
    v28 = objc_allocWithZone(AMSNotificationSettingsTask);
    v29 = sub_100753064();
    v30 = [v28 initWithIdentifier:v29 account:v40 bag:v27];

    swift_unknownObjectRelease();
    sub_100016C60(0, &qword_100939BC0);

    isa = sub_100753294().super.isa;

    v32 = [v30 updateSettings:isa];

    if (v32)
    {
      v33 = swift_allocObject();
      *(v33 + 16) = v11;
      *(v33 + 24) = v39;
      v46 = sub_1004A89B4;
      v47 = v33;
      aBlock = _NSConcreteStackBlock;
      v43 = 1107296256;
      v44 = sub_1005171C8;
      v45 = &unk_100877A10;
      v34 = _Block_copy(&aBlock);

      [v32 addFinishBlock:v34];

      _Block_release(v34);
    }

    else
    {
    }
  }

  else
  {
    if (!a2)
    {
      sub_1004A8874();
      swift_allocError();
      *v35 = 1;
    }

    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v36 = sub_100752E44();
    sub_10000D0FC(v36, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v50._countAndFlagsBits = 0xD000000000000030;
    v50._object = 0x800000010077F260;
    sub_1007523E4(v50);
    swift_getErrorValue();
    v37 = sub_1007547C4();
    v45 = &type metadata for String;
    aBlock = v37;
    v43 = v38;
    sub_1007523C4();
    sub_1000277BC(&aBlock);
    v51._countAndFlagsBits = 0;
    v51._object = 0xE000000000000000;
    sub_1007523E4(v51);
    sub_100752414();
    sub_100752CE4();

    sub_100752DA4();
  }
}

uint64_t sub_1004A7A90(id *a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v4 = [*a1 items];
  sub_100016C60(0, &qword_100939BC0);
  v5 = sub_1007532A4();

  v23 = _swiftEmptyArrayStorage;
  if (v5 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v17[5] = a2;
    v18 = i;
    v7 = 0;
    v19 = v5 & 0xFFFFFFFFFFFFFF8;
    v20 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *(v19 + 16))
        {
          goto LABEL_15;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v11 = [v8 identifier];
      v12 = sub_100753094();
      a2 = v13;

      v22[0] = v12;
      v22[1] = a2;
      __chkstk_darwin(v14);
      v17[2] = v22;
      LOBYTE(v11) = sub_100073B4C(sub_1004A89BC, v17, v21);

      if (v11)
      {
        sub_1007545A4();
        a2 = v23[2];
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
      }

      else
      {
      }

      ++v7;
      if (v10 == v18)
      {
        v15 = v23;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v15 = _swiftEmptyArrayStorage;
LABEL_18:

  return sub_1004A0400(v15);
}

uint64_t sub_1004A7CC0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100752624();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0) + 48;
  v12 = sub_100752404();
  __chkstk_darwin(v12 - 8);
  if (a1)
  {
    v21 = a4;
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v13 = sub_100752E44();
    sub_10000D0FC(v13, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v24._countAndFlagsBits = 0xD000000000000037;
    v24._object = 0x800000010077F370;
    sub_1007523E4(v24);
    swift_beginAccess();
    v14 = *(a3 + 16);
    v23 = sub_10000C518(&qword_100939BC8);
    v22[0] = v14;

    sub_1007523C4();
    sub_1000277BC(v22);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_1007523E4(v25);
    sub_100752414();
    sub_100752CE4();

    (*(v9 + 104))(v11, enum case for ActionOutcome.performed(_:), v8);
    sub_100752DB4();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    if (!a2)
    {
      sub_1004A8874();
      swift_allocError();
      *v16 = 2;
    }

    swift_errorRetain();
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v17 = sub_100752E44();
    sub_10000D0FC(v17, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v26._object = 0x800000010077F340;
    v26._countAndFlagsBits = 0xD00000000000002DLL;
    sub_1007523E4(v26);
    swift_beginAccess();
    v18 = *(a3 + 16);
    v23 = sub_10000C518(&qword_100939BC8);
    v22[0] = v18;

    sub_1007523C4();
    sub_1000277BC(v22);
    v27._countAndFlagsBits = 0x3A726F727245202ELL;
    v27._object = 0xE900000000000020;
    sub_1007523E4(v27);
    swift_getErrorValue();
    v19 = sub_1007547C4();
    v23 = &type metadata for String;
    v22[0] = v19;
    v22[1] = v20;
    sub_1007523C4();
    sub_1000277BC(v22);
    v28._countAndFlagsBits = 0;
    v28._object = 0xE000000000000000;
    sub_1007523E4(v28);
    sub_100752414();
    sub_100752CE4();

    sub_100752DA4();
  }
}

void sub_1004A8200(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      sub_1004A7A90(&v12, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
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

uint64_t sub_1004A8300(uint64_t a1)
{
  v2 = sub_100752404();
  __chkstk_darwin(v2 - 8);
  sub_10000C518(&qword_100930CA0);
  v3 = sub_100752DE4();
  sub_100016C60(0, &qword_100939F50);
  sub_100752764();
  sub_100752D34();
  v4 = [aBlock[0] ams_activeiTunesAccount];

  if (v4)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v5 = sub_100752E44();
    sub_10000D0FC(v5, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523F4();
    v24._countAndFlagsBits = 0xD00000000000002DLL;
    v24._object = 0x800000010077F1F0;
    sub_1007523E4(v24);
    v21 = sub_100016C60(0, &qword_100939D80);
    aBlock[0] = v4;
    v6 = v4;
    sub_1007523C4();
    sub_1000277BC(aBlock);
    v25._countAndFlagsBits = 0;
    v25._object = 0xE000000000000000;
    sub_1007523E4(v25);
    sub_100752414();
    sub_100752CE4();

    sub_100744AC4();
    sub_100752D34();
    v7 = aBlock[0];
    v8 = v6;
    v9 = sub_100744AB4();
    v10 = objc_allocWithZone(AMSNotificationSettingsTask);
    v11 = sub_100753064();
    v12 = [v10 initWithIdentifier:v11 account:v8 bag:v9];

    swift_unknownObjectRelease();
    v13 = [v12 fetchAllSettings];
    v14 = swift_allocObject();
    v14[2] = a1;
    v14[3] = v8;
    v14[4] = v7;
    v14[5] = v3;
    v22 = sub_1004A8918;
    v23 = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000E7BD4;
    v21 = &unk_100877998;
    v15 = _Block_copy(aBlock);
    v16 = v8;

    [v13 addFinishBlock:v15];
    _Block_release(v15);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v17 = sub_100752E44();
    sub_10000D0FC(v17, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752CE4();

    sub_1004A8874();
    swift_allocError();
    *v18 = 0;
    sub_100752DA4();
  }

  return v3;
}

unint64_t sub_1004A8874()
{
  result = qword_100939D78;
  if (!qword_100939D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D78);
  }

  return result;
}

uint64_t sub_1004A88C8()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004A8924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004A893C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004A8974()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1004A89F0()
{
  result = qword_100939D90;
  if (!qword_100939D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939D90);
  }

  return result;
}

char *sub_1004A8A4C(char *a1, __int128 *a2, double a3, double a4)
{
  v5 = v4;
  swift_getObjectType();
  v10 = a2[5];
  v63 = a2[4];
  v64 = v10;
  v11 = a2[7];
  v65 = a2[6];
  v66 = v11;
  v12 = a2[1];
  v59 = *a2;
  v60 = v12;
  v13 = a2[3];
  v61 = a2[2];
  v62 = v13;
  swift_unknownObjectWeakInit();
  v14 = OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer;
  *&v5[v14] = [objc_allocWithZone(AVPlayerLayer) init];
  swift_unknownObjectWeakAssign();
  v49 = a1;
  if (a1)
  {
    a1 = *&a1[qword_10093CB50];
  }

  swift_unknownObjectWeakInit();
  v15 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  *&v5[v15] = [objc_allocWithZone(CALayer) init];
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext] = 0;
  v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageObserversAdded] = 0;
  swift_unknownObjectWeakAssign();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsScaleFactor] = a3;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_contentsVerticalOffset] = a4;
  v58.receiver = v5;
  v58.super_class = type metadata accessor for MirrorView();
  v16 = objc_msgSendSuper2(&v58, "initWithFrame:", 0.0, 0.0, 0.0, 0.0);
  [v16 setClipsToBounds:1];
  [v16 setUserInteractionEnabled:0];
  v17 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer;
  [*&v16[OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_artworkLayer] setContentsGravity:kCAGravityResizeAspectFill];
  LODWORD(v18) = 1.0;
  [*&v16[v17] setOpacity:v18];
  [*&v16[v17] setAnchorPoint:{0.5, 0.5}];
  v19 = qword_100920648;
  v20 = *&v16[v17];
  if (v19 != -1)
  {
    swift_once();
  }

  sub_10000C518(&qword_100939AA0);
  isa = sub_100752F34().super.isa;
  [v20 setActions:isa];

  v22 = *&v16[v17];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 mainScreen];
  [v25 scale];
  v27 = v26;

  [v24 setContentsScale:v27];
  [*&v16[v17] setMasksToBounds:1];
  v28 = *&v16[v17];
  v29 = a2[5];
  v54 = a2[4];
  v55 = v29;
  v30 = a2[7];
  v56 = a2[6];
  v57 = v30;
  v31 = a2[1];
  v50 = *a2;
  v51 = v31;
  v32 = a2[3];
  v52 = a2[2];
  v53 = v32;
  [v28 setTransform:&v50];
  sub_10022A458();
  v33 = [v16 layer];

  [v33 addSublayer:*&v16[v17]];
  v34 = v16;
  [v34 setClipsToBounds:1];
  [v34 setUserInteractionEnabled:0];
  v35 = OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer;
  [*&v34[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer] setAnchorPoint:{0.5, 0.5}];
  v36 = *&v34[v35];
  v37 = sub_100752F34().super.isa;
  [v36 setActions:v37];

  v38 = *&v34[v35];
  v39 = [v23 mainScreen];
  [v39 scale];
  v41 = v40;

  [v38 setContentsScale:v41];
  [*&v34[v35] setMasksToBounds:1];
  [*&v34[v35] setContentsGravity:kCAGravityResizeAspectFill];
  v42 = *&v34[v35];
  v54 = v63;
  v55 = v64;
  v56 = v65;
  v57 = v66;
  v50 = v59;
  v51 = v60;
  v52 = v61;
  v53 = v62;
  [v42 setTransform:&v50];
  sub_1004A9648();
  v43 = [v34 layer];
  v44 = *&v16[v17];
  v45 = *&v34[v35];
  v46 = v44;

  [v43 insertSublayer:v45 below:v46];
  sub_10000C518(&unk_1009249D0);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1007A5A00;
  *(v47 + 32) = sub_100751574();
  *(v47 + 40) = &protocol witness table for _UITraitHDRHeadroomUsage;
  sub_100753D44();

  swift_unknownObjectRelease();

  return v34;
}

void sub_1004A901C(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      swift_unknownObjectRelease();
      if (v5 == v1)
      {
        v6 = swift_unknownObjectWeakLoadStrong();
        if (v6)
        {
          v7 = v6;

          if (v7 == a1)
          {
            return;
          }
        }

        else if (!a1)
        {
          return;
        }

        v8 = swift_unknownObjectWeakLoadStrong();
        if (v8)
        {
          v9 = v8;
          sub_100517240(0, 0);
        }
      }
    }
  }
}

double sub_1004A92F4(double a1)
{
  v2 = sub_100747D94();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1007504F4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v24 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v24 - v13;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = qword_100982288;
    v17 = Strong;
    swift_beginAccess();
    (*(v3 + 16))(v5, &v17[v16], v2);

    sub_100747CE4();
    (*(v3 + 8))(v5, v2);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      (*(v10 + 32))(v14, v8, v9);
      sub_100750464();
      a1 = v18;
LABEL_8:
      (*(v10 + 8))(v14, v9);
      return a1;
    }
  }

  else
  {
    (*(v10 + 56))(v8, 1, 1, v9);
  }

  sub_1000A5080(v8);
  v19 = swift_unknownObjectWeakLoadStrong();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 image];

    if (v21)
    {
      [v21 size];
      v14 = v24;
      sub_100750504();
      sub_100750464();
      a1 = v22;

      goto LABEL_8;
    }
  }

  return a1;
}

void sub_1004A9648()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + qword_10093CB50);
  }

  else
  {
    v4 = 0;
  }

  v5 = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    if (!v5)
    {

      goto LABEL_11;
    }

    sub_1001A28CC();
    v8 = v5;
    v9 = sub_100753FC4();

    if (v9)
    {

      goto LABEL_12;
    }

LABEL_9:
    v10 = sub_100753064();
    v11 = OBJC_IVAR____TtC22SubscribePageExtension10MirrorView_imageKVOContext;
    swift_beginAccess();
    [v5 removeObserver:v1 forKeyPath:v10 context:v1 + v11];
    swift_endAccess();

LABEL_11:
    sub_10022A458();

    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_12:
  v12 = swift_unknownObjectWeakLoadStrong();
  if (v12)
  {
    v13 = v12;
    v14 = swift_unknownObjectRetain();
    sub_100517240(v14, &off_100877AC8);
  }

  v15 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
  v16 = swift_unknownObjectWeakLoadStrong();
  if (v16 && (v17 = v16, v18 = [v16 backgroundColor], v17, v18))
  {
    v19 = [v18 CGColor];
  }

  else
  {
    v19 = 0;
  }

  [v15 setBackgroundColor:v19];

  v20 = swift_unknownObjectWeakLoadStrong();
  if (v20)
  {
    v21 = v20;
    v22 = *(v20 + qword_10093CB70);
  }

  else
  {
    v22 = 0;
  }

  [v15 setPlayer:v22];

  v23 = swift_unknownObjectWeakLoadStrong();
  if (v23 && (v24 = *(v23 + qword_10093CB78), v25 = v23, v26 = v24, v25, v24))
  {
    v27 = [v26 videoGravity];
  }

  else
  {
    v27 = AVLayerVideoGravityResizeAspectFill;
  }

  [v15 setVideoGravity:v27];
}

void sub_1004A9924()
{
  swift_unknownObjectWeakDestroy();
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer);
}

id sub_1004A9964()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VideoMirrorView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004A9A08(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC22SubscribePageExtension15VideoMirrorView_videoLayer];
  v2 = [a1 traitCollection];
  v3 = [v2 _headroomUsage];

  v4 = &CADynamicRangeHigh;
  if (v3 != 1)
  {
    v4 = &CADynamicRangeConstrainedHigh;
  }

  v5 = *v4;
  [v1 setPreferredDynamicRange:v5];
}

uint64_t sub_1004A9AB8()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100939DD0);
  sub_10000D0FC(v4, qword_100939DD0);
  if (qword_100921410 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_100981968);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004A9C8C()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100939DE8);
  sub_10000D0FC(v0, qword_100939DE8);
  return sub_100750504();
}

char *sub_1004A9CE0(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_itemLayoutContext;
  v11 = sub_1007469A4();
  (*(*(v11 - 8) + 56))(&v4[v10], 1, 1, v11);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView;
  *&v4[v12] = [objc_allocWithZone(type metadata accessor for AppShowcaseLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  v14 = enum case for AppShowcaseType.large(_:);
  v15 = sub_100742384();
  (*(*(v15 - 8) + 104))(&v4[v13], v14, v15);
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  v17 = [v16 contentView];
  [v17 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v18 = [v16 contentView];
  [v18 addSubview:*&v16[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView]];

  return v16;
}

void sub_1004AA034(void *a1)
{
  sub_1004AC7F0();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];

    [v1 setNeedsLayout];
  }
}

void (*sub_1004AA0E4(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004AA138;
}

void sub_1004AA138(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v3 = *a1;
    sub_1004AC7F0();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [v2 contentView];
      [v6 addSubview:v5];

      [v2 setNeedsLayout];
    }

    v9 = v3;
  }

  else
  {
    v9 = *a1;
    sub_1004AC7F0();
    swift_unknownObjectWeakAssign();
    v7 = swift_unknownObjectWeakLoadStrong();
    if (!v7)
    {
      goto LABEL_8;
    }

    v3 = v7;
    v8 = [v2 contentView];
    [v8 addSubview:v3];

    [v2 setNeedsLayout];
  }

LABEL_8:
}

uint64_t sub_1004AA260()
{
  v0 = sub_100747D94();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1007504F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v8 + 56))(v6, 1, 1, v7);
    goto LABEL_5;
  }

  v12 = qword_100982288;
  v13 = Strong;
  swift_beginAccess();
  (*(v1 + 16))(v3, &v13[v12], v0);

  sub_100747CE4();
  (*(v1 + 8))(v3, v0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
LABEL_5:
    sub_10000C8CC(v6, &unk_1009281D0);
    v14 = 0;
    return v14 & 1;
  }

  (*(v8 + 32))(v10, v6, v7);
  v14 = sub_100750454();
  (*(v8 + 8))(v10, v7);
  return v14 & 1;
}

void sub_1004AA510()
{
  v1 = v0;
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, "prepareForReuse");
  v2 = *(*&v0[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  v10.value.super.isa = 0;
  v10.is_nil = 0;
  sub_100743384(v10, v3);

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setHidden:1];
  }

  [v1 setNeedsLayout];
  sub_1004AC7F0();
  swift_unknownObjectWeakAssign();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = [v1 contentView];
    [v8 addSubview:v7];

    [v1 setNeedsLayout];
  }
}

void sub_1004AA678()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v113 = sub_100754724();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v111 = &v111 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_100747D94();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = &v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_1009281D0);
  __chkstk_darwin(v5 - 8);
  v126 = &v111 - v6;
  v128 = sub_1007504F4();
  v127 = *(v128 - 8);
  __chkstk_darwin(v128);
  v117 = &v111 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100742384();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v115 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v114 = &v111 - v12;
  __chkstk_darwin(v13);
  v125 = &v111 - v14;
  __chkstk_darwin(v15);
  v124 = &v111 - v16;
  __chkstk_darwin(v17);
  *&v133 = &v111 - v18;
  __chkstk_darwin(v19);
  v116 = &v111 - v20;
  __chkstk_darwin(v21);
  *&v121 = &v111 - v22;
  __chkstk_darwin(v23);
  v131 = &v111 - v24;
  __chkstk_darwin(v25);
  v27 = &v111 - v26;
  __chkstk_darwin(v28);
  v30 = &v111 - v29;
  *&v32 = __chkstk_darwin(v31).n128_u64[0];
  v34 = &v111 - v33;
  v142.receiver = v1;
  v142.super_class = ObjectType;
  objc_msgSendSuper2(&v142, "layoutSubviews", v32);
  v35 = [v1 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v44 = OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_showcaseType;
  swift_beginAccess();
  v45 = v9[2];
  v135 = v44;
  v132 = *&v1;
  v136 = v45;
  v137 = v9 + 2;
  v45(v34, &v1[v44], v8);
  v46 = v9;
  v47 = v9[13];
  v134 = enum case for AppShowcaseType.large(_:);
  v47(v30);
  sub_1004AD33C(&qword_100930460, &type metadata accessor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v138 == v140 && v139 == v141)
  {
    v48 = 1;
  }

  else
  {
    v48 = sub_100754754();
  }

  v49 = v9[1];
  v49(v30, v8);
  v130 = v9 + 1;
  v129 = v49;
  v49(v34, v8);

  if (v48)
  {
    v50 = v132;
    v123 = sub_1004AA260();
  }

  else
  {
    v123 = 0;
    v50 = v132;
  }

  v51 = v131;
  v136(v27, *&v50 + v135, v8);
  sub_1004AA260();
  v52 = v46;
  v53 = v46[4];
  v53(v51, v27, v8);
  v54 = v52[11];
  v131 = (v52 + 11);
  v55 = v54(v51, v8);
  v122 = v53;
  if (v55 == v134 || v55 == enum case for AppShowcaseType.small(_:))
  {
    v56 = v132;
  }

  else
  {
    v56 = v132;
    if (v55 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(v51, v8);
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  Width = 0.0;
  v59 = &stru_1008F2000;
  if (!Strong)
  {
    goto LABEL_26;
  }

  v60 = Strong;
  v61 = [Strong isHidden];

  v62 = v135;
  if (v61)
  {
    goto LABEL_27;
  }

  v63 = v121;
  v64 = v136;
  v136(*&v121, *&v56 + v135, v8);
  v65 = sub_1004AA260();
  v143.origin.x = v37;
  v143.origin.y = v39;
  v143.size.width = v41;
  v143.size.height = v43;
  Width = CGRectGetWidth(v143);
  v66 = v116;
  v64(v116, *&v63, v8);
  v67 = v54(v66, v8);
  if (v67 != v134)
  {
    if (v67 != enum case for AppShowcaseType.small(_:) && v67 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      v129(*&v121, v8);
      Width = 0.0;
      v121 = *&v116;
      v59 = &stru_1008F2000;
      goto LABEL_25;
    }

    v59 = &stru_1008F2000;
    if (qword_100920D40 == -1)
    {
LABEL_24:
      sub_10000D0FC(v128, qword_100939DE8);
      sub_1007504B4();
      Width = v68;
      goto LABEL_25;
    }

LABEL_69:
    swift_once();
    goto LABEL_24;
  }

  if ((v65 & 1) == 0)
  {
    v59 = &stru_1008F2000;
    if (qword_100920D40 == -1)
    {
      goto LABEL_24;
    }

    goto LABEL_69;
  }

  v59 = &stru_1008F2000;
LABEL_25:
  v129(*&v121, v8);
LABEL_26:
  v62 = v135;
LABEL_27:
  v136(*&v133, *&v56 + v62, v8);
  v69 = swift_unknownObjectWeakLoadStrong();
  v121 = Width;
  if (v69)
  {
    v70 = v69;
    v71 = [v69 v59[74].name];
  }

  else
  {
    v71 = 1;
  }

  v72 = v122;
  v73 = sub_1004AA260();
  v144.origin.x = v37;
  v144.origin.y = v39;
  v144.size.width = v41;
  v144.size.height = v43;
  CGRectGetWidth(v144);
  v132 = v37;
  v74 = v134;
  if (v71 || (v73 & 1) != 0)
  {
    v129(*&v133, v8);
    v75 = v125;
    goto LABEL_46;
  }

  v76 = v114;
  v136(v114, *&v133, v8);
  v77 = v54(v76, v8);
  v75 = v125;
  if (v77 == v74)
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_40;
    }

    goto LABEL_70;
  }

  if (v77 != enum case for AppShowcaseType.small(_:) && v77 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    v129(v76, v8);
    goto LABEL_41;
  }

  if (qword_100920D40 != -1)
  {
LABEL_70:
    swift_once();
  }

LABEL_40:
  sub_10000D0FC(v128, qword_100939DE8);
  sub_1007504B4();
LABEL_41:
  v78 = v115;
  v72(v115, *&v133, v8);
  v79 = v54(v78, v8);
  if (v79 != v74 && v79 != enum case for AppShowcaseType.small(_:) && v79 != enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    (v129)(v78, v8, 25.0, 25.0);
  }

  v37 = v132;
LABEL_46:
  v80 = *(*&v56 + OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView);
  v145.origin.x = v37;
  v145.origin.y = v39;
  v145.size.width = v41;
  v145.size.height = v43;
  CGRectGetHeight(v145);
  v81 = sub_1002A8BD4();
  v83 = v82;
  v146.origin.x = v37;
  v146.origin.y = v39;
  v133 = v41;
  v146.size.width = v41;
  v146.size.height = v43;
  MinX = CGRectGetMinX(v146);
  v85 = v124;
  v136(v124, *&v56 + v135, v8);
  v72(v75, v85, v8);
  v86 = v54(v75, v8);
  v87 = 0.0;
  v88 = v43;
  v89 = v39;
  if (v86 == v74)
  {
    v90 = v128;
    v91 = v127;
    v92 = v123;
  }

  else
  {
    v87 = 30.0;
    v90 = v128;
    v91 = v127;
    v92 = v123;
    if (v86 != enum case for AppShowcaseType.small(_:))
    {
      v87 = 25.0;
      if (v86 != enum case for AppShowcaseType.smallAlignedLeft(_:))
      {
        (v129)(v75, v8, 25.0);
        v87 = 0.0;
      }
    }
  }

  v93 = MinX + v87;
  v94 = 20.0;
  if ((v92 & 1) == 0)
  {
    v147.origin.x = v132;
    v147.origin.y = v89;
    v147.size.width = v133;
    v147.size.height = v88;
    v94 = CGRectGetMidY(v147) + v83 * -0.5;
  }

  sub_100753B24();
  [v80 setFrame:?];
  v95 = swift_unknownObjectWeakLoadStrong();
  if (!v95)
  {
    v102 = v126;
    (*(v91 + 56))(v126, 1, 1, v90);
    goto LABEL_59;
  }

  v96 = qword_100982288;
  v97 = v95;
  swift_beginAccess();
  v98 = v119;
  v99 = &v97[v96];
  v100 = v118;
  v101 = v120;
  (*(v119 + 16))(v118, v99, v120);

  v102 = v126;
  sub_100747CE4();
  (*(v98 + 8))(v100, v101);
  if ((*(v91 + 48))(v102, 1, v90) == 1)
  {
LABEL_59:
    sub_10000C8CC(v102, &unk_1009281D0);
    goto LABEL_60;
  }

  v103 = v117;
  (*(v91 + 32))(v117, v102, v90);
  v104 = swift_unknownObjectWeakLoadStrong();
  if (v104 && (v105 = v104, v106 = [v104 isHidden], v105, v103 = v117, (v106 & 1) == 0))
  {
    sub_1007504C4();
    if (v92)
    {
      v148.origin.x = v132;
      v148.origin.y = v89;
      v148.size.width = v133;
      v148.size.height = v88;
      CGRectGetMinX(v148);
      v149.origin.x = v93;
      v149.origin.y = v94;
      v149.size.width = v81;
      v149.size.height = v83;
      CGRectGetMaxY(v149);
      if (qword_100920D38 != -1)
      {
        swift_once();
      }

      v109 = sub_100750B04();
      sub_10000D0FC(v109, qword_100939DD0);
      v110 = v111;
      sub_1007502D4();
      sub_100750564();
      (*(v112 + 8))(v110, v113);
      (*(v91 + 8))(v117, v90);
    }

    else
    {
      v150.origin.x = v93;
      v150.origin.y = v94;
      v150.size.width = v81;
      v150.size.height = v83;
      CGRectGetMaxX(v150);
      v151.origin.x = v132;
      v151.origin.y = v89;
      v151.size.width = v133;
      v151.size.height = v88;
      CGRectGetHeight(v151);
      (*(v91 + 8))(v103, v90);
    }
  }

  else
  {
    (*(v91 + 8))(v103, v90);
  }

LABEL_60:
  v107 = swift_unknownObjectWeakLoadStrong();
  if (v107)
  {
    v108 = v107;
    sub_100753B24();
    [v108 setFrame:?];
  }
}

uint64_t type metadata accessor for AppShowcaseCollectionViewCell()
{
  result = qword_100939E28;
  if (!qword_100939E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004AB918()
{
  sub_100016898();
  if (v0 <= 0x3F)
  {
    sub_100742384();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t (*sub_1004ABA1C(uint64_t **a1))()
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
  v2[4] = sub_1004AA0E4(v2);
  return sub_1000181A8;
}

uint64_t sub_1004ABA8C()
{
  ObjectType = swift_getObjectType();
  v1 = sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.getter(ObjectType, v1);
}

uint64_t sub_1004ABB00(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell);

  return VideoViewProviding.someVideoView.setter(a1, a2, ObjectType, v5);
}

uint64_t (*sub_1004ABB8C(uint64_t *a1))()
{
  swift_getObjectType();
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  sub_1004AD33C(&qword_100939E48, type metadata accessor for AppShowcaseCollectionViewCell);
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004ABD20(uint64_t a1, void *a2)
{
  v72 = a2;
  v63 = sub_100754724();
  v67 = *(v63 - 8);
  __chkstk_darwin(v63);
  v65 = &v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100742384();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v66 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v64 = &v58 - v8;
  __chkstk_darwin(v9);
  v60 = &v58 - v10;
  __chkstk_darwin(v11);
  v62 = &v58 - v12;
  __chkstk_darwin(v13);
  v71 = &v58 - v14;
  __chkstk_darwin(v15);
  v61 = &v58 - v16;
  __chkstk_darwin(v17);
  v74 = &v58 - v18;
  __chkstk_darwin(v19);
  v73 = &v58 - v20;
  __chkstk_darwin(v21);
  v23 = &v58 - v22;
  v24 = sub_1007504F4();
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v59 = &v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v68 = &v58 - v28;
  __chkstk_darwin(v29);
  v31 = &v58 - v30;
  v32 = sub_100742904();
  v69 = v25;
  v70 = v24;
  if (v32)
  {
    sub_10074EC14();

    sub_10074F2A4();

    sub_100750504();
    v33 = sub_100750454();
    (*(v25 + 8))(v31, v24);
  }

  else
  {
    v33 = 0;
  }

  if (!sub_100742904())
  {
    v34 = v33;
    sub_1007428F4();
    goto LABEL_8;
  }

  sub_1007428F4();
  if (v33)
  {
    v34 = v33;
LABEL_8:
    v5[1](v23, v4);
    goto LABEL_23;
  }

  v35 = v61;
  (v5[2])(v61, v23, v4);
  v36 = v5;
  v37 = v5[11];
  v38 = (v37)(v35, v4);
  v39 = enum case for AppShowcaseType.large(_:);
  if (v38 == enum case for AppShowcaseType.large(_:))
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_43;
  }

  if (v38 == enum case for AppShowcaseType.small(_:) || v38 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100920D40 == -1)
    {
LABEL_16:
      sub_10000D0FC(v70, qword_100939DE8);
      sub_1007504B4();
      goto LABEL_17;
    }

LABEL_43:
    swift_once();
    goto LABEL_16;
  }

  v36[1](v35, v4);
LABEL_17:
  v40 = v71;
  (v36[4])(v71, v23, v4);
  v41 = (v37)(v40, v4);
  if (v41 == v39)
  {
    v5 = v36;
  }

  else
  {
    v5 = v36;
    if (v41 != enum case for AppShowcaseType.small(_:) && v41 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (v36[1])(v40, v4, 25.0, 25.0);
    }
  }

  v34 = v33;
LABEL_23:
  type metadata accessor for AppShowcaseLockupView();
  sub_1002A9024(a1, v72);
  v71 = a1;
  sub_1007428F4();
  v42 = enum case for AppShowcaseType.large(_:);
  v43 = v5[13];
  (v43)(v74, enum case for AppShowcaseType.large(_:), v4);
  sub_1004AD33C(&qword_100930460, &type metadata accessor for AppShowcaseType);
  sub_100753274();
  sub_100753274();
  if (v77 != v75 || v78 != v76)
  {
    v34 &= sub_100754754();
  }

  v61 = v5;
  v44 = v5[1];
  v44(v74, v4);
  v44(v73, v4);

  if (v34)
  {
    if (qword_100920D38 != -1)
    {
      swift_once();
    }

    v45 = sub_100750B04();
    sub_10000D0FC(v45, qword_100939DD0);
    v46 = v65;
    sub_1007502D4();
    sub_100750564();
    (*(v67 + 8))(v46, v63);
    result = sub_100742904();
    v49 = v69;
    v48 = v70;
    v50 = v68;
    if (result)
    {
      sub_10074EC14();

      sub_10074F2A4();

      v51 = v59;
      sub_100750504();
      (*(v49 + 32))(v50, v51, v48);
      v52 = v62;
      sub_1007428F4();
      v53 = v61;
      v54 = v60;
      (*(v61 + 2))(v60, v52, v4);
      v55 = (*(v53 + 11))(v54, v4);
      if (v55 != v42)
      {
        if (v55 == enum case for AppShowcaseType.small(_:) || v55 == enum case for AppShowcaseType.smallAlignedLeft(_:))
        {
          if (qword_100920D40 != -1)
          {
            swift_once();
          }

          sub_10000D0FC(v48, qword_100939DE8);
          sub_1007504B4();
        }

        else
        {
          v44(v52, v4);
          v52 = v54;
        }
      }

      v44(v52, v4);
      sub_1007504C4();
      return (*(v49 + 8))(v50, v48);
    }
  }

  else
  {
    v56 = v64;
    sub_1007428F4();
    v57 = v66;
    (v43)(v66, v42, v4);
    sub_100753274();
    sub_100753274();
    if (v77 != v75 || v78 != v76)
    {
      sub_100754754();
    }

    v44(v57, v4);
    v44(v56, v4);
  }

  return result;
}

void sub_1004AC7F0()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004AD33C(&qword_1009230E0, type metadata accessor for VideoView);
    Strong = v1;
  }

  v2 = sub_10043D124(Strong);

  if (v2)
  {
    v3 = swift_unknownObjectWeakLoadStrong();
    if (v3)
    {
      v4 = v3;
      [v3 removeFromSuperview];
    }
  }
}

uint64_t sub_1004AC8C0(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v4 = sub_1007504F4();
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v52 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10074F314();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  __chkstk_darwin(v13);
  v15 = &v47 - v14;
  v55 = sub_100742384();
  v57 = *(v55 - 8);
  __chkstk_darwin(v55);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v50 = &v47 - v19;
  __chkstk_darwin(v20);
  v22 = &v47 - v21;
  __chkstk_darwin(v23);
  v25 = &v47 - v24;
  sub_10000C824(a1, v59);
  sub_10000C518(&unk_100923100);
  sub_100742924();
  result = swift_dynamicCast();
  if (!result)
  {
    return result;
  }

  v48 = v17;
  v27 = v58;
  v28 = *(*&v2[OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView] + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  Strong = swift_unknownObjectWeakLoadStrong();
  v51 = v28;
  v29 = [v2 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();

  sub_100742914();
  v30 = sub_10074EF24();

  if (v30)
  {
    v47 = v27;
    sub_1007428F4();
    v31 = v57;
    v32 = v55;
    (*(v57 + 32))(v22, v25, v55);
    v33 = (*(v31 + 88))(v22, v32);
    if (v33 != enum case for AppShowcaseType.large(_:) && v33 != enum case for AppShowcaseType.small(_:) && v33 != enum case for AppShowcaseType.smallAlignedLeft(_:))
    {
      (*(v57 + 8))(v22, v32);
    }

    sub_10074F324();
    (*(v7 + 104))(v9, enum case for Artwork.Style.roundedRect(_:), v6);
    sub_10074F2D4();
    v34 = *(v7 + 8);
    v34(v9, v6);
    v34(v12, v6);
    sub_10074F2F4();
    sub_10074F374();
    v35 = v51;
    sub_10074F324();
    sub_100743364();
    [v35 setContentMode:sub_10074F184()];
    sub_100747FB4();
    sub_1007433A4();
    if (!sub_10074F1E4())
    {
      sub_100016C60(0, &qword_100923500);
      sub_100753E34();
    }

    sub_100743224();
    sub_1007433C4();
    sub_1004AD33C(&qword_100925570, &type metadata accessor for ArtworkView);
    sub_100744204();

    v34(v15, v6);
  }

  if (!sub_100742904())
  {
  }

  sub_10074EC14();

  sub_10074F2A4();
  sub_10074F2A4();
  v36 = v52;
  sub_100750504();
  v37 = v50;
  sub_1007428F4();
  v38 = sub_100750454();
  v39 = v57;
  v40 = v48;
  v41 = v55;
  (*(v57 + 16))(v48, v37, v55);
  v42 = (*(v39 + 88))(v40, v41);
  v43 = Strong;
  if (v42 == enum case for AppShowcaseType.large(_:))
  {
    v44 = v54;
    if (v38)
    {
LABEL_21:
      (*(v57 + 8))(v37, v41);
      goto LABEL_22;
    }

    if (qword_100920D40 == -1)
    {
LABEL_20:
      sub_10000D0FC(v44, qword_100939DE8);
      sub_1007504B4();
      goto LABEL_21;
    }

LABEL_27:
    swift_once();
    goto LABEL_20;
  }

  v44 = v54;
  if (v42 == enum case for AppShowcaseType.small(_:) || v42 == enum case for AppShowcaseType.smallAlignedLeft(_:))
  {
    if (qword_100920D40 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v45 = *(v57 + 8);
  v45(v37, v41);
  v45(v48, v41);
LABEL_22:
  sub_1007504C4();
  sub_10074F374();
  if (v43)
  {
    type metadata accessor for VideoView();
    sub_1004AD33C(&unk_100923110, type metadata accessor for VideoView);
    v46 = v43;
    sub_100744204();
  }

  else
  {
    sub_100744214();
  }

  return (*(v53 + 8))(v36, v44);
}

void sub_1004AD174()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension29AppShowcaseCollectionViewCell_lockupView);
  v2 = OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension21AppShowcaseLockupView_iconView);
  v12.value.super.isa = 0;
  v12.is_nil = 0;
  sub_100743384(v12, v4);

  v5 = *(v1 + v2);
  sub_1007433C4();
  sub_1004AD33C(&qword_100925570, &type metadata accessor for ArtworkView);
  v6 = v5;
  sub_100744274();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = qword_10093CB50;
    v10 = Strong;
    v9 = [*(Strong + qword_10093CB50) layer];
    [v9 removeAllAnimations];

    [*&v10[v8] setImage:0];
    type metadata accessor for VideoView();
    sub_1004AD33C(&unk_100923110, type metadata accessor for VideoView);
    sub_100744274();
  }
}

uint64_t sub_1004AD33C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Void __swiftcall UIImageView.show(image:isAnimationPermitted:)(UIImage_optional image, Swift::Bool isAnimationPermitted)
{
  v3 = v2;
  isa = image.value.super.isa;
  if (!image.is_nil)
  {
    goto LABEL_4;
  }

  v5 = [v3 image];
  if (v5)
  {

LABEL_4:
    v6 = 0;
    goto LABEL_5;
  }

  v6 = 1;
LABEL_5:
  v7 = [v3 layer];
  [v7 removeAllAnimations];

  if (isa)
  {
    if (v6)
    {
      v8 = isa;
      [v3 setAlpha:0.0];
      [v3 setImage:v8];
      sub_100016C60(0, &qword_100933840);
      v9 = sub_100753974();
      v10 = swift_allocObject();
      *(v10 + 16) = v3;
      v15[4] = sub_1002CD324;
      v15[5] = v10;
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 1107296256;
      v15[2] = sub_1000CF7B0;
      v15[3] = &unk_100877B08;
      v11 = _Block_copy(v15);
      v12 = v3;

      [v9 addAnimations:v11];
      _Block_release(v11);
      [v9 startAnimation];

      return;
    }

    v13 = v3;
    v14 = isa;
  }

  else
  {
    v13 = v3;
    v14 = 0;
  }

  [v13 setImage:v14];
}

uint64_t sub_1004AD584()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004AD5BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1004AD5D8()
{
  v1 = [v0 image];

  return v1;
}

void sub_1004AD610(void *a1)
{
  [v1 setImage:a1];
}

void (*sub_1004AD658(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 image];
  return sub_1003578E0;
}

uint64_t CrossLinkLockupLayout.Metrics.init(artworkSize:artworkMargin:subtitleSpace:numberOfLines:offerButtonSize:offerButtonMargin:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>)
{
  *a5 = a6;
  *(a5 + 8) = a7;
  sub_100012160(a1, a5 + 16);
  sub_100012160(a2, a5 + 56);
  *(a5 + 96) = a3;
  *(a5 + 104) = a8;
  *(a5 + 112) = a9;

  return sub_100012160(a4, a5 + 120);
}

uint64_t CrossLinkLockupLayout.init(metrics:artworkView:lockupView:crossLinkTitleText:crossLinkSubtitleText:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X8>)
{
  sub_1001F75C0(a1, a6 + 160);
  sub_10000C888(a2, a2[3]);
  sub_1007503E4();
  sub_1001F761C(a1);
  sub_100012160(a3, a6 + 40);
  sub_100012160(a4, a6 + 80);
  sub_100012160(a5, a6 + 120);

  return sub_10000C620(a2);
}

uint64_t CrossLinkLockupLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v11 = [a1 traitCollection];
  v12 = sub_100753804();

  if (v12)
  {

    return sub_1004AD940(a2, a3, a4, a5, a6);
  }

  else
  {

    return sub_1004ADE84(a2, a3, a4, a5, a6);
  }
}

__n128 CrossLinkLockupLayout.Metrics.init(byCopying:)@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(a1 + 112);
  a2[6] = *(a1 + 96);
  a2[7] = v2;
  v3 = *(a1 + 144);
  a2[8] = *(a1 + 128);
  a2[9] = v3;
  v4 = *(a1 + 48);
  a2[2] = *(a1 + 32);
  a2[3] = v4;
  v5 = *(a1 + 80);
  a2[4] = *(a1 + 64);
  a2[5] = v5;
  result = *a1;
  v7 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v7;
  return result;
}

uint64_t sub_1004AD940@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v28 = a1;
  v27 = sub_100750354();
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100751214();
  v24 = *(v25 - 8);
  __chkstk_darwin(v25);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32.origin.x = a2;
  v32.origin.y = a3;
  v32.size.width = a4;
  v32.size.height = a5;
  MinY = CGRectGetMinY(v32);
  sub_10000C888(v5, *(v5 + 3));
  if ((sub_1007503A4() & 1) == 0)
  {
    v33.origin.x = a2;
    v33.origin.y = a3;
    v33.size.width = a4;
    v33.size.height = a5;
    MinX = CGRectGetMinX(v33);
    v20 = v5[20];
    v21 = v5[21];
    sub_10000C888(v5, *(v5 + 3));
    sub_100753B24();
    sub_100750394();
    v34.origin.x = MinX;
    v34.origin.y = MinY;
    v34.size.width = v20;
    v34.size.height = v21;
    CGRectGetMaxY(v34);
    sub_10000C888(v5 + 22, *(v5 + 25));
    sub_100536120();
    sub_100750564();
    (*(v15 + 8))(v17, v14);
  }

  v35.origin.x = a2;
  v35.origin.y = a3;
  v35.size.width = a4;
  v35.size.height = a5;
  CGRectGetMinX(v35);
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxY(v37);
  sub_10000C888(v5 + 5, *(v5 + 8));
  sub_100753B24();
  sub_100750394();
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMaxY(v38);
  sub_10000C888(v5 + 35, *(v5 + 38));
  sub_100536120();
  sub_100750564();
  (*(v15 + 8))(v17, v14);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetMinX(v39);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetWidth(v40);
  sub_100753B24();
  sub_10000C824((v5 + 10), v31);
  sub_10000C824((v5 + 15), v30);
  sub_10000C824((v5 + 27), v29);
  sub_1007511F4();
  sub_100751204();
  (*(v26 + 8))(v11, v27);
  sub_100750314();
  return (*(v24 + 8))(v13, v25);
}

uint64_t sub_1004ADE84@<X0>(uint64_t a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  v29 = a1;
  v28 = sub_100750354();
  v27 = *(v28 - 8);
  __chkstk_darwin(v28);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100751214();
  v25 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100754724();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33.origin.x = a2;
  v33.origin.y = a3;
  v33.size.width = a4;
  v33.size.height = a5;
  CGRectGetMinX(v33);
  sub_10000C888(v5, *(v5 + 24));
  if ((sub_1007503A4() & 1) == 0)
  {
    v34.origin.x = a2;
    v34.origin.y = a3;
    v34.size.width = a4;
    v34.size.height = a5;
    MinX = CGRectGetMinX(v34);
    v35.origin.x = a2;
    v35.origin.y = a3;
    v35.size.width = a4;
    v35.size.height = a5;
    MidY = CGRectGetMidY(v35);
    v21 = *(v5 + 160);
    v20 = *(v5 + 168);
    v22 = floor(MidY + v20 * -0.5);
    sub_10000C888(v5, *(v5 + 24));
    sub_100753B24();
    sub_100750394();
    v36.origin.x = MinX;
    v36.origin.y = v22;
    v36.size.width = v21;
    v36.size.height = v20;
    CGRectGetMaxX(v36);
    sub_10000C888((v5 + 176), *(v5 + 200));
    sub_100536120();
    sub_100750564();
    (*(v15 + 8))(v17, v14);
  }

  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  CGRectGetMaxX(v37);
  v38.origin.x = a2;
  v38.origin.y = a3;
  v38.size.width = a4;
  v38.size.height = a5;
  CGRectGetMinY(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  CGRectGetHeight(v39);
  sub_10000C888((v5 + 40), *(v5 + 64));
  sub_100753B24();
  sub_100750394();
  sub_10000C888((v5 + 280), *(v5 + 304));
  sub_100536120();
  sub_100750564();
  (*(v15 + 8))(v17, v14);
  v40.origin.x = a2;
  v40.origin.y = a3;
  v40.size.width = a4;
  v40.size.height = a5;
  CGRectGetMinY(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = a5;
  CGRectGetHeight(v41);
  sub_100753B24();
  sub_10000C824(v5 + 80, v32);
  sub_10000C824(v5 + 120, v31);
  sub_10000C824(v5 + 216, v30);
  sub_1007511F4();
  sub_100751204();
  (*(v27 + 8))(v11, v28);
  sub_100750314();
  return (*(v25 + 8))(v13, v26);
}

uint64_t sub_1004AE3D4(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = sub_1004AE64C();
  v11.n128_f64[0] = a4;
  v12.n128_f64[0] = a5;

  return EstimatedMeasurable<>.measurements(fitting:in:)(a1, a2, v10, a3, v11, v12);
}

unint64_t sub_1004AE444()
{
  result = qword_100939E50;
  if (!qword_100939E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939E50);
  }

  return result;
}

uint64_t sub_1004AE4A0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 320))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004AE4E8(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1004AE58C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 160))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004AE5D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 160) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1004AE64C()
{
  result = qword_100939E58;
  if (!qword_100939E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939E58);
  }

  return result;
}

char *sub_1004AE6A0(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v8 = v7;
  v73 = a3;
  v72 = a1;
  v14 = sub_100752AC4();
  v78 = *(v14 - 8);
  v79 = v14;
  __chkstk_darwin(v14);
  v77 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_10074AB44();
  v70 = *(v71 - 8);
  __chkstk_darwin(v71);
  v69 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v17 - 8);
  v19 = &v68 - v18;
  v20 = sub_1007441C4();
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_10000C518(&qword_10093F5C0);
  __chkstk_darwin(v24 - 8);
  v26 = &v68 - v25;
  v27 = &v7[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerLabelPresenter];
  *v27 = 0u;
  *(v27 + 1) = 0u;
  v28 = &v7[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButtonTapHandler];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  v30 = sub_100747424();
  v31 = *(v30 - 8);
  v75 = v30;
  v76 = v31;
  v32 = *(v31 + 16);
  v74 = a2;
  v32(&v8[v29], a2, v30);
  v68 = sub_1007441E4();
  v33 = enum case for Wordmark.arcade(_:);
  v34 = sub_10074F7B4();
  v35 = *(v34 - 8);
  (*(v35 + 104))(v26, v33, v34);
  (*(v35 + 56))(v26, 0, 1, v34);
  sub_100747414();
  (*(v21 + 104))(v23, enum case for WordmarkView.Alignment.leading(_:), v20);
  v36 = *(&v83 + 1);
  v37 = v84;
  v38 = sub_10007271C(&v82, *(&v83 + 1));
  v39 = __chkstk_darwin(v38);
  v41 = &v68 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v42 + 16))(v41, v39);
  v43 = sub_1004AFA30(v26, v41, v23, v68, v36, v37);
  sub_10000C620(&v82);
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView] = v43;
  v44 = sub_100750534();
  v45 = *(v44 - 8);
  v46 = v72;
  (*(v45 + 16))(v19, v72, v44);
  (*(v45 + 56))(v19, 0, 1, v44);
  (*(v70 + 104))(v69, enum case for DirectionalTextAlignment.leading(_:), v71);
  v47 = objc_allocWithZone(sub_100745C84());
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel] = sub_100745C74();
  v48 = objc_allocWithZone(type metadata accessor for OfferButton());
  *&v8[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton] = sub_100154454(v73);
  v49 = type metadata accessor for ArcadeLockupView();
  v81.receiver = v8;
  v81.super_class = v49;
  v50 = objc_msgSendSuper2(&v81, "initWithFrame:", a4, a5, a6, a7);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v54 = v50;
  [v54 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v54 setEdgesInsettingLayoutMarginsFromSafeArea:0];
  v55 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView;
  v56 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  sub_10000D198();
  v57 = v56;
  v58 = sub_100753DD4();
  [v57 setTintColor:v58];

  [v54 addSubview:*&v54[v55]];
  v59 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel;
  v60 = *&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v61 = sub_100753DF4();
  [v60 setTextColor:v61];

  v62 = *&v54[v59];
  sub_100745C34();

  v63 = *&v54[v59];
  v82 = 0u;
  v83 = 0u;
  memset(v80, 0, sizeof(v80));
  v64 = v63;
  v65 = v77;
  sub_100752A74();
  sub_1000277BC(v80);
  sub_1000277BC(&v82);
  sub_100753C74();

  (*(v78 + 8))(v65, v79);
  [v54 addSubview:*&v54[v59]];
  v66 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton;
  [*&v54[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton] addTarget:v54 action:"offerButtonWasTapped" forControlEvents:64];
  [v54 addSubview:*&v54[v66]];

  (*(v76 + 8))(v74, v75);
  (*(v45 + 8))(v46, v44);
  return v54;
}

uint64_t sub_1004AEF74()
{
  v1 = v0;
  v18[0] = sub_100747424();
  v2 = *(v18[0] - 8);
  __chkstk_darwin(v18[0]);
  v4 = v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100747434();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  [v1 layoutMargins];
  sub_100753BA4();
  v10 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  v18[17] = sub_1007441E4();
  v18[18] = &protocol witness table for UIView;
  v18[14] = v10;
  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v18[12] = sub_100745C84();
  v18[13] = &protocol witness table for UILabel;
  v18[9] = v11;
  v12 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton];
  v18[7] = type metadata accessor for OfferButton();
  v18[8] = &protocol witness table for UIView;
  v18[4] = v12;
  v13 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v1[v13], v18[0]);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  sub_1007473E4();
  sub_1004AFB00();
  sub_100750404();
  (*(v6 + 8))(v9, v5);
  [v1 layoutMargins];
  return sub_100753BC4();
}

uint64_t sub_1004AF250()
{
  v22 = sub_100750354();
  v21 = *(v22 - 8);
  __chkstk_darwin(v22);
  v20 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100747424();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100747434();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ArcadeLockupView();
  v32.receiver = v0;
  v32.super_class = v8;
  objc_msgSendSuper2(&v32, "layoutSubviews");
  v9 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_wordmarkView];
  v30 = sub_1007441E4();
  v31 = &protocol witness table for UIView;
  v29 = v9;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_subtitleLabel];
  v27 = sub_100745C84();
  v28 = &protocol witness table for UILabel;
  v26 = v10;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_offerButton];
  v24 = type metadata accessor for OfferButton();
  v25 = &protocol witness table for UIView;
  v23 = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  (*(v2 + 16))(v4, &v0[v12], v18);
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1007473E4();
  sub_1007477B4();
  v16 = v20;
  sub_1007473F4();
  (*(v21 + 8))(v16, v22);
  return (*(v5 + 8))(v7, v19);
}

id sub_1004AF7A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ArcadeLockupView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for ArcadeLockupView()
{
  result = qword_100939EA8;
  if (!qword_100939EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004AF8F0()
{
  result = sub_100747424();
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

uint64_t sub_1004AF9A4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension16ArcadeLockupView_metrics;
  swift_beginAccess();
  v5 = sub_100747424();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1004AFA30(uint64_t a1, uint64_t a2, uint64_t a3, objc_class *a4, uint64_t a5, uint64_t a6)
{
  v12[3] = a5;
  v12[4] = a6;
  v9 = sub_10000D134(v12);
  (*(*(a5 - 8) + 32))(v9, a2, a5);
  v10 = objc_allocWithZone(a4);
  return sub_1007441B4();
}

unint64_t sub_1004AFB00()
{
  result = qword_100939EB8;
  if (!qword_100939EB8)
  {
    sub_100747434();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939EB8);
  }

  return result;
}

id WebViewController.protocolDelegate.getter()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void WebViewController.protocolDelegate.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id sub_1004AFC64(uint64_t a1)
{
  v2 = v1;
  sub_1007487F4();
  sub_100752764();
  sub_100752D34();
  *&v1[OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate] = v18;
  sub_1001FEAF4();
  sub_100752D34();
  v4 = v18;
  sub_100744AC4();
  sub_100752D34();
  v5 = sub_100744AB4();
  v6 = [v18 ams_activeiTunesAccount];
  v17.receiver = v2;
  v17.super_class = type metadata accessor for WebViewController();
  v7 = objc_msgSendSuper2(&v17, "initWithBag:account:clientInfo:", v5, v6, 0);
  swift_unknownObjectRelease();

  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 tableViewAppearance];
  [v9 setAppearance:v10];

  [v9 setDelegate:v9];
  sub_100741204(v11);
  v13 = v12;
  v14 = [v9 loadURL:v12];

  v15 = sub_100741264();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v9;
}

id WebViewController.__allocating_init(bag:account:clientInfo:)(uint64_t a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(v3) initWithBag:a1 account:a2 clientInfo:a3];
  swift_unknownObjectRelease();

  return v6;
}

void sub_1004B0054(char a1, SEL *a2, SEL *a3)
{
  v8.receiver = v3;
  v8.super_class = type metadata accessor for WebViewController();
  objc_msgSendSuper2(&v8, *a2, a1 & 1);
  v7 = [objc_opt_self() sharedCoordinator];
  [v7 *a3];
}

void sub_1004B00E8(void *a1, uint64_t a2, uint64_t a3, const char **a4, SEL *a5)
{
  v11.receiver = a1;
  v11.super_class = type metadata accessor for WebViewController();
  v8 = *a4;
  v9 = v11.receiver;
  objc_msgSendSuper2(&v11, v8, a3);
  v10 = [objc_opt_self() sharedCoordinator];
  [v10 *a5];
}

void WebViewController.webViewController(_:handle:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_1007487E4();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877C50;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

{
  v7 = OBJC_IVAR____TtC22SubscribePageExtension17WebViewController_protocolDelegate;
  swift_beginAccess();
  v8 = *(v4 + v7);
  v9 = sub_1007487D4();

  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1004B0778;
  aBlock[3] = &unk_100877C78;
  v10 = _Block_copy(aBlock);

  [v9 addFinishBlock:v10];
  _Block_release(v10);
}

uint64_t sub_1004B027C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004B03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_100741124();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

id WebViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004B0704()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B07A4(void *a1, uint64_t a2)
{
  v5 = sub_10000C518(&unk_1009400E0);
  __chkstk_darwin(v5 - 8);
  v11 = a1;
  sub_10003E054();
  a1;
  sub_10000C518(&qword_10093A000);
  if (swift_dynamicCast())
  {
    sub_100012160(v9, v12);
    v6 = v13;
    v7 = v14;
    sub_10000C888(v12, v13);
    (*(v7 + 8))(a2, *(v2 + 16), v6, v7);
    sub_1007538F4();
    return sub_10000C620(v12);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_1004B08EC(v9);
  }
}

uint64_t sub_1004B08EC(uint64_t a1)
{
  v2 = sub_10000C518(&qword_10093A008);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004B0954()
{
  v33 = sub_100741494();
  v0 = *(v33 - 8);
  __chkstk_darwin(v33);
  v2 = &v27 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_10000C518(&unk_100947360);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  v29 = &v27 - v8;
  v32 = sub_10000C518(&unk_1009231A0);
  v30 = swift_allocObject();
  v31 = xmmword_1007A5CF0;
  *(v30 + 16) = xmmword_1007A5CF0;
  sub_100752854();
  sub_100752814();
  v10 = sub_100752824();
  v11 = *(v4 + 16);
  v11(v6, v9, v3);
  type metadata accessor for BoolPreferencesDebugSetting();
  v12 = swift_allocObject();
  *(v12 + 56) = 0xD000000000000017;
  *(v12 + 64) = 0x800000010077F770;
  *(v12 + 72) = 0;
  *(v12 + 80) = 0;
  *(v12 + 88) = 0;
  v11((v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_key), v6, v3);
  v13 = (v12 + OBJC_IVAR____TtC22SubscribePageExtension27BoolPreferencesDebugSetting_preferences);
  *v13 = v10;
  v13[1] = &protocol witness table for LocalPreferences;

  sub_100741484();
  v14 = sub_100741464();
  v16 = v15;
  v17 = *(v0 + 8);
  v27 = v0 + 8;
  v28 = v17;
  v18 = v33;
  v17(v2, v33);
  v34 = v14;
  v35 = v16;
  sub_1007544E4();
  v19 = *(v4 + 8);
  v19(v6, v3);

  v19(v29, v3);
  v20 = v30;
  *(v30 + 32) = v12;
  v21 = swift_allocObject();
  *(v21 + 16) = v31;
  type metadata accessor for DebugSection();
  v22 = swift_allocObject();
  sub_100741484();
  v23 = sub_100741464();
  v25 = v24;
  v28(v2, v18);
  v22[2] = v23;
  v22[3] = v25;
  v22[4] = 0;
  v22[5] = 0xE000000000000000;
  v22[6] = v20;
  *(v21 + 32) = v22;
  return v21;
}

id sub_1004B0CC0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ShelfPlaceholderSettings();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004B0D18(unint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v48 = a2;
  ObjectType = swift_getObjectType();
  v8 = sub_1007521E4();
  v42 = *(v8 - 8);
  __chkstk_darwin(v8);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_100752224();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10074F314();
  __chkstk_darwin(v11 - 8);
  v45 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {
    v14 = _swiftEmptyArrayStorage;
    v37 = ObjectType;
    if (!i)
    {
      goto LABEL_11;
    }

    aBlock[0] = _swiftEmptyArrayStorage;
    result = sub_1007545C4();
    if (i < 0)
    {
      break;
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = sub_100754574();
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      ++v16;
      v18 = objc_allocWithZone(type metadata accessor for ArcadeDownloadPackCategoryButton());

      sub_10020287C(v17, a3, a4);

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
    }

    while (i != v16);
    v14 = aBlock[0];
LABEL_11:
    v36 = v8;
    v19 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews;
    ObjectType = v43;
    *&v43[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = v14;

    v20 = [ObjectType traitCollection];
    v21 = [v20 preferredContentSizeCategory];

    LOBYTE(v20) = sub_100753924();
    sub_1004B1EA8(v20 & 1);
    v8 = *&ObjectType[v19];
    if (v8 >> 62)
    {
      a3 = sub_100754664();
    }

    else
    {
      a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (!a3)
    {
LABEL_25:

      v27 = v43;
      [v43 setNeedsLayout];
      [v27 layoutIfNeeded];
      sub_100016C60(0, &qword_100926D00);
      v28 = sub_100753774();
      v29 = swift_allocObject();
      v30 = v37;
      *(v29 + 16) = v27;
      *(v29 + 24) = v30;
      aBlock[4] = sub_1004B27B8;
      aBlock[5] = v29;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000CF7B0;
      aBlock[3] = &unk_100877D68;
      v31 = _Block_copy(aBlock);
      v32 = v27;

      v33 = v38;
      sub_100752204();
      aBlock[0] = _swiftEmptyArrayStorage;
      sub_1004B27D8(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      v34 = v40;
      v35 = v36;
      sub_1007543A4();
      sub_100753784();
      _Block_release(v31);

      (*(v42 + 8))(v34, v35);
      return (*(v39 + 8))(v33, v41);
    }

    a4 = 0;
    v46 = v8 & 0xFFFFFFFFFFFFFF8;
    v47 = v8 & 0xC000000000000001;
    v22 = &unk_10092D000;
    v44 = v8;
    while (1)
    {
      if (v47)
      {
        v23 = sub_100754574();
      }

      else
      {
        if (a4 >= *(v46 + 16))
        {
          goto LABEL_27;
        }

        v23 = *(v8 + 8 * a4 + 32);
      }

      ObjectType = v23;
      v24 = a4 + 1;
      if (__OFADD__(a4, 1))
      {
        break;
      }

      sub_10074BA14();
      sub_10074F374();

      sub_10074BA14();
      v25 = sub_10074F3B4();

      if (v25)
      {
        a1 = v22;
        v26 = *&ObjectType[v22[431]];
        sub_10074F324();
        sub_100743364();
        [v26 setContentMode:sub_10074F184()];
        sub_100747FB4();
        sub_1007433A4();
        if (!sub_10074F1E4())
        {
          sub_100016C60(0, &qword_100923500);
          sub_100753E34();
        }

        sub_100743224();

        v22 = a1;
        v8 = v44;
      }

      sub_1007433C4();
      sub_1004B27D8(&qword_100925570, &type metadata accessor for ArtworkView);
      sub_100744204();

      ++a4;
      if (v24 == a3)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B1408(unsigned __int8 a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v2 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v4 = 0;
    v15 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = type metadata accessor for ArcadeDownloadPackCategoryButton();
      v20.receiver = v6;
      v20.super_class = v8;
      v9 = objc_msgSendSuper2(&v20, "isSelected");
      v19.receiver = v6;
      v19.super_class = v8;
      objc_msgSendSuper2(&v19, "setEnabled:", (v9 | a1) & 1);
      v10 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_titleLabel];
      v18.receiver = v6;
      v18.super_class = v8;
      if (objc_msgSendSuper2(&v18, "isEnabled"))
      {
        v11 = 1.0;
      }

      else
      {
        v11 = 0.4;
      }

      [v10 setAlpha:{v11, v15}];
      v12 = *&v6[OBJC_IVAR____TtC22SubscribePageExtension32ArcadeDownloadPackCategoryButton_artworkView];
      v17.receiver = v6;
      v17.super_class = v8;
      if (objc_msgSendSuper2(&v17, "isEnabled"))
      {
        v13 = 1.0;
      }

      else
      {
        v13 = 0.4;
      }

      [v12 setAlpha:v13];

      ++v4;
      if (v7 == i)
      {
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }
}

uint64_t sub_1004B15BC(uint64_t a1, void *a2)
{
  v19 = a1;
  v20 = a2;
  v3 = sub_10000C518(&unk_100925380);
  __chkstk_darwin(v3 - 8);
  v5 = &v17 - v4;
  v6 = sub_100752914();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (v10 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v12 = 0;
    v21 = v10 & 0xFFFFFFFFFFFFFF8;
    v22 = v10 & 0xC000000000000001;
    v13 = (v7 + 48);
    v17 = (v7 + 8);
    v18 = (v7 + 32);
    while (1)
    {
      if (v22)
      {
        v14 = sub_100754574();
      }

      else
      {
        if (v12 >= *(v21 + 16))
        {
          goto LABEL_16;
        }

        v14 = *(v10 + 8 * v12 + 32);
      }

      v7 = v14;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      sub_10074B9D4();
      if ((*v13)(v5, 1, v6) == 1)
      {

        sub_10045862C(v5);
      }

      else
      {
        (*v18)(v9, v5, v6);
        [v7 bounds];
        [v20 convertRect:v7 fromCoordinateSpace:?];
        sub_100749544();

        (*v17)(v9, v6);
      }

      ++v12;
      if (v15 == i)
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

char *sub_1004B1844(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *&v4[v10] = [objc_allocWithZone(UIStackView) init];
  v11 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  v12 = [objc_allocWithZone(UIStackView) init];
  *&v4[v11] = v12;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint] = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews] = _swiftEmptyArrayStorage;
  sub_10000C518(&unk_1009231A0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1007A7210;
  v14 = *&v4[v10];
  *(v13 + 32) = v14;
  *(v13 + 40) = v12;
  v15 = objc_allocWithZone(UIStackView);
  sub_100016C60(0, &qword_100922300);
  v16 = v14;
  v17 = v12;
  isa = sub_100753294().super.isa;

  v19 = [v15 initWithArrangedSubviews:isa];

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] = v19;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v41 = ObjectType;
  v20 = objc_msgSendSuper2(&v44, "initWithFrame:", a1, a2, a3, a4);
  sub_10000C518(&unk_1009249D0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1007A5A00;
  v22 = sub_1007519E4();
  *(v21 + 32) = v22;
  *(v21 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = ObjectType;
  v42[0] = v20;
  v23 = v20;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v42);
  v24 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setAxis:1];
  [*&v23[v24] setSpacing:50.0];
  [*&v23[v24] setTranslatesAutoresizingMaskIntoConstraints:0];
  v25 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setAxis:1];
  [*&v23[v25] setSpacing:50.0];
  [*&v23[v25] setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView;
  [*&v23[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] setDistribution:1];
  [*&v23[v26] setAlignment:1];
  [*&v23[v26] setAxis:0];
  [*&v23[v26] setSpacing:8.0];
  [v23 addSubview:*&v23[v26]];
  [*&v23[v26] setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = objc_opt_self();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1007A57A0;
  v29 = [*&v23[v26] leftAnchor];
  v30 = [v23 leftAnchor];

  v31 = [v29 constraintEqualToAnchor:v30];
  *(v28 + 32) = v31;
  v32 = [*&v23[v26] rightAnchor];
  v33 = [v23 rightAnchor];

  v34 = [v32 constraintEqualToAnchor:v33];
  *(v28 + 40) = v34;
  *(v28 + 48) = sub_1004B1D88();
  v35 = [*&v23[v26] bottomAnchor];
  v36 = [v23 bottomAnchor];
  v37 = [v35 constraintEqualToAnchor:v36];

  *(v28 + 56) = v37;
  sub_100016C60(0, &qword_100922E80);
  v38 = sub_100753294().super.isa;

  [v27 activateConstraints:v38];

  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1007A5A00;
  *(v39 + 32) = v22;
  *(v39 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v43 = v41;
  v42[0] = v23;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v42);
  return v23;
}

id sub_1004B1D88()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint];
  }

  else
  {
    v4 = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] topAnchor];
    v5 = [v0 topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5 constant:150.0];

    v7 = *&v0[v1];
    *&v0[v1] = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_1004B1EA8(char a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn);
  [v2 setHidden:a1 & 1];
  v29 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn);
  v4 = [v3 arrangedSubviews];
  sub_100016C60(0, &qword_100922300);
  v5 = sub_1007532A4();

  if (v5 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      [v8 removeFromSuperview];

      ++v7;
      if (v10 == i)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:

  v11 = [v2 arrangedSubviews];
  v12 = sub_1007532A4();

  if (v12 >> 62)
  {
    goto LABEL_26;
  }

  for (j = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_100754664())
  {
    v14 = 0;
    while (1)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = sub_100754574();
      }

      else
      {
        if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v15 = *(v12 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      [v15 removeFromSuperview];

      ++v14;
      if (v17 == j)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

LABEL_27:

  v18 = *(v29 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews);
  if (a1)
  {
    if (v18 >> 62)
    {
      goto LABEL_63;
    }

    for (k = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; k = sub_100754664())
    {
      v31 = v3;

      if (!k)
      {
        break;
      }

      v3 = 0;
      while (1)
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v20 = sub_100754574();
        }

        else
        {
          if (v3 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_61;
          }

          v20 = *(v18 + 8 * v3 + 32);
        }

        v21 = v20;
        v22 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          break;
        }

        [v31 addArrangedSubview:v20];

        ++v3;
        if (v22 == k)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      ;
    }

LABEL_53:
  }

  else
  {
    if (v18 >> 62)
    {
      v23 = sub_100754664();
    }

    else
    {
      v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v23)
    {
      v24 = 0;
      do
      {
        if ((v18 & 0xC000000000000001) != 0)
        {
          v25 = sub_100754574();
        }

        else
        {
          if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_62;
          }

          v25 = *(v18 + 8 * v24 + 32);
        }

        v26 = v25;
        v27 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_60;
        }

        if (v24)
        {
          v28 = v2;
        }

        else
        {
          v28 = v3;
        }

        [v28 addArrangedSubview:v26];

        ++v24;
      }

      while (v27 != v23);
    }
  }
}

uint64_t sub_1004B22B0(char *a1)
{
  v2 = sub_1004B1D88();
  [v2 setConstant:0.0];

  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn] setSpacing:8.0];
  [*&a1[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] setSpacing:8.0];
  sub_100016C60(0, &qword_100922300);
  *(swift_allocObject() + 16) = a1;
  v3 = a1;
  sub_100753D74();
}

id sub_1004B2468()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  v3 = sub_100753924() & 1;
  result = [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn] isHidden];
  if (v3 != result)
  {
    sub_1004B1EA8(v3);
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView] layoutIfNeeded];
    v5 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews];
    if (v5 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
    {

      if (!i)
      {
        break;
      }

      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = sub_100754574();
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v8;
        v10 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        [v8 setNeedsLayout];
        [v9 invalidateIntrinsicContentSize];

        ++v7;
        if (v10 == i)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_14:
  }

  return result;
}

double sub_1004B2704()
{
  [*(*v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_contentView) systemLayoutSizeFittingSize:?];
  v2 = v1;
  v3 = sub_1004B1D88();
  [v3 constant];

  return v2;
}

uint64_t sub_1004B2780()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004B27C0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004B27D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004B2820()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1004B2858()
{
  v1 = [*(v0 + 16) superview];
  [v1 invalidateIntrinsicContentSize];
}

void sub_1004B28B0()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_firstColumn;
  *(v0 + v1) = [objc_allocWithZone(UIStackView) init];
  v2 = OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_secondColumn;
  *(v0 + v2) = [objc_allocWithZone(UIStackView) init];
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView____lazy_storage___topContentConstraint) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension34ArcadeDownloadPackCategoryListView_categoryViews) = _swiftEmptyArrayStorage;
  sub_100754644();
  __break(1u);
}

BOOL sub_1004B2974(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 8);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (*&v2 == 1)
    {
      if (*&v3 == 1)
      {
        v4 = *(a2 + 8);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (*&v3 > 1uLL)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 8) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

void sub_1004B29F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state);
  if (*(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8) == 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = [objc_allocWithZone(type metadata accessor for InstallProgressLayer()) init];
        sub_1004B2C10(v2);
        v3 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
        if (!v3)
        {
          return;
        }

        v4 = v3;
        v5 = sub_100753064();
        v6 = [v4 animationForKey:v5];

        if (v6)
        {

          v7 = sub_100753064();
          [v4 removeAnimationForKey:v7];
        }

        v8 = sub_10024B9C0();
        v14 = sub_100753064();
        [v4 addAnimation:v8 forKey:v14];
      }

      else
      {
        v13 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
        if (!v13)
        {
          return;
        }

        v14 = v13;
        sub_10024A784();
      }

      v12 = v14;
    }

    else
    {
      v11 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer;
      v12 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
      if (v12)
      {
        [v12 removeFromSuperlayer];
        v12 = *(v0 + v11);
      }

      *(v0 + v11) = 0;
    }
  }

  else
  {
    v9 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer);
    v10 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state);

    [v9 setProgress:v10];
  }
}

void sub_1004B2C10(void *a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer;
  v4 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer];
  if (v4)
  {
    [v4 removeFromSuperlayer];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = a1;
  v6 = a1;

  if (a1)
  {
    v7 = objc_opt_self();
    v8 = v6;
    v9 = [v7 mainScreen];
    [v9 scale];
    v11 = v10;

    [v8 setContentsScale:v11];
    v12 = [v1 layer];
    [v12 bounds];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;

    [v8 setFrame:{v14, v16, v18, v20}];
    v21 = [v1 layer];
    [v21 addSublayer:v8];
  }
}

id sub_1004B2DA4(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  *v9 = 0;
  v9[8] = 1;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progressLayer] = 0;
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
  *v10 = 0;
  *(v10 + 1) = 0;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress] = 0;
  v16.receiver = v4;
  v16.super_class = type metadata accessor for InstallProgressView();
  v11 = objc_msgSendSuper2(&v16, "initWithFrame:", a1, a2, a3, a4);
  v12 = objc_opt_self();
  v13 = v11;
  v14 = [v12 clearColor];
  [v13 setBackgroundColor:v14];

  return v13;
}

void sub_1004B3054(double a1)
{
  v3 = sub_1007521E4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752224();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100752244();
  __chkstk_darwin(v11);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v39 - v17;
  v19 = &v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  v20 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state];
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8] == 1 && v20 > 1)
  {
    return;
  }

  if (a1 == 0.0)
  {
    v22 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress];
    if (v22 == 1.0)
    {
      v23 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler];
      if (v23)
      {

        v23(v24);

        sub_1000164A8(v23);
      }

      return;
    }

    if (v22 > 0.0)
    {
      v25 = objc_opt_self();
      [v25 begin];
      v26 = swift_allocObject();
      *(v26 + 16) = v1;
      v49 = sub_1004B39B0;
      v50 = v26;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1000CF7B0;
      v48 = &unk_100877EC0;
      v27 = _Block_copy(&aBlock);
      v28 = v1;

      [v25 setCompletionBlock:v27];
      _Block_release(v27);
      *v19 = 1;
      v19[8] = 1;
      sub_1004B29F4();
      [v25 commit];
      return;
    }
  }

  if (v20 == 1)
  {
    v29 = v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state + 8];
  }

  else
  {
    v29 = 0;
  }

  if ((v29 & 1) == 0)
  {
    v43 = v8;
    v44 = v4;
    v30 = OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress;
    *v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_progress];
    v19[8] = 0;
    v31 = v15;
    v32 = v16;
    sub_1004B29F4();
    v33 = v31;
    v34 = v44;
    if (*&v1[v30] >= 1.0)
    {
      v35 = v33;
      v42 = v33;
      sub_1000A7FA0();
      v39 = v1;
      v41 = sub_100753774();
      sub_100752234();
      sub_1007522B4();
      v40 = *(v32 + 8);
      v40(v13, v35);
      v36 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v49 = sub_1004B3958;
      v50 = v36;
      aBlock = _NSConcreteStackBlock;
      v46 = 1107296256;
      v47 = sub_1000CF7B0;
      v48 = &unk_100877E70;
      v37 = _Block_copy(&aBlock);

      sub_100752204();
      aBlock = _swiftEmptyArrayStorage;
      sub_10002DCDC();
      sub_10000C518(&unk_10092F750);
      sub_1000A8054();
      sub_1007543A4();
      v38 = v41;
      sub_100753734();
      _Block_release(v37);

      (*(v34 + 8))(v6, v3);
      (*(v43 + 8))(v10, v7);
      v40(v18, v42);
    }
  }
}

id sub_1004B35B8()
{
  v0 = objc_opt_self();
  [v0 begin];
  v1 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  aBlock[4] = sub_1004B39E8;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100877EE8;
  v3 = _Block_copy(aBlock);

  [v0 setCompletionBlock:v3];
  _Block_release(v3);
  swift_beginAccess();
  v4 = swift_unknownObjectWeakLoadStrong();
  if (v4)
  {
    v5 = v4;
    v6 = v4 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
    *v6 = 2;
    *(v6 + 8) = 1;
    sub_1004B29F4();
  }

  return [v0 commit];
}

void sub_1004B372C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_completionHandler);
    v2 = Strong;
    sub_10001B5AC(v1);

    if (v1)
    {
      v1();
      sub_1000164A8(v1);
    }
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;
    v5 = v3 + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
    *v5 = 0;
    *(v5 + 8) = 1;
    sub_1004B29F4();
  }
}

id sub_1004B37FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for InstallProgressView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t storeEnumTagSinglePayload for InstallProgressView.ProgressState(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1004B38D4(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004B38F0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1004B3920()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B3960(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004B3978()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1004B39B0()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC22SubscribePageExtension19InstallProgressView_state;
  *v1 = 0;
  *(v1 + 8) = 0;
  sub_1004B29F4();
}

uint64_t sub_1004B3A4C(uint64_t a1)
{
  v2 = sub_10074AF74();
  __chkstk_darwin(v2 - 8);
  v4 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074AF94();
  v67 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074F704();
  v65 = *(v8 - 8);
  v66 = v8;
  __chkstk_darwin(v8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10000C518(&qword_100930648);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - v12;
  sub_100747AB4();
  sub_1004B43A0(&qword_1009305D0, &type metadata accessor for ProductDescription);
  result = sub_1007468B4();
  v15 = aBlock[0];
  if (aBlock[0])
  {
    v63 = v5;
    sub_1002B09B8();
    v68 = a1;
    sub_1007468E4();
    sub_100752E84();
    v16 = aBlock[0];
    v61 = v10;
    v62 = v7;
    v59 = v4;
    v60 = v11;
    v58 = v13;
    v55 = v15;
    if (LOBYTE(aBlock[0]) == 2)
    {
      sub_100747AA4();
      v16 = sub_10074F8D4();
    }

    v57 = sub_100747AA4();
    if (v16)
    {
      v17 = sub_10074F8E4();
      v54 = 3;
    }

    else
    {
      v17 = sub_10074F914();
      v54 = 0;
    }

    v18 = [sub_10007DC04() traitCollection];
    swift_unknownObjectRelease();
    v19 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v17];
    v20 = [v17 length];
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = v18;
    *(v21 + 32) = v19;
    *(v21 + 40) = 1;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_100047814;
    *(v22 + 24) = v21;
    v78 = sub_1000B18A8;
    v79 = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100047044;
    v77 = &unk_100877F60;
    v23 = _Block_copy(aBlock);
    v24 = v18;
    v25 = v19;

    v56 = v17;
    [v17 enumerateAttributesInRange:0 options:v20 usingBlock:{0x100000, v23}];

    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      v27 = v25;
      v28 = sub_100747A94();
      v29 = sub_100747A84();
      v30 = sub_100747A74();
      if (sub_100747A64())
      {
        v31 = sub_10074ECB4();
        v52 = v32;
        v53 = v31;
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v33 = sub_10007DC04();
      swift_getKeyPath();
      v34 = v64;
      sub_100746914();

      sub_10074F674();
      (*(v65 + 8))(v34, v66);
      v35 = swift_allocObject();
      v36 = v54;
      *(v35 + 16) = v27;
      *(v35 + 24) = v36;
      v37 = sub_100750F34();
      swift_allocObject();
      v38 = v27;
      v39 = sub_100750EF4();
      v77 = v37;
      v78 = &protocol witness table for LayoutViewPlaceholder;
      aBlock[0] = v39;
      v40 = swift_allocObject();
      v40[2] = v28;
      v40[3] = v29;
      v40[4] = v30;
      v40[5] = v33;
      swift_allocObject();

      swift_unknownObjectRetain();
      v41 = sub_100750EF4();
      v75[3] = v37;
      v75[4] = &protocol witness table for LayoutViewPlaceholder;
      v75[0] = v41;
      v42 = type metadata accessor for DeveloperLinkView();
      v43 = swift_allocObject();
      v44 = v52;
      v45 = v53;
      v43[2] = v42;
      v43[3] = v45;
      v43[4] = v44;
      swift_allocObject();
      v46 = sub_100750EF4();
      v74[3] = v37;
      v74[4] = &protocol witness table for LayoutViewPlaceholder;
      v74[0] = v46;
      sub_100744704();
      LOBYTE(v42) = sub_1007532D4();

      if (v42)
      {
        sub_10000C824(v75, v72);
      }

      else
      {
        v73 = 0;
        memset(v72, 0, sizeof(v72));
      }

      v47 = v62;
      v48 = v60;
      v49 = v58;
      sub_1007065A0(v59);
      sub_10000C824(aBlock, &v71);
      sub_10000C824(v75, &v70);
      sub_10000C824(v74, &v69);
      sub_10074AF84();
      sub_1004B43A0(&qword_100930650, &type metadata accessor for ProductDescriptionLayout);
      v50 = v63;
      sub_100750404();

      swift_unknownObjectRelease();

      (*(v67 + 8))(v47, v50);
      sub_1002C9F48(v72);
      (*(v48 + 8))(v49, v61);
      sub_10000C620(v74);
      sub_10000C620(v75);
      return sub_10000C620(aBlock);
    }
  }

  return result;
}

uint64_t sub_1004B427C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1004B42D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004B42F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004B4328()
{

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1004B4368()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004B43A0(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004B4430()
{
  sub_100744774();
  sub_1004B44F0(&qword_10093A0E0, &type metadata accessor for RoundedButton);
  sub_1007468B4();
  if (!v2)
  {
    return 0.0;
  }

  sub_10007DC04();
  v0 = sub_1007133EC();

  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_1004B44F0(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1004B4598(double a1, double a2, double a3, double a4)
{
  v9 = &v4[qword_10093A0E8];
  *v9 = 0;
  v9[8] = 1;
  *&v4[qword_10093A0F0] = 0;
  *&v4[qword_10093A0F8] = 0;
  *&v4[qword_10093A100] = 0;
  v4[qword_10093A108] = 1;
  v11.receiver = v4;
  v11.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v11, "initWithFrame:", a1, a2, a3, a4);
}

void sub_1004B471C()
{
  if ((v0[qword_10093A0E8 + 8] & 1) != 0 || *&v0[qword_10093A0E8] != 3)
  {
    return;
  }

  v1 = sub_1004B48F4();
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_100754664();
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_12:
    v5 = 0.0;
    goto LABEL_13;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v3 < 1)
  {
    __break(1u);
    goto LABEL_23;
  }

  v4 = 0;
  v5 = 0.0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = sub_100754574();
    }

    else
    {
      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    ++v4;
    [v6 frame];
    Width = CGRectGetWidth(v13);

    v5 = v5 + Width;
  }

  while (v3 != v4);
LABEL_13:

  [v0 frame];
  if (v5 >= CGRectGetWidth(v14))
  {
    return;
  }

  v9 = sub_1004B48F4();
  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_16;
  }

LABEL_23:
  v10 = sub_100754664();
LABEL_16:

  if (v10 >= 2)
  {
    v11 = sub_1004B48F4();
    if (v11 >> 62)
    {
      v12 = sub_100754664();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (__OFSUB__(v12, 1))
    {
      __break(1u);
    }

    else
    {
      [v0 frame];
      CGRectGetWidth(v15);
    }
  }
}

void *sub_1004B48F4()
{
  v1 = [v0 subviews];
  sub_100009D34();
  v2 = sub_1007532A4();

  if (v2 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = sub_100754574();
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if ([v5 isHidden])
      {
      }

      else
      {
        sub_1007545A4();
        sub_1007545D4();
        sub_1007545E4();
        sub_1007545B4();
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

LABEL_17:

  return _swiftEmptyArrayStorage;
}

unint64_t sub_1004B4A70()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  objc_msgSendSuper2(&v2, "layoutSubviews");
  sub_1004B4B20();
  sub_1004B4CC0();
  return sub_1004B4FB4();
}

void sub_1004B4AD8(void *a1)
{
  v1 = a1;
  sub_1004B4A70();
}

unint64_t sub_1004B4B20()
{
  v17 = *&v0[qword_10093A0F0];
  result = sub_1004B48F4();
  v2 = result;
  if (result >> 62)
  {
    result = sub_100754664();
    v3 = result;
    if (!result)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v3 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_16;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = sub_100754574();
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v0 frame];
    [v6 sizeThatFits:{v7, v8}];
    v10 = v9;
    v12 = v11;
    if (v0[qword_10093A108] == 1)
    {
      [v0 frame];
      if (v17)
      {
        if (v13 < v10)
        {
          [v0 frame];
          v10 = v15;
        }
      }

      else if (v14 < v12)
      {
        [v0 frame];
        v12 = v16;
      }
    }

    [v6 setFrame:{0.0, 0.0, v10, v12}];
  }

LABEL_16:
}

uint64_t sub_1004B4CC0()
{
  v1 = v0;
  v37 = *&v0[qword_10093A0F0];
  sub_1004B471C();
  v3 = v2;
  v4 = sub_1004B48F4();
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_100754664())
  {
    v7 = 0;
    v36 = v5 & 0xC000000000000001;
    while (1)
    {
      if (v36)
      {
        v10 = sub_100754574();
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v5 + 8 * v7 + 32);
      }

      v11 = v10;
      v12 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = [v1 traitCollection];
      v14 = sub_1007537F4();

      v8 = 0.0;
      if (v14)
      {
        [v1 bounds];
        MaxX = CGRectGetMaxX(v39);
        [v11 frame];
        v8 = MaxX - CGRectGetWidth(v40);
      }

      if (v7)
      {
        v16 = [v1 subviews];
        sub_100009D34();
        v17 = sub_1007532A4();

        if ((v17 & 0xC000000000000001) != 0)
        {
          v18 = sub_100754574();
        }

        else
        {
          if (v7 > *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v18 = *(v17 + 8 * v7 + 24);
        }

        v19 = v18;

        [v19 frame];
        v21 = v20;
        v23 = v22;
        v25 = v24;
        v27 = v26;

        if (v37)
        {
          v41.origin.x = v21;
          v41.origin.y = v23;
          v41.size.width = v25;
          v41.size.height = v27;
          v8 = v3 + CGRectGetMaxY(v41);
          v9 = 0.0;
          goto LABEL_6;
        }

        v28 = [v1 traitCollection];
        v29 = sub_1007537F4();

        v30 = v21;
        v31 = v23;
        v32 = v25;
        v33 = v27;
        if (v29)
        {
          MinX = CGRectGetMinX(*&v30);
          [v11 frame];
          v8 = MinX - (v3 + CGRectGetWidth(v42));
        }

        else
        {
          v8 = v3 + CGRectGetMaxX(*&v30);
        }
      }

      else
      {
        v9 = 0.0;
        if (v37)
        {
          goto LABEL_6;
        }
      }

      v9 = v8;
      v8 = 0.0;
LABEL_6:
      [v11 frame];
      [v11 setFrame:{v9, v8}];

      ++v7;
      if (v12 == i)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

LABEL_29:
}

unint64_t sub_1004B4FB4()
{
  v1 = v0;
  v2 = *&v0[qword_10093A0F0];
  result = sub_1004B48F4();
  v4 = result;
  if (result >> 62)
  {
    result = sub_100754664();
    v5 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_41:
  }

  v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
    goto LABEL_41;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = &selRef_viewSafeAreaInsetsDidChange;
    v31 = xmmword_1007A5A00;
    while (1)
    {
      v10 = (v4 & 0xC000000000000001) != 0 ? sub_100754574() : *(v4 + 8 * v6 + 32);
      v11 = v10;
      v12 = *&v1[qword_10093A0F8];
      if (v12 > 2)
      {
        break;
      }

      if (!v12)
      {
        [v1 bounds];
        if (v2)
        {
          CGRectGetWidth(*&v15);
        }

        else
        {
          CGRectGetHeight(*&v15);
        }

        [v11 v7[501]];
        [v11 setFrame:{v19, v31}];
        goto LABEL_7;
      }

      if (v12 != 1)
      {
        if (v12 == 2)
        {
          sub_10000C518(&unk_1009259C0);
          v13 = swift_allocObject();
          *(v13 + 16) = v31;
          *(v13 + 56) = &type metadata for String;
          *(v13 + 32) = 0xD00000000000002CLL;
          *(v13 + 40) = 0x800000010077F980;
          sub_100754814();
        }

        goto LABEL_7;
      }

      if (!v2)
      {
        [v10 v7[501]];
        [v11 setFrame:{v29, v31}];
        goto LABEL_7;
      }

      v25 = [v1 traitCollection];
      v26 = sub_1007537F4();

      v9 = 0.0;
      if (v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      v7 = &selRef_viewSafeAreaInsetsDidChange;
      [v11 frame];
      [v11 setFrame:{v9, v32, v34}];
LABEL_7:
      ++v6;

      if (v5 == v6)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 3)
    {
      [v1 bounds];
      if (v2)
      {
        v24 = CGRectGetWidth(*&v20) * 0.5;
        [v11 center];
        [v11 setCenter:v24];
      }

      else
      {
        CGRectGetHeight(*&v20);
        [v11 center];
        [v11 setCenter:?];
      }

      goto LABEL_7;
    }

    if (v12 != 4)
    {
      if (v12 != 5 || v2 != 0)
      {
        goto LABEL_7;
      }

      [v1 bounds];
      CGRectGetHeight(v39);
      [v11 v7[501]];
      CGRectGetHeight(v40);
      [v11 lastBaselineFromBottom];
      goto LABEL_39;
    }

    if (!v2)
    {
      [v1 bounds];
      CGRectGetHeight(v41);
      [v11 v7[501]];
      CGRectGetHeight(v42);
LABEL_39:
      [v11 v7[501]];
      [v11 setFrame:{v30, v33, v35}];
      goto LABEL_7;
    }

    v27 = [v1 traitCollection];
    v28 = sub_1007537F4();

    v9 = 0.0;
    if (v28)
    {
      goto LABEL_6;
    }

LABEL_5:
    [v1 bounds];
    Width = CGRectGetWidth(v37);
    [v11 frame];
    v9 = Width - CGRectGetWidth(v38);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1004B53D0(double a1, double a2, double a3)
{
  v7 = [v3 subviews];
  sub_100009D34();
  v8 = sub_1007532A4();

  if (v8 >> 62)
  {
    goto LABEL_64;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_100754664())
  {

    if (!i)
    {
      break;
    }

    v11 = *&v3[qword_10093A0F0];
    v12 = sub_1004B48F4();
    v13 = v12;
    if (v12 >> 62)
    {
      v14 = sub_100754664();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0.0;
    if (!v14)
    {
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = sub_100754574();
    }

    else
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v16 = *(v13 + 32);
    }

    v17 = v16;
    [v16 sizeThatFits:{a1, a2}];
    v20 = v19;
    v21 = v18;
    if (v3[qword_10093A108] == 1)
    {
      if (v18 <= a2)
      {
        v22 = v18;
      }

      else
      {
        v22 = a2;
      }

      if (v20 <= a1)
      {
        v23 = v20;
      }

      else
      {
        v23 = a1;
      }

      if (v11)
      {
        v20 = v23;
      }

      else
      {
        v21 = v22;
      }
    }

    if (*&v3[qword_10093A0F8] == 5)
    {
      [v17 lastBaselineFromBottom];
      v24 = a1;
      v25 = a2;
      v26 = a3;
      v28 = v27;

      v29 = v21 - v28;
      a3 = v26;
      a2 = v25;
      a1 = v24;
    }

    else
    {

      if (v20 < 0.0)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = v20;
      }

      v29 = v21;
    }

    if (v29 < 0.0)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = v29;
    }

    if (v11)
    {
      v31 = v21;
    }

    else
    {
      v31 = v20;
    }

    v32 = v31 + 0.0;
    if (v14 == 1)
    {
    }

    for (j = 5; ; ++j)
    {
      v36 = j - 4;
      if ((v13 & 0xC000000000000001) != 0)
      {
        v37 = sub_100754574();
      }

      else
      {
        if (v36 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_62;
        }

        v37 = *(v13 + 8 * j);
      }

      v38 = v37;
      v39 = __OFADD__(v36, 1);
      v40 = j - 3;
      if (v39)
      {
        break;
      }

      [v37 sizeThatFits:{a1, a2}];
      v43 = v41;
      v44 = v42;
      if (v3[qword_10093A108] == 1)
      {
        if (v11)
        {
          if (v41 > a1)
          {
            v43 = a1;
          }
        }

        else if (v42 > a2)
        {
          v44 = a2;
        }
      }

      if (*&v3[qword_10093A0F8] == 5)
      {
        [v38 lastBaselineFromBottom];
        v51 = v32;
        v45 = v15;
        v46 = a1;
        v47 = a2;
        v48 = a3;
        v50 = v49;

        v34 = v44 - v50;
        a3 = v48;
        a2 = v47;
        a1 = v46;
        v15 = v45;
        v32 = v51;
      }

      else
      {

        if (v15 <= v43)
        {
          v15 = v43;
        }

        v34 = v44;
      }

      if (v30 <= v34)
      {
        v30 = v34;
      }

      if (v11)
      {
        v35 = v44;
      }

      else
      {
        v35 = v43;
      }

      if (v35 <= 0.0)
      {
        v32 = v32 + v35;
      }

      else
      {
        v32 = v32 + v35 + a3;
      }

      if (v40 == v14)
      {
      }
    }

LABEL_63:
    __break(1u);
LABEL_64:
    ;
  }

  return result;
}

double sub_1004B5780(void *a1, double a2, double a3)
{
  v5 = a1;
  sub_1004B5770(a2, a3);
  v7 = v6;

  return v7;
}

Class sub_1004B57D4(void *a1)
{
  v1 = a1;
  sub_1004B5838();

  sub_100009D34();
  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

id sub_1004B583C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004B58B0()
{
  v1 = v0 + qword_10093A0E8;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + qword_10093A0F0) = 0;
  *(v0 + qword_10093A0F8) = 0;
  *(v0 + qword_10093A100) = 0;
  *(v0 + qword_10093A108) = 1;
  sub_100754644();
  __break(1u);
}

id sub_1004B5954()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = sub_1004B5FA0(1u, 1u);
    v4 = *(v0 + 16);
    *(v0 + 16) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1004B59B4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = sub_1004B5FA0(0, 1u);
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void sub_1004B5A14(double a1, double a2)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  sub_100754864(*&a1);
  if (a2 == 0.0)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = a2;
  }

  sub_100754864(*&v3);
}

Swift::Int sub_1004B5A64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100754834();
  sub_1004B5A14(v1, v2);
  return sub_100754884();
}

Swift::Int sub_1004B5AC0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100754834();
  sub_1004B5A14(v1, v2);
  return sub_100754884();
}

uint64_t sub_1004B5B3C()
{
  sub_10000C518(&qword_10093A240);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1007C4D30;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = xmmword_1007C4D40;
  *(v0 + 96) = xmmword_1007C4D40;
  *(v0 + 112) = xmmword_1007C4D40;
  *(v0 + 128) = xmmword_1007C4D50;
  *(v0 + 144) = xmmword_1007C4D50;
  *(v0 + 160) = xmmword_1007C4D50;
  *(v0 + 176) = xmmword_1007C4D60;
  *(v0 + 192) = xmmword_1007C4D60;
  *(v0 + 208) = xmmword_1007C4D60;
  *(v0 + 224) = xmmword_1007C4D70;
  *(v0 + 240) = xmmword_1007C4D70;
  *(v0 + 256) = xmmword_1007C4D80;
  *(v0 + 272) = xmmword_1007B5860;
  *(v0 + 288) = xmmword_1007B5860;
  *(v0 + 304) = 0x3FF0000000000000;
  *(v0 + 312) = 0;
  *(v0 + 320) = 0;
  *(v0 + 328) = 0x3FC999999999999ALL;
  *(v0 + 336) = xmmword_1007C4D90;
  *(v0 + 352) = xmmword_1007C4DA0;
  *(v0 + 368) = vdupq_n_s64(0x3FC999999999999AuLL);
  *(v0 + 384) = xmmword_1007C4DB0;
  *(v0 + 400) = xmmword_1007C4DC0;
  *(v0 + 416) = xmmword_1007C4DD0;
  *(v0 + 432) = xmmword_1007C4DE0;
  *(v0 + 448) = xmmword_1007C4DF0;
  *(v0 + 464) = xmmword_1007C4E00;
  *(v0 + 480) = xmmword_1007C4DD0;
  *(v0 + 496) = xmmword_1007C4E00;
  *(v0 + 512) = xmmword_1007C4E10;
  *(v0 + 528) = xmmword_1007C4E20;
  *(v0 + 544) = xmmword_1007C4E30;
  *(v0 + 560) = xmmword_1007C4E40;
  *(v0 + 576) = xmmword_1007C4E40;
  *(v0 + 592) = xmmword_1007C4E40;
  *(v0 + 608) = xmmword_1007C4E50;
  *(v0 + 624) = xmmword_1007C4E60;
  *(v0 + 640) = xmmword_1007C4E70;
  *(v0 + 656) = xmmword_1007C4E80;
  *(v0 + 672) = xmmword_1007C4E90;
  *(v0 + 688) = xmmword_1007C4EA0;
  *(v0 + 704) = vdupq_n_s64(0x3FD999999999999AuLL);
  *(v0 + 720) = xmmword_1007C4EB0;
  *(v0 + 736) = xmmword_1007C4EC0;
  *(v0 + 752) = xmmword_1007C4ED0;
  *(v0 + 768) = xmmword_1007C4ED0;
  *(v0 + 784) = xmmword_1007C4EE0;
  *(v0 + 800) = xmmword_1007C4EF0;
  *(v0 + 816) = xmmword_1007C4F00;
  *(v0 + 832) = xmmword_1007C4F10;
  *(v0 + 848) = xmmword_1007C4F20;
  *(v0 + 864) = xmmword_1007C4F20;
  *(v0 + 880) = xmmword_1007C4F20;
  *(v0 + 896) = xmmword_1007C4F30;
  *(v0 + 912) = xmmword_1007C4F30;
  *(v0 + 928) = xmmword_1007C4F30;
  *(v0 + 944) = xmmword_1007C4F40;
  *(v0 + 960) = xmmword_1007C4F40;
  *(v0 + 976) = xmmword_1007C4F50;
  *(v0 + 992) = xmmword_1007C4F60;
  *(v0 + 1008) = xmmword_1007C4F70;
  *(v0 + 1024) = xmmword_1007C4F70;
  *(v0 + 1040) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(v0 + 1056) = xmmword_1007C4F80;
  *(v0 + 1072) = xmmword_1007C4F90;
  *(v0 + 1088) = xmmword_1007C4FA0;
  *(v0 + 1104) = xmmword_1007C4FB0;
  *(v0 + 1120) = xmmword_1007C4FC0;
  *(v0 + 1136) = xmmword_1007C4FD0;
  *(v0 + 1152) = xmmword_1007C4FD0;
  *(v0 + 1168) = xmmword_1007C4FD0;
  *(v0 + 1184) = xmmword_1007C4FE0;
  *(v0 + 1200) = xmmword_1007C4FF0;
  *(v0 + 1216) = xmmword_1007C4FE0;
  *(v0 + 1232) = xmmword_1007C5000;
  *(v0 + 1248) = xmmword_1007C5010;
  *(v0 + 1264) = xmmword_1007C5020;
  *(v0 + 1280) = xmmword_1007C5030;
  *(v0 + 1296) = xmmword_1007C5040;
  *(v0 + 1312) = xmmword_1007C5050;
  *(v0 + 1328) = xmmword_1007C5060;
  *(v0 + 1344) = xmmword_1007C5070;
  *(v0 + 1360) = xmmword_1007C5080;
  v1 = vdupq_n_s64(0x3FE999999999999AuLL);
  *(v0 + 1376) = v1;
  *(v0 + 1392) = v1;
  *(v0 + 1408) = v1;
  *(v0 + 1424) = xmmword_1007C5090;
  *(v0 + 1440) = xmmword_1007C5090;
  *(v0 + 1456) = xmmword_1007C5090;
  *(v0 + 1472) = xmmword_1007B5850;
  *(v0 + 1488) = xmmword_1007B5850;
  *(v0 + 1504) = xmmword_1007B5850;
  *(v0 + 1520) = xmmword_1007C50A0;
  *(v0 + 1536) = xmmword_1007C50B0;
  *(v0 + 1552) = xmmword_1007C50C0;
  *(v0 + 1568) = xmmword_1007C50D0;
  *(v0 + 1584) = xmmword_1007C50E0;
  *(v0 + 1600) = xmmword_1007C50D0;
  *(v0 + 1616) = xmmword_1007C50F0;
  *(v0 + 1632) = xmmword_1007C5100;
  *(v0 + 1648) = xmmword_1007C5110;
  *(v0 + 1664) = xmmword_1007C5100;
  *(v0 + 1680) = xmmword_1007C5120;
  *(v0 + 1696) = xmmword_1007C5130;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  v7 = sub_100414150(v0);
  swift_setDeallocating();
  result = swift_deallocClassInstance();
  off_10093A190 = v7;
  return result;
}

uint64_t sub_1004B5F3C()
{

  return swift_deallocClassInstance();
}

id sub_1004B5FA0(unsigned int a1, unsigned int a2)
{
  v4 = [objc_allocWithZone(CAMutableMeshTransform) init];
  [v4 setDepthNormalization:kCADepthNormalizationMax];
  if (qword_100920D48 != -1)
  {
    swift_once();
  }

  v5 = 0;
  v6 = vdup_n_s32(a2);
  v7 = off_10093A190;
  v8 = vdup_n_s32(a1);
  v9.i64[0] = v8.u32[0];
  v9.i64[1] = v8.u32[1];
  __asm { FMOV            V1.2D, #1.0 }

  v38 = _Q1;
  v39 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  v9.i64[0] = v6.u32[0];
  v9.i64[1] = v6.u32[1];
  v37 = vcltzq_s64(vshlq_n_s64(v9, 0x3FuLL));
  if (*(off_10093A190 + 2))
  {
LABEL_4:
    v15 = *(&off_100861628 + v5 + 32);
    v16 = sub_10041264C(0.0, v15);
    if (v17)
    {
      v18 = vbslq_s8(v39, *(v7[7] + 32 * v16), *(v7[7] + 32 * v16 + 16));
      v41 = 0;
      v42 = v15;
      v43 = vbslq_s8(v37, vsubq_f64(v38, v18), v18);
      v44 = 0;
      [v4 addVertex:&v41];
    }

    if (v7[2])
    {
      v19 = sub_10041264C(0.2, v15);
      if (v20)
      {
        v21 = vbslq_s8(v39, *(v7[7] + 32 * v19), *(v7[7] + 32 * v19 + 16));
        v41 = 0x3FC999999999999ALL;
        v42 = v15;
        v43 = vbslq_s8(v37, vsubq_f64(v38, v21), v21);
        v44 = 0;
        [v4 addVertex:&v41];
      }

      if (v7[2])
      {
        v22 = sub_10041264C(0.4, v15);
        if (v23)
        {
          v24 = vbslq_s8(v39, *(v7[7] + 32 * v22), *(v7[7] + 32 * v22 + 16));
          v41 = 0x3FD999999999999ALL;
          v42 = v15;
          v43 = vbslq_s8(v37, vsubq_f64(v38, v24), v24);
          v44 = 0;
          [v4 addVertex:&v41];
        }

        if (v7[2])
        {
          v25 = sub_10041264C(0.6, v15);
          if (v26)
          {
            v27 = vbslq_s8(v39, *(v7[7] + 32 * v25), *(v7[7] + 32 * v25 + 16));
            v41 = 0x3FE3333333333333;
            v42 = v15;
            v43 = vbslq_s8(v37, vsubq_f64(v38, v27), v27);
            v44 = 0;
            [v4 addVertex:&v41];
          }

          if (v7[2])
          {
            v28 = sub_10041264C(0.8, v15);
            if (v29)
            {
              v30 = vbslq_s8(v39, *(v7[7] + 32 * v28), *(v7[7] + 32 * v28 + 16));
              v41 = 0x3FE999999999999ALL;
              v42 = v15;
              v43 = vbslq_s8(v37, vsubq_f64(v38, v30), v30);
              v44 = 0;
              [v4 addVertex:&v41];
            }

            if (v7[2])
            {
              v31 = sub_10041264C(1.0, v15);
              if (v32)
              {
                v33 = vbslq_s8(v39, *(v7[7] + 32 * v31), *(v7[7] + 32 * v31 + 16));
                v41 = 0x3FF0000000000000;
                v42 = v15;
                v43 = vbslq_s8(v37, vsubq_f64(v38, v33), v33);
                v44 = 0;
                [v4 addVertex:&v41];
              }
            }
          }
        }
      }
    }
  }

  while (v5 != 40)
  {
    v5 += 8;
    if (v7[2])
    {
      goto LABEL_4;
    }
  }

  v45 = 0uLL;
  for (i = -24; ; i += 6)
  {
    v43 = 0uLL;
    LODWORD(v41) = i + 24;
    HIDWORD(v41) = i + 25;
    v35 = vadd_s32(vdup_n_s32(i + 24), 0x600000007);
    v40 = v35.i32[0];
    v42 = *&v35;
    [v4 addFace:{&v41, *&v37, *&v38}];
    v43 = 0uLL;
    LODWORD(v41) = i + 25;
    HIDWORD(v41) = i + 26;
    LODWORD(v42) = i + 32;
    HIDWORD(v42) = v40;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 26;
    HIDWORD(v41) = i + 27;
    LODWORD(v42) = i + 33;
    HIDWORD(v42) = i + 32;
    [v4 addFace:&v41];
    v43 = 0uLL;
    LODWORD(v41) = i + 27;
    HIDWORD(v41) = i + 28;
    LODWORD(v42) = i + 34;
    HIDWORD(v42) = i + 33;
    [v4 addFace:&v41];
    v43 = v45;
    LODWORD(v41) = i + 28;
    HIDWORD(v41) = i + 29;
    LODWORD(v42) = i + 35;
    HIDWORD(v42) = i + 34;
    [v4 addFace:&v41];
    if (!i)
    {
      break;
    }
  }

  return v4;
}

unint64_t sub_1004B6424()
{
  result = qword_10093A248;
  if (!qword_10093A248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A248);
  }

  return result;
}

char *sub_1004B6478(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator;
  *&v4[v9] = [objc_allocWithZone(UIView) init];
  v17.receiver = v4;
  v17.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  v10 = objc_msgSendSuper2(&v17, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v14 = v10;
  [v14 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v14 addSubview:*&v14[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator]];
  v15 = [v14 layer];
  [v15 setZPosition:1000.0];

  return v14;
}

void sub_1004B6708(uint64_t a1)
{
  v2 = sub_10074EA34();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10000C518(&unk_10092E450);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = sub_10074BFD4();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v7 + 8))(v9, v6);
  if ((*(v3 + 88))(v5, v2) == enum case for Shelf.ContentsMetadata.todaySection(_:))
  {
    (*(v3 + 96))(v5, v2);
    v13 = v5;
    v14 = v21;
    (*(v10 + 32))(v12, v13, v21);
    v15 = v23;
    v16 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v17 = sub_10074BFB4();
    [v16 setBackgroundColor:v17];

    sub_1003D9C5C();
    sub_10074BE34();
    sub_10074BE54();
    sub_1007535D4();
    [v15 setLayoutMargins:?];
    (*(v10 + 8))(v12, v14);
  }

  else
  {
    (*(v3 + 8))(v5, v2);
    v18 = *&v23[OBJC_IVAR____TtC22SubscribePageExtension31TodayDebugSectionBackgroundView_sectionTypeIndicator];
    v19 = [objc_opt_self() clearColor];
    [v18 setBackgroundColor:v19];
  }
}

id sub_1004B6B2C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayDebugSectionBackgroundView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_1004B6B98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___ExtensionViewController_presentationGate;
  sub_1000A7FA0();
  sub_100753774();
  sub_10074E5B4();
  swift_allocObject();
  *&v3[v8] = sub_10074E554();
  v9 = OBJC_IVAR___ExtensionViewController_viewAppeared;
  sub_10074E5A4();
  swift_allocObject();
  *&v3[v9] = sub_10074E594();
  v10 = OBJC_IVAR___ExtensionViewController_viewControllerConfigured;
  swift_allocObject();
  *&v3[v10] = sub_10074E594();
  v11 = OBJC_IVAR___ExtensionViewController_didPresentRootViewController;
  swift_allocObject();
  *&v3[v11] = sub_10074E594();
  type metadata accessor for RootViewController();
  *&v3[OBJC_IVAR___ExtensionViewController_rootViewController] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (a2)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  v21.receiver = v4;
  v21.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v21, "initWithNibName:bundle:", v12, a3);

  v14 = *&v13[OBJC_IVAR___ExtensionViewController_rootViewController];
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  v16 = &v14[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  v17 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_dismissalCompletionHandler];
  *v16 = sub_1004B79D4;
  v16[1] = v15;
  v18 = v13;
  v19 = v14;
  sub_1000164A8(v17);

  sub_10074E544();

  sub_10074E544();

  sub_10074E544();

  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_10074E564();

  return v18;
}

void sub_1004B6EB0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR___ExtensionViewController_rootViewController);

    v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController];
    if (v3)
    {
      v4 = v3;
      [v4 setTransitioningDelegate:v2];
      [v4 setModalPresentationStyle:4];
      [v2 presentViewController:v4 animated:1 completion:0];
    }
  }
}

void sub_1004B712C()
{
  v1 = v0;
  if ((sub_10074E574() & 1) == 0)
  {
    v2 = *&v0[OBJC_IVAR___ExtensionViewController_rootViewController];
    [*&v1[OBJC_IVAR___ExtensionViewController_rootViewController] setModalPresentationStyle:0];
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v6[4] = sub_1004B7988;
    v6[5] = v3;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_1000CF7B0;
    v6[3] = &unk_100878160;
    v4 = _Block_copy(v6);
    v5 = v1;

    [v5 presentViewController:v2 animated:0 completion:v4];
    _Block_release(v4);
  }
}

void sub_1004B72A8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___ExtensionViewController_rootViewController);
  v21[0] = 0x44496D657469;
  v21[1] = 0xE600000000000000;
  sub_1007544E4();
  if (*(a1 + 16) && (v5 = sub_100412148(v20), (v6 & 1) != 0))
  {
    sub_10000C5B4(*(a1 + 56) + 32 * v5, v21);
    sub_100016994(v20);
    v7 = swift_dynamicCast();
    if (v7)
    {
      v8 = v18;
    }

    else
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v19;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    sub_100016994(v20);
    v8 = 0;
    v9 = 0;
  }

  [objc_opt_self() as_activatePresentationHack];
  type metadata accessor for SubscribePageBootstrap();
  v10 = swift_allocObject();

  v11 = v4;
  v12 = sub_1004B76F4(v8, v9, v11, v10);

  sub_100688F68();
  v13 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController;
  v15 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController];
  *&v11[OBJC_IVAR____TtC22SubscribePageExtension18RootViewController_childViewController] = v13;
  v16 = v13;

  [v16 setTransitioningDelegate:v11];
  [v16 setModalPresentationStyle:4];
  [v11 presentViewController:v16 animated:1 completion:0];

  v17 = *&v11[v14];

  sub_10074E584();
}

void sub_1004B75C4()
{
  v1 = OBJC_IVAR___ExtensionViewController_presentationGate;
  sub_1000A7FA0();
  sub_100753774();
  sub_10074E5B4();
  swift_allocObject();
  *(v0 + v1) = sub_10074E554();
  v2 = OBJC_IVAR___ExtensionViewController_viewAppeared;
  sub_10074E5A4();
  swift_allocObject();
  *(v0 + v2) = sub_10074E594();
  v3 = OBJC_IVAR___ExtensionViewController_viewControllerConfigured;
  swift_allocObject();
  *(v0 + v3) = sub_10074E594();
  v4 = OBJC_IVAR___ExtensionViewController_didPresentRootViewController;
  swift_allocObject();
  *(v0 + v4) = sub_10074E594();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004B76F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_10000C518(&qword_100929630);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate;
  *(a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  if (a2)
  {
    sub_10074ED14();
    v10 = sub_10074ED34();
    (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
    sub_1004B78E0(v8, a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId);
  }

  else
  {
    v11 = OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_adamId;
    v12 = sub_10074ED34();
    (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  }

  *(v9 + 8) = &off_10087C788;
  swift_unknownObjectWeakAssign();
  type metadata accessor for NavigationBarManualCheckLayoutMarginsChange();
  v13 = type metadata accessor for StoreNavigationController();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtC22SubscribePageExtension25StoreNavigationController_objectGraph] = 0;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v18.receiver = v14;
  v18.super_class = v13;
  v16 = objc_msgSendSuper2(&v18, "initWithNavigationBarClass:toolbarClass:", ObjCClassFromMetadata, 0);
  [v16 setDelegate:v16];
  *(a4 + OBJC_IVAR____TtC22SubscribePageExtension22SubscribePageBootstrap_navigationController) = v16;
  return sub_10068912C();
}

uint64_t sub_1004B78E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100929630);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004B7950()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004B79BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1004B79D4()
{
  v2.receiver = *(v0 + 16);
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dismissViewControllerAnimated:completion:", 0, 0);
}

uint64_t sub_1004B7A20()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1004B7A64()
{
  result = [objc_allocWithZone(UIColor) initWithRed:0.0156862745 green:0.0156862745 blue:0.0588235294 alpha:0.4];
  qword_10093A2D0 = result;
  return result;
}

char *sub_1004B7ABC(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_10000C518(&qword_100932560);
  __chkstk_darwin(v7 - 8);
  v9 = &v27 - v8;
  v10 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] = v10;
  sub_100743034();
  *&v3[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v27.receiver = v3;
  v27.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v27, "initWithPresentedViewController:presentingViewController:", a1, a2);
  v12 = OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView;
  v13 = *&v11[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView];
  v14 = v11;
  [v13 setAlpha:0.0];
  v15 = qword_100920D50;
  v16 = *&v11[v12];
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setBackgroundColor:qword_10093A2D0];

  v17 = OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView;
  v18 = qword_100920490;
  v19 = *&v14[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView];
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = sub_10074F0C4();
  v21 = sub_10000D0FC(v20, qword_10097E170);
  v22 = *(v20 - 8);
  (*(v22 + 16))(v9, v21, v20);
  (*(v22 + 56))(v9, 0, 1, v20);
  sub_100743014();

  v23 = [*&v14[v17] layer];
  [v23 setMaskedCorners:15];

  [*&v14[v17] _setContinuousCornerRadius:16.0];
  [*&v14[v17] setAutoresizingMask:18];
  result = [a1 view];
  if (result)
  {
    v25 = result;
    [result _setContinuousCornerRadius:16.0];

    result = [a1 view];
    if (result)
    {
      v26 = result;
      [result setClipsToBounds:1];

      return v14;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1004B7E94()
{
  v1 = [v0 containerView];
  if (!v1)
  {
    return 0.0;
  }

  v2 = v1;
  [v1 bounds];
  [v2 safeAreaInsets];
  sub_100753B14();
  v22 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = [v0 presentedViewController];
  [v2 bounds];
  v12 = v11;
  v14 = v13;
  v15 = v10;
  v16 = [v0 traitCollection];
  v17 = [v16 userInterfaceIdiom];

  if (v17)
  {
    v18 = 540.0;
  }

  else
  {
    v18 = 295.0;
  }

  v23.origin.x = 0.0;
  v23.origin.y = 0.0;
  v23.size.width = v12;
  v23.size.height = v14;
  v19 = CGRectGetWidth(v23) + -80.0;
  if (v19 < v18)
  {
    v18 = v19;
  }

  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v12;
  v24.size.height = v14;
  CGRectGetHeight(v24);

  v25.origin.x = v22;
  v25.origin.y = v5;
  v25.size.width = v7;
  v25.size.height = v9;
  v20 = CGRectGetMidX(v25) - v18 * 0.5;
  v26.origin.x = v22;
  v26.origin.y = v5;
  v26.size.width = v7;
  v26.size.height = v9;
  CGRectGetMidY(v26);

  return v20;
}

void sub_1004B81D0()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] setFrame:?];
    v2 = sub_1004B7E94();
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v9 = [v0 presentedView];
    [v9 setFrame:{v2, v4, v6, v8}];

    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] setFrame:{v2, v4, v6, v8}];
  }
}

void sub_1004B8338()
{
  v1 = [v0 containerView];
  if (v1)
  {
    v10 = v1;
    [v1 bounds];
    v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView];
    [v2 setFrame:?];
    [v10 insertSubview:v2 atIndex:0];
    v3 = [v0 presentedViewController];
    v4 = [v3 view];

    if (v4)
    {
      [v10 insertSubview:*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView] belowSubview:v4];
    }

    v5 = [v0 presentedViewController];
    v6 = [v5 transitionCoordinator];

    [v2 setAlpha:0.0];
    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v0;
      aBlock[4] = sub_1004B8890;
      aBlock[5] = v7;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1003ED3AC;
      aBlock[3] = &unk_100878250;
      v8 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      v9 = v0;

      [v6 animateAlongsideTransition:v8 completion:0];

      swift_unknownObjectRelease();
      _Block_release(v8);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

id sub_1004B85B8()
{
  v1 = [v0 presentedViewController];
  v2 = [v1 transitionCoordinator];

  if (v2)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v0;
    v8[4] = sub_1004B8818;
    v8[5] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 1107296256;
    v8[2] = sub_1003ED3AC;
    v8[3] = &unk_100878200;
    v4 = _Block_copy(v8);
    v5 = v0;

    [v2 animateAlongsideTransition:v4 completion:0];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    [*&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView] setAlpha:0.0];
    v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView];

    return [v7 setAlpha:0.0];
  }
}

uint64_t sub_1004B87E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

id sub_1004B8818()
{
  v1 = *(v0 + 16);
  [*(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_dimmingView) setAlpha:0.0];
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension35SubscribePagePresentationController_shadowView);

  return [v2 setAlpha:0.0];
}

uint64_t sub_1004B8878(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1004B8908()
{
  v0 = sub_10074F704();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745764();
  sub_1004B8B04(&qword_10093A318, &type metadata accessor for PrivacyCategory);
  sub_1007468B4();
  v4 = v10;
  if (!v10)
  {
    return 0.0;
  }

  swift_getKeyPath();
  sub_100746914();

  sub_10074F674();
  (*(v1 + 8))(v3, v0);
  v5 = sub_10007DC04();
  type metadata accessor for PrivacyCategoryView();
  swift_getObjectType();
  v10 = sub_1002EA814(v4, v5);
  sub_100750F34();
  sub_100750404();
  v7 = v6;

  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_1004B8B04(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_1004B8B50(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v53 = sub_10074AB44();
  v52 = *(v53 - 8);
  __chkstk_darwin(v53);
  v54 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v9 - 8);
  v51 = v47 - v10;
  v11 = sub_100750304();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100921160 != -1)
  {
    swift_once();
  }

  v15 = sub_100750534();
  v61 = sub_10000D0FC(v15, qword_100981158);
  v50 = *(v15 - 8);
  v16 = v50 + 16;
  v17 = *(v50 + 16);
  v17(v14, v61, v15);
  v49 = v16;
  v57 = v17;
  v60 = enum case for FontSource.useCase(_:);
  v59 = v12[13];
  v59(v14);
  v47[2] = v12 + 13;
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v18 = sub_10000D134(v64);
  v58 = v12[2];
  v58(v18, v14, v11);
  v47[1] = v12 + 2;
  sub_100750B14();
  v56 = v12[1];
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHeight;
  v19 = v61;
  v48 = v15;
  v17(v14, v61, v15);
  v20 = v60;
  v21 = v59;
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v22 = sub_10000D134(v64);
  v23 = v58;
  v58(v22, v14, v11);
  sub_100750B14();
  v24 = v56;
  v56(v14, v11);
  v47[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v25 = v19;
  v26 = v57;
  v57(v14, v25, v15);
  v21(v14, v20, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v27 = sub_10000D134(v64);
  v23(v27, v14, v11);
  sub_100750B14();
  v24(v14, v11);
  v28 = v61;
  v29 = v48;
  v26(v14, v61, v48);
  (v59)(v14, v60, v11);
  v65 = v11;
  v66 = &protocol witness table for FontSource;
  v30 = sub_10000D134(v64);
  v58(v30, v14, v11);
  v31 = v62;
  sub_100750B14();
  v56(v14, v11);
  v32 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v33 = v51;
  v57(v51, v28, v29);
  (*(v50 + 56))(v33, 0, 1, v29);
  (*(v52 + 104))(v54, enum case for DirectionalTextAlignment.none(_:), v53);
  v34 = objc_allocWithZone(sub_100745C84());
  *&v31[v32] = sub_100745C74();
  v63.receiver = v31;
  v63.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v63, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v39 = v35;
  [v39 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v40 = objc_opt_self();
  v41 = [v40 clearColor];
  [v39 setBackgroundColor:v41];

  v42 = [v40 systemGrayColor];
  [v39 setTintColor:v42];

  v43 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v44 = *&v39[OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel];
  v45 = [v39 tintColor];

  [v44 setTextColor:v45];
  [*&v39[v43] setTextAlignment:1];
  [v39 addSubview:*&v39[v43]];

  return v39;
}

void sub_1004B9360(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_100754724();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28.receiver = v5;
  v28.super_class = ObjectType;
  objc_msgSendSuper2(&v28, "drawRect:", a1, a2, a3, a4);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v16 = v15;
  v17 = *(v12 + 8);
  v17(v14, v11);
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  v30 = CGRectInset(v29, v16 * 0.5, v16 * 0.5);
  x = v30.origin.x;
  y = v30.origin.y;
  width = v30.size.width;
  height = v30.size.height;
  v22 = objc_opt_self();
  sub_1007502D4();
  sub_100750564();
  v24 = v23;
  v17(v14, v11);
  v25 = [v22 _bezierPathWithArcRoundedRect:x cornerRadius:{y, width, height, v24}];
  [v25 setLineWidth:v16];
  v26 = [v5 tintColor];
  if (v26)
  {
    v27 = v26;
    [v26 setStroke];

    [v25 stroke];
  }

  else
  {
    __break(1u);
  }
}

double sub_1004B9658(double a1)
{
  v3 = sub_100754724();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v8 = v7;
  v9 = *(v4 + 8);
  v9(v6, v3);
  v10 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel);
  sub_1007502D4();
  sub_100750564();
  v12 = v11;
  v9(v6, v3);
  v13 = fmax(v12, 1.0);
  sub_1007502D4();
  sub_100750564();
  v15 = v14;
  v9(v6, v3);
  v16 = fmax(v15, 1.0);
  [v10 sizeThatFits:{a1 - (v13 + v13), v8 - (v16 + v16)}];
  v18 = v17;
  sub_1007502D4();
  sub_100750564();
  v20 = v19;
  v9(v6, v3);
  sub_1007502D4();
  sub_100750564();
  v22 = v21;
  v9(v6, v3);
  return v18 + v20 + v20 + fmax(v22, 1.0) * 4.0;
}

uint64_t type metadata accessor for AgeRatingBadgeView()
{
  result = qword_10093A370;
  if (!qword_10093A370)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004B9B3C()
{
  result = sub_100750B04();
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

void sub_1004B9BE0()
{
  v0 = sub_10074AB44();
  v31 = *(v0 - 8);
  v32 = v0;
  __chkstk_darwin(v0);
  v33 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v2 - 8);
  v30 = v28 - v3;
  v4 = sub_100750304();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableCornerRadius;
  if (qword_100921160 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  v9 = sub_10000D0FC(v8, qword_100981158);
  v29 = *(v8 - 8);
  v10 = v29 + 16;
  v39 = *(v29 + 16);
  v40 = v8;
  v34 = v9;
  v39(v7, v9, v8);
  v28[1] = v10;
  v38 = enum case for FontSource.useCase(_:);
  v37 = v5[13];
  v37(v7);
  v41 = v5 + 13;
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v11 = sub_10000D134(v43);
  v36 = v5[2];
  v36(v11, v7, v4);
  sub_100750B14();
  v35 = v5[1];
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHeight;
  v12 = v9;
  v13 = v39;
  v39(v7, v12, v8);
  v14 = v38;
  v15 = v37;
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v16 = sub_10000D134(v43);
  v17 = v36;
  v36(v16, v7, v4);
  sub_100750B14();
  v18 = v35;
  v35(v7, v4);
  v28[0] = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_scalableHorizontalPadding;
  v13(v7, v34, v40);
  v15(v7, v14, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v19 = sub_10000D134(v43);
  v17(v19, v7, v4);
  v20 = v42;
  sub_100750B14();
  v18(v7, v4);
  v21 = v34;
  v23 = v39;
  v22 = v40;
  v39(v7, v34, v40);
  (v37)(v7, v38, v4);
  v44 = v4;
  v45 = &protocol witness table for FontSource;
  v24 = sub_10000D134(v43);
  v36(v24, v7, v4);
  sub_100750B14();
  v35(v7, v4);
  v25 = OBJC_IVAR____TtC22SubscribePageExtension18AgeRatingBadgeView_ageLabel;
  v26 = v30;
  v23(v30, v21, v22);
  (*(v29 + 56))(v26, 0, 1, v22);
  (*(v31 + 104))(v33, enum case for DirectionalTextAlignment.none(_:), v32);
  v27 = objc_allocWithZone(sub_100745C84());
  *(v20 + v25) = sub_100745C74();
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004BA184@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v10 - v6;
  sub_100747BB4();
  sub_100122174(v7);
  v8 = sub_10000C518(&unk_10092E450);
  (*(*(v8 - 8) + 48))(v4, 1, v8);
  sub_100122174(v4);
  a1[3] = sub_1007457D4();
  a1[4] = sub_10022BF6C();
  sub_10000D134(a1);
  return sub_1007457C4();
}

uint64_t sub_1004BA2C4@<X0>(uint64_t a1@<X8>)
{
  v2 = enum case for MixedMediaLockupLayout.LockupPosition.top(_:);
  v3 = sub_100749E34();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t type metadata accessor for ScreenshotsLockupCollectionViewCell()
{
  result = qword_10093A3A8;
  if (!qword_10093A3A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004BA458()
{
  sub_10000C518(&qword_1009360A8);
  sub_10002DDC8(&qword_1009360B0, &qword_1009360A8);
  sub_10074D9D4();
  sub_10000C518(&qword_100930960);
  sub_10000C518(&qword_100930968);
  if (swift_dynamicCast())
  {
    sub_10000C888(&v2, *(&v3 + 1));
    sub_100745654();
    sub_10000C620(&v2);
  }

  else
  {
    v4 = 0;
    v2 = 0u;
    v3 = 0u;
    sub_10000C8CC(&v2, &qword_100930970);
  }

  type metadata accessor for TodayCardGridTracker();
  result = sub_1007526C4();
  if (v1)
  {
    swift_beginAccess();
    *(v1 + 16) = &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_1004BA5E0(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009308D0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16[-1] - v4;
  v6 = sub_10000C518(&qword_100930828);
  __chkstk_darwin(v6 - 8);
  v8 = &v16[-1] - v7;
  sub_100016B4C(a1, &v16[-1] - v7, &qword_100930828);
  v9 = sub_10000C518(&qword_100930830);
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10000C8CC(v8, &qword_100930828);
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v16[1] = 0;
    v16[2] = 0;
  }

  else
  {
    sub_1007451A4();
    (*(v10 + 8))(v8, v9);
    v11 = sub_10074E424();
    (*(v3 + 8))(v5, v2);
    v12 = sub_10000C518(&qword_100930950);
    v13 = sub_10002DDC8(&qword_100930958, &qword_100930950);
  }

  v16[0] = v11;
  v17 = v12;
  v18 = v13;
  result = sub_100748A74();
  if (v17)
  {
    return sub_10000C620(v16);
  }

  return result;
}

void sub_1004BA870()
{
  v1 = sub_100754074();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1007541F4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v63 - v10;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong view];

    if (v14)
    {
      if ((sub_1003641A8() & 1) != 0 && !*(v0 + 24))
      {
        v72 = v2;
        v24 = [v14 window];
        v69 = v6;
        v70 = v5;
        v71 = v8;
        if (v24 && (v25 = v24, v26 = [v24 windowScene], v25, v26))
        {
          v27 = [v26 screen];

          [v27 bounds];
          v29 = v28;
          v31 = v30;
        }

        else
        {
          [v14 bounds];
          v29 = v32;
          v31 = v33;
        }

        v34 = 0;
        v35 = _swiftEmptyArrayStorage;
        v36 = 19;
        if (v29 <= v31)
        {
          v29 = v31;
        }

        v73 = v0;
        aBlock[0] = _swiftEmptyArrayStorage;
        v37 = v72;
        v68 = v14;
LABEL_15:
        if (v34 > 0x13)
        {
          v36 = v34;
        }

        v38 = v36 + 1;
        v39 = (&off_100862968 + 5 * v34);
        while (v34 != 19)
        {
          if (v38 == ++v34)
          {
            __break(1u);
            return;
          }

          v40 = (v39 + 5);
          v41 = *(v39 + 6);
          v42 = *(v39 + 64);
          v43 = v41;
          if (v42)
          {
            v43 = v29;
          }

          v39 += 5;
          if (v43 <= v29)
          {
            v44 = *(v40 + 26);
            v65 = *(v40 + 25);
            v66 = v44;
            v64 = v40[2];
            v46 = *(v40 - 1);
            v45 = *v40;
            v67 = sub_100016C60(0, &qword_100929CC0);
            v47 = swift_allocObject();
            swift_weakInit();
            v48 = swift_allocObject();
            *(v48 + 16) = v47;
            *(v48 + 24) = v46;
            *(v48 + 32) = v45;
            *(v48 + 40) = v41;
            *(v48 + 48) = v64;
            *(v48 + 56) = v42;
            v49 = v66;
            *(v48 + 57) = v65;
            *(v48 + 58) = v49;
            swift_bridgeObjectRetain_n();
            sub_100753FF4();
            sub_100753284();
            if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_100753304();
            }

            sub_100753344();
            v35 = aBlock[0];
            v37 = v72;
            v36 = 19;
            goto LABEL_15;
          }
        }

        sub_100016C60(0, &qword_1009257B8);
        v76._object = 0x800000010077FE00;
        v76._countAndFlagsBits = 0xD000000000000011;
        v77.value._countAndFlagsBits = 0;
        v77.value._object = 0;
        v75.value.super.isa = 0;
        v75.is_nil = 0;
        v50.value = 32;
        isa = sub_100753C34(v76, v77, v75, v50, 0xFFFFFFFFFFFFFFFFLL, v35, v62).super.super.isa;
        v67 = isa;
        sub_1007541E4();
        sub_1007541C4();
        v52 = sub_100753064();
        v53 = [objc_opt_self() systemImageNamed:v52];

        sub_100754194();
        sub_100754094();
        sub_1007540D4();
        (*(v37 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
        sub_100754084();
        v54 = objc_opt_self();
        v55 = [v54 systemBlueColor];
        sub_100754114();
        v56 = [v54 whiteColor];
        sub_100754124();
        v57 = swift_allocObject();
        swift_weakInit();
        sub_100016C60(0, &qword_10093B420);
        v6 = v69;
        v5 = v70;
        (*(v69 + 16))(v71, v11, v70);
        v58 = sub_100754204();
        [v58 setMenu:isa];
        [v58 setShowsMenuAsPrimaryAction:1];
        aBlock[4] = sub_1004BC5C8;
        aBlock[5] = v57;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1001A67C4;
        aBlock[3] = &unk_1008782E8;
        v59 = _Block_copy(aBlock);

        v2 = v72;

        [v58 setConfigurationUpdateHandler:v59];
        _Block_release(v59);
        v60 = *(v73 + 24);
        *(v73 + 24) = v58;
        v61 = v58;

        v8 = v71;
        sub_1004BB7C8();
        v0 = v73;

        v14 = v68;

        (*(v6 + 8))(v11, v5);
        if (sub_1003641CC())
        {
          goto LABEL_6;
        }
      }

      else if (sub_1003641CC())
      {
LABEL_6:
        if (!*(v0 + 32))
        {
          sub_1007541E4();
          v73 = v0;
          sub_1007541C4();
          v15 = sub_100753064();
          v16 = [objc_opt_self() systemImageNamed:v15];

          sub_100754194();
          sub_100754094();
          sub_1007540D4();
          (*(v2 + 104))(v4, enum case for UIButton.Configuration.CornerStyle.large(_:), v1);
          sub_100754084();
          v17 = objc_opt_self();
          v18 = [v17 systemRedColor];
          sub_100754114();
          v19 = [v17 whiteColor];
          sub_100754124();
          sub_100016C60(0, &qword_10093B420);
          (*(v6 + 16))(v8, v11, v5);
          sub_100016C60(0, &qword_100929CC0);
          sub_100753FF4();
          v20 = sub_100754204();
          v21 = *(v73 + 32);
          *(v73 + 32) = v20;
          v22 = v6;
          v23 = v20;

          sub_1004BB9B4();
          (*(v22 + 8))(v11, v5);
          return;
        }
      }
    }
  }
}

void sub_1004BB190()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v68 = [Strong view];

    if (v68)
    {
      v3 = swift_unknownObjectWeakLoadStrong();
      if (v3)
      {
        v4 = v3;
        v5 = [v3 traitCollection];

        if (v5)
        {
          v6 = *(v0 + 24);
          v7 = &selRef_initWithTitle_style_target_action_;
          v8 = &stru_1008F2000;
          if (v6)
          {
            v9 = v6;
            [v68 bounds];
            [v9 sizeThatFits:{v10, v11}];
            v13 = v12;
            v15 = v14;
            [v68 bounds];
            v16 = CGRectGetMaxX(v70) - v13;
            if (qword_100921730 != -1)
            {
              swift_once();
            }

            v17 = sub_100750B04();
            sub_10000D0FC(v17, qword_100982110);
            sub_100751034();
            sub_10000C518(&unk_1009231A0);
            v18 = swift_allocObject();
            v67 = xmmword_1007A5CF0;
            *(v18 + 16) = xmmword_1007A5CF0;
            *(v18 + 32) = v5;
            v19 = v5;
            v20 = sub_100751044();
            sub_100750544();
            v22 = v21;

            v23 = v16 - v22;
            [v68 bounds];
            MaxY = CGRectGetMaxY(v71);
            [v68 safeAreaInsets];
            v26 = MaxY - v25 - v15;
            v27 = swift_allocObject();
            *(v27 + 16) = xmmword_1007A5CF0;
            *(v27 + 32) = v19;
            v28 = v19;
            v29 = sub_100751044();
            sub_100750544();
            v31 = v30;

            v7 = &selRef_initWithTitle_style_target_action_;
            [v9 setFrame:{v23, v26 - v31, v13, v15}];

            v8 = &stru_1008F2000;
            [v68 bringSubviewToFront:v9];
          }

          v32 = *(v0 + 32);
          if (v32)
          {
            v33 = v32;
            [v68 bounds];
            [v33 sizeThatFits:{v34, v35}];
            v37 = v36;
            v39 = v38;
            v40 = *(v0 + 24);
            if (v40)
            {
              v41 = v40;
              [v41 frame];
              v42 = CGRectGetMinX(v72) - v37;
              if (qword_100921720 != -1)
              {
                swift_once();
              }

              v43 = sub_100750B04();
              sub_10000D0FC(v43, qword_1009820E0);
              sub_100751034();
              sub_10000C518(&unk_1009231A0);
              v44 = swift_allocObject();
              *(v44 + 16) = xmmword_1007A5CF0;
              *(v44 + 32) = v5;
              v45 = v5;
              v46 = sub_100751044();
              sub_100750544();
              v48 = v47;
            }

            else
            {
              [v68 bounds];
              v42 = CGRectGetMaxX(v73) - v37;
              if (qword_100921730 != -1)
              {
                swift_once();
              }

              v49 = sub_100750B04();
              sub_10000D0FC(v49, qword_100982110);
              sub_100751034();
              sub_10000C518(&unk_1009231A0);
              v50 = swift_allocObject();
              *(v50 + 16) = xmmword_1007A5CF0;
              *(v50 + 32) = v5;
              v51 = v5;
              v52 = sub_100751044();
              sub_100750544();
              v48 = v53;
            }

            v54 = v42 - v48;
            v55 = *(v0 + 24);
            if (v55)
            {
              v56 = v55;
              [v56 frame];
              MinY = CGRectGetMinY(v74);
            }

            else
            {
              [v68 bounds];
              v58 = CGRectGetMaxY(v75);
              [v68 safeAreaInsets];
              v60 = v58 - v59 - v39;
              if (qword_100921730 != -1)
              {
                swift_once();
              }

              v61 = sub_100750B04();
              sub_10000D0FC(v61, qword_100982110);
              sub_100751034();
              sub_10000C518(&unk_1009231A0);
              v62 = swift_allocObject();
              *(v62 + 16) = xmmword_1007A5CF0;
              *(v62 + 32) = v5;
              v63 = v5;
              v64 = sub_100751044();
              sub_100750544();
              v66 = v65;

              MinY = v60 - v66;
            }

            [v33 v7[72]];

            [v68 v8[229].attr];
          }
        }
      }
    }
  }
}

void sub_1004BB7C8()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1004BB9B4()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v13 = v1;
    v2 = [v13 layer];
    [v2 setShadowOffset:{0.0, 8.0}];

    v3 = [v13 layer];
    v4 = [objc_opt_self() blackColor];
    v5 = [v4 colorWithAlphaComponent:0.3];

    v6 = [v5 CGColor];
    [v3 setShadowColor:v6];

    v7 = [v13 layer];
    [v7 setShadowRadius:10.0];

    v8 = [v13 layer];
    LODWORD(v9) = 1.0;
    [v8 setShadowOpacity:v9];

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      v12 = [Strong view];

      [v12 addSubview:v13];
    }
  }
}

void sub_1004BBBA0()
{
  v1 = sub_10000C518(&qword_100930828);
  __chkstk_darwin(v1 - 8);
  v3 = &v32 - v2;
  v4 = sub_10000C518(&qword_10093A470);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - v6;
  v8 = sub_100751504();
  __chkstk_darwin(v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v34 = Strong;
  v33 = [Strong view];
  if (v33)
  {
    v10 = [v34 collectionView];
    if (v10)
    {
      v11 = v10;
      if (*(v0 + 48) && (*(v0 + 72) & 1) == 0)
      {
        if ((*(v0 + 72) & 0x100) != 0)
        {
          v16 = *(v0 + 64) + -1.0;
        }

        else
        {
          v16 = *(v0 + 56);
        }

        [v10 frame];
        v13 = v19;
        v15 = v20;
        [v33 bounds];
        Width = CGRectGetWidth(v39);
        if (v16 >= Width)
        {
          v16 = Width;
        }

        [v33 bounds];
        MinX = CGRectGetMidX(v40) + v16 * -0.5;
      }

      else
      {
        [v10 frame];
        v13 = v12;
        v15 = v14;
        [v33 bounds];
        v16 = CGRectGetWidth(v37);
        [v33 bounds];
        MinX = CGRectGetMinX(v38);
      }

      [v11 setFrame:{MinX, v13, v16, v15}];

      v22 = *(v0 + 24);
      if (v22)
      {
        [v22 updateConfiguration];
      }

      if (*(v0 + 48) && (v23 = *(v0 + 74), v23 != 2) && (v23 & 1) != 0)
      {
        v24 = v11;
        sub_100753CE4();
        sub_1007514B4();
        sub_100753CF4();

        sub_100752854();
        sub_100752824();
        if (qword_100921CD8 != -1)
        {
          swift_once();
        }

        v25 = sub_10000D0FC(v4, qword_100982DB8);
        (*(v5 + 16))(v7, v25, v4);
        v26 = ASKDeviceTypePhone;
        v35[0] = ASKDeviceTypePhone;
        type metadata accessor for DeviceType(0);
        v27 = v26;
        sub_100752544();
      }

      else
      {
        sub_1007516F4();
        v28 = v11;
        sub_100753CE4();
        sub_1007514F4();
        sub_100753CF4();

        sub_100752854();
        sub_100752824();
        if (qword_100921CD8 != -1)
        {
          swift_once();
        }

        v29 = sub_10000D0FC(v4, qword_100982DB8);
        v35[3] = v4;
        v35[4] = sub_10002DDC8(&qword_10093A478, &qword_10093A470);
        v30 = sub_10000D134(v35);
        (*(v5 + 16))(v30, v29, v4);
        sub_100752834();

        sub_10000C620(v35);
      }

      sub_1004BA458();
      v31 = sub_10000C518(&qword_100930830);
      (*(*(v31 - 8) + 56))(v3, 1, 1, v31);
      sub_1004BA5E0(v3);
      sub_10000C8CC(v3, &qword_100930828);
      [v11 reloadData];

      return;
    }

    v18 = v33;
  }

  else
  {
    v18 = v34;
  }
}

uint64_t sub_1004BC150(uint64_t a1)
{
  v3 = *(v1 + 40);
  v2 = *(v1 + 48);
  v4 = *(a1 + 16);
  *(v1 + 40) = *a1;
  *(v1 + 56) = v4;
  *(v1 + 71) = *(a1 + 31);
  if (!*(a1 + 8) || (v6 = *(v1 + 40), v5 = *(v1 + 48), , !v5))
  {
    if (!v2)
    {
      goto LABEL_12;
    }

LABEL_11:
    sub_1004BBBA0();
    goto LABEL_12;
  }

  if (!v2)
  {

    goto LABEL_11;
  }

  if (v6 == v3 && v2 == v5)
  {

    goto LABEL_12;
  }

  v7 = sub_100754754();

  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_12:
}

uint64_t sub_1004BC224(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v3 = a3[1];
  v5 = a3[2];
  v6 = a3[3];
  v7 = *(a3 + 32);
  v8 = *(a3 + 33);
  v9 = *(a3 + 34);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v8)
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12[0] = v4;
    v12[1] = v3;
    v12[2] = v5;
    v12[3] = v6;
    v14 = v9;
    v13 = v11 | v7;

    sub_1004BC150(v12);
  }

  return result;
}

uint64_t sub_1004BC2D4()
{
  v0 = sub_10000C518(&qword_100932470);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v9 - v4;
  sub_100754214();
  v6 = sub_1007541F4();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    sub_100016B4C(v5, v2, &qword_100932470);
    sub_100754224();
    return sub_10000C8CC(v5, &qword_100932470);
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 48))
      {
      }
    }

    sub_1007541C4();
    return sub_100754224();
  }
}

uint64_t sub_1004BC48C()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_1004BC500()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004BC538()
{

  return _swift_deallocObject(v0, 59, 7);
}

uint64_t sub_1004BC578(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  v5 = *(v1 + 57);
  v6 = *(v1 + 58);
  v8[0] = *(v1 + 24);
  v8[1] = v3;
  v9 = *(v1 + 40);
  v10 = v4;
  v11 = v5;
  v12 = v6;
  return sub_1004BC224(a1, v2, v8);
}

uint64_t sub_1004BC5D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1004BC5EC(void *a1, void *a2, char a3)
{
  v6 = [a1 view];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 snapshotViewAfterScreenUpdates:0];

    if (v8)
    {
      v9 = [a1 tabBar];
      [v9 frame];
      y = v44.origin.y;
      width = v44.size.width;
      height = v44.size.height;
      x = v44.origin.x;
      v37 = v44.origin.x;
      v14 = CGRectGetHeight(v44);
      v15 = 0.0;
      v45.origin.x = x;
      v45.origin.y = y;
      v45.size.width = width;
      v45.size.height = height;
      v46 = CGRectOffset(v45, 0.0, v14);
      v35 = v46.origin.y;
      v36 = v46.origin.x;
      v33 = v46.size.height;
      v34 = v46.size.width;
      v16 = a3 & 1;
      if (a3)
      {
        v17 = y;
      }

      else
      {
        x = v46.origin.x;
        v17 = v46.origin.y;
      }

      if (a3)
      {
        v18 = width;
      }

      else
      {
        v18 = v46.size.width;
      }

      if (a3)
      {
        v19 = height;
      }

      else
      {
        v19 = v46.size.height;
      }

      if (a3)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (a3)
      {
        v15 = 1.0;
      }

      v21 = [objc_allocWithZone(UIView) initWithFrame:{x, v17, v18, v19}];
      [v21 setClipsToBounds:1];
      [v21 addSubview:v8];
      [v8 setAlpha:v15];
      [v21 bounds];
      MaxY = CGRectGetMaxY(v47);
      [v8 bounds];
      v23 = MaxY - CGRectGetHeight(v48);
      [v8 frame];
      [v8 setFrame:{0.0, v23}];
      [v9 setHidden:1];

      v24 = [a2 containerView];
      [v24 addSubview:v21];

      v25 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:v20 curve:0 animations:0.233333333];
      v26 = swift_allocObject();
      *(v26 + 16) = v21;
      *(v26 + 24) = v16;
      *(v26 + 32) = v36;
      *(v26 + 40) = v35;
      *(v26 + 48) = v34;
      *(v26 + 56) = v33;
      *(v26 + 64) = v37;
      *(v26 + 72) = y;
      *(v26 + 80) = width;
      *(v26 + 88) = height;
      *(v26 + 96) = v8;
      v42 = sub_1004BCA30;
      v43 = v26;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_1000CF7B0;
      v41 = &unk_100878338;
      v27 = _Block_copy(&aBlock);
      v28 = v21;
      v29 = v8;

      [v25 addAnimations:v27];
      _Block_release(v27);
      v30 = swift_allocObject();
      *(v30 + 16) = v9;
      *(v30 + 24) = v16;
      v42 = sub_1004BCB2C;
      v43 = v30;
      aBlock = _NSConcreteStackBlock;
      v39 = 1107296256;
      v40 = sub_1001A5B50;
      v41 = &unk_100878388;
      v31 = _Block_copy(&aBlock);
      v32 = v9;

      [v25 addCompletion:v31];
      _Block_release(v31);
      [v25 startAnimation];
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1004BC9F0()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_1004BCA30()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 1.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

uint64_t sub_1004BCADC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004BCAF4()
{

  return _swift_deallocObject(v0, 25, 7);
}

id sub_1004BCB48()
{
  v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] = 0;
  v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled] = 1;
  v1 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v1 = 0;
  v1[1] = 0;
  v2 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  *v2 = 0u;
  v2[1] = 0u;
  v3 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v4 = type metadata accessor for CollectionViewTableFlowLayout();
  *v3 = 0;
  v3[1] = 0;
  v11.receiver = v0;
  v11.super_class = v4;
  v5 = objc_msgSendSuper2(&v11, "init");
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v9 = v5;
  [v9 setSectionInset:{UIEdgeInsetsZero.top, left, bottom, right}];
  [v9 setMinimumInteritemSpacing:0.0];
  [v9 setMinimumLineSpacing:0.0];
  [v9 setScrollDirection:0];

  return v9;
}

double sub_1004BCD24()
{
  v1 = [v0 collectionView];
  v2 = 0.0;
  if (v1)
  {
    v3 = v1;
    v4 = [v1 delegate];

    if (v4)
    {
      v5 = swift_dynamicCastObjCProtocolConditional();
      if (v5 && (v6 = v5, (v7 = [v0 collectionView]) != 0))
      {
        v8 = v7;
        [v6 collectionView:v7 heightForGlobalHeaderViewInTableFlowLayout:v0];
        v2 = v9;
        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }
  }

  return v2;
}

uint64_t sub_1004BCE1C()
{
  v24.receiver = v0;
  v24.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v24, "prepareLayout");
  v1 = [v0 collectionView];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    Width = CGRectGetWidth(v25);
    v4 = sub_1004BCD24();

    v5 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v5 = Width;
    v5[1] = v4;
  }

  else
  {
    v6 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
    *v6 = 0;
    *(v6 + 1) = 0;
  }

  v7 = 0.0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    v8 = [v0 collectionView];
    if (v8)
    {
      v9 = v8;
      [v8 contentInset];
      v7 = v10;
      v12 = v11;
      [v9 bounds];
      v26.origin.x = sub_10010FD98(v13, v14, v15, v16, v7, v12);
      MinY = CGRectGetMinY(v26);

      if (MinY < v7)
      {
        v7 = MinY;
      }
    }
  }

  v18 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
  v19 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  *v18 = 0.0;
  v18[1] = v7;
  *(v18 + 1) = v19;
  v20 = &v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  v21 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_pendingPrepareObserver];
  if (v21)
  {

    v21(v0);
    sub_1000164A8(v21);
    v22 = *v20;
  }

  else
  {
    v22 = 0;
  }

  *v20 = 0;
  v20[1] = 0;
  return sub_1000164A8(v22);
}

id sub_1004BD094()
{
  v1 = v0;
  isa = sub_100741704().super.isa;
  v7.receiver = v0;
  v7.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v3 = objc_msgSendSuper2(&v7, "layoutAttributesForItemAtIndexPath:", isa);

  if (v3)
  {
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000E5AA4();
      v5 = sub_100754244();
      [v5 frame];
      [v5 setFrame:?];

      return v5;
    }
  }

  return v3;
}

id sub_1004BD270(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1 == 0xD000000000000035 && 0x800000010077FF70 == a2 || (sub_100754754() & 1) != 0)
  {
    v4 = sub_100753064();
    isa = sub_100741704().super.isa;
    v6 = [objc_opt_self() layoutAttributesForSupplementaryViewOfKind:v4 withIndexPath:isa];

    [v6 setFrame:{*&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 8], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 16], *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame + 24]}];
  }

  else
  {
    v8 = sub_100753064();
    v9 = sub_100741704().super.isa;
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CollectionViewTableFlowLayout();
    v6 = objc_msgSendSuper2(&v12, "layoutAttributesForSupplementaryViewOfKind:atIndexPath:", v8, v9);

    if (v6)
    {
      if (*&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v3[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
      {
        sub_1000E5AA4();
        v11 = sub_100754244();
        [v11 frame];
        [v11 setFrame:?];

        return v11;
      }
    }
  }

  return v6;
}

id sub_1004BD430()
{
  v1 = v0;
  v2 = sub_100753064();
  isa = sub_100741704().super.isa;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v4 = objc_msgSendSuper2(&v8, "layoutAttributesForDecorationViewOfKind:atIndexPath:", v2, isa);

  if (v4)
  {
    if (*&v1[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v1[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
    {
      sub_1000E5AA4();
      v6 = sub_100754244();
      [v6 frame];
      [v6 setFrame:?];

      return v6;
    }
  }

  return v4;
}

id sub_1004BD534(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, char *))
{
  v7 = sub_1007417F4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100753094();
  v13 = v12;
  sub_100741744();
  v14 = a1;
  v15 = a5(v11, v13, v10);

  (*(v8 + 8))(v10, v7);

  return v15;
}

unint64_t sub_1004BD668(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_1007417F4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
  v14 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8];
  v46.origin.x = a1;
  v46.origin.y = a2;
  v46.size.width = a3;
  v46.size.height = a4;
  v16 = CGRectGetMinY(v46) - v14;
  if (v16 < 0.0)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = v16;
  }

  v18 = type metadata accessor for CollectionViewTableFlowLayout();
  v45.receiver = v4;
  v45.super_class = v18;
  v19 = objc_msgSendSuper2(&v45, "layoutAttributesForElementsInRect:", a1, v17, a3, a4);
  if (!v19)
  {
    return 0;
  }

  v20 = v19;
  sub_1000E5AA4();
  v21 = sub_1007532A4();

  if (v15 < COERCE_DOUBLE(1) || v14 < COERCE_DOUBLE(1))
  {
    return v21;
  }

  if (v21 >> 62)
  {
    v23 = sub_100754664();
    if (v23)
    {
      goto LABEL_11;
    }

LABEL_29:

    v21 = _swiftEmptyArrayStorage;
    goto LABEL_30;
  }

  v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_29;
  }

LABEL_11:
  v40 = v13;
  v41 = v11;
  v42 = v10;
  v43 = v5;
  v44 = _swiftEmptyArrayStorage;

  sub_1007545C4();
  if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v26 = sub_100754574();
      }

      else
      {
        v26 = *(v21 + 8 * v24 + 32);
      }

      v27 = v26;
      v28 = [v26 representedElementKind];
      if (v28)
      {
        v29 = v28;
        v30 = sub_100753094();
        v32 = v31;

        if (v30 == 0xD000000000000035 && 0x800000010077FF70 == v32)
        {

          goto LABEL_14;
        }

        v34 = sub_100754754();

        if (v34)
        {
          goto LABEL_14;
        }
      }

      v25 = sub_100754244();
      [v25 frame];
      [v25 setFrame:?];

LABEL_14:
      ++v24;
      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      if (v23 == v24)
      {
        swift_bridgeObjectRelease_n();
        v5 = v43;
        v21 = v44;
        v11 = v41;
        v10 = v42;
        v13 = v40;
LABEL_30:
        v44 = v21;
        v47.origin.x = a1;
        v47.origin.y = a2;
        v47.size.width = a3;
        v47.size.height = a4;
        if (CGRectIntersectsRect(v47, *&v5[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]))
        {
          v35 = sub_100753064();
          sub_1007417A4();
          isa = sub_100741704().super.isa;
          (*(v11 + 8))(v13, v10);
          v37 = [v5 layoutAttributesForSupplementaryViewOfKind:v35 atIndexPath:isa];

          if (v37)
          {
            v5 = v37;
            sub_100753284();
            if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              goto LABEL_33;
            }

            goto LABEL_36;
          }
        }

        return v21;
      }
    }
  }

  __break(1u);
LABEL_36:
  sub_100753304();
LABEL_33:
  sub_100753344();

  return v44;
}

id sub_1004BDB68(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v8 = sub_1007417F4();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741744();
  v12 = 0;
  if (*(a1 + OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_isSupplementaryViewAnimationEnabled) == 1)
  {
    v13 = a3;
    v14 = a1;
    isa = sub_100741704().super.isa;
    v16 = type metadata accessor for CollectionViewTableFlowLayout();
    v18.receiver = v14;
    v18.super_class = v16;
    v12 = objc_msgSendSuper2(&v18, *a5, v13, isa);
  }

  (*(v9 + 8))(v11, v8);

  return v12;
}

uint64_t sub_1004BDCC8(double a1, double a2, double a3, double a4)
{
  v9 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] < COERCE_DOUBLE(1) || *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] < COERCE_DOUBLE(1);
  if (!v9 && v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
  {
    if (CGRectGetMinY(*&a1) <= 0.0)
    {
      return 1;
    }

    MinY = CGRectGetMinY(*&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame]);
    v11 = [v4 collectionView];
    if (v11)
    {
      v12 = v11;
      [v11 contentInset];
      v14 = v13;

      if (MinY < v14)
      {
        return 1;
      }
    }

    else if (MinY < 0.0)
    {
      return 1;
    }
  }

  v16.receiver = v4;
  v16.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v16, "shouldInvalidateLayoutForBoundsChange:", a1, a2, a3, a4);
}

void *sub_1004BDE60(double a1, double a2, double a3, double a4)
{
  v21.receiver = v4;
  v21.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  v9 = objc_msgSendSuper2(&v21, "invalidationContextForBoundsChange:", a1, a2, a3, a4);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClassUnconditional();
  v11 = [v4 collectionView];
  if (v11)
  {
    v12 = v11;
    [v11 bounds];
    v14 = v13;
    v16 = v15;

    if (v14 != a3)
    {
      return v10;
    }
  }

  else
  {
    v16 = 0.0;
    if (a3 != 0.0)
    {
      return v10;
    }
  }

  if (v16 == a4 && *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize] >= COERCE_DOUBLE(1) && *&v4[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize + 8] >= COERCE_DOUBLE(1))
  {
    v18 = sub_100753064();
    sub_10000C518(&unk_1009405F0);
    sub_1007417F4();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007417A4();
    isa = sub_100753294().super.isa;

    [v10 invalidateSupplementaryElementsOfKind:v18 atIndexPaths:isa];
  }

  return v10;
}

void sub_1004BE104(void *a1)
{
  v2 = v1;
  v22.receiver = v2;
  v22.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  objc_msgSendSuper2(&v22, "invalidateLayoutWithContext:", a1);
  v4 = [a1 invalidatedSupplementaryIndexPaths];
  if (v4)
  {
    v5 = v4;
    sub_10000C518(&qword_10093A4D0);
    v6 = sub_100752F44();

    if (*(v6 + 16))
    {
      sub_1003861D0(0xD000000000000035, 0x800000010077FF70);
      v8 = v7;

      if (v8)
      {
        v9 = 0.0;
        if (v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderAvoidsOverscroll] == 1)
        {
          v10 = [v2 collectionView];
          if (v10)
          {
            v11 = v10;
            [v10 contentInset];
            v9 = v12;
            v14 = v13;
            [v11 bounds];
            v23.origin.x = sub_10010FD98(v15, v16, v17, v18, v9, v14);
            MinY = CGRectGetMinY(v23);

            if (MinY < v9)
            {
              v9 = MinY;
            }
          }
        }

        v20 = &v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderFrame];
        v21 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29CollectionViewTableFlowLayout_globalHeaderSize];
        *v20 = 0.0;
        v20[1] = v9;
        *(v20 + 1) = v21;
      }
    }

    else
    {
    }
  }
}

id sub_1004BE32C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CollectionViewTableFlowLayout();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1004BE398()
{
  sub_10000C518(&unk_1009259C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  sub_100754534(55);
  v8._object = 0x800000010077FFF0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007531B4(v8);
  v2 = [v0 description];
  v3 = sub_100753094();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007531B4(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_100754494();
}

uint64_t sub_1004BE4B8()
{
  sub_10000C518(&unk_1009259C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1007A5A00;
  sub_100754534(55);
  v8._object = 0x800000010077FFB0;
  v8._countAndFlagsBits = 0xD000000000000035;
  sub_1007531B4(v8);
  v2 = [v0 description];
  v3 = sub_100753094();
  v5 = v4;

  v9._countAndFlagsBits = v3;
  v9._object = v5;
  sub_1007531B4(v9);

  *(v1 + 56) = &type metadata for String;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  sub_100754494();
}

uint64_t sub_1004BE5D8(void *a1, unint64_t a2)
{
  v281 = a2;
  v242 = sub_100752AC4();
  v241 = *(v242 - 8);
  __chkstk_darwin(v242);
  v238 = &v228 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v239 = &v228 - v6;
  __chkstk_darwin(v7);
  v240 = &v228 - v8;
  v261 = sub_10074BD24();
  v260 = *(v261 - 8);
  __chkstk_darwin(v261);
  v262 = &v228 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10074BD44();
  v266 = *(v10 - 8);
  __chkstk_darwin(v10);
  v265 = &v228 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_10074AB44();
  v256 = *(v257 - 8);
  __chkstk_darwin(v257);
  v258 = &v228 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v13 - 8);
  v255 = &v228 - v14;
  v264 = sub_100746584();
  v263 = *(v264 - 8);
  __chkstk_darwin(v264);
  v254 = &v228 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v259 = &v228 - v17;
  __chkstk_darwin(v18);
  v253 = &v228 - v19;
  v252 = sub_100754724();
  v251 = *(v252 - 8);
  __chkstk_darwin(v252);
  v250 = &v228 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = sub_10074F704();
  v248 = *(v249 - 8);
  __chkstk_darwin(v249);
  v247 = &v228 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_100743F54();
  v245 = *(v246 - 8);
  __chkstk_darwin(v246);
  v244 = &v228 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_10074E984();
  v270 = *(v276 - 8);
  __chkstk_darwin(v276);
  v230 = &v228 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_10000C518(&qword_10092C380);
  __chkstk_darwin(v269);
  v271 = &v228 - v24;
  v25 = sub_10000C518(&unk_10092E450);
  v267 = *(v25 - 8);
  __chkstk_darwin(v25);
  v268 = &v228 - v26;
  v27 = sub_10000C518(&qword_100923228);
  __chkstk_darwin(v27);
  v29 = &v228 - v28;
  v30 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v30 - 8);
  v32 = &v228 - v31;
  v33 = sub_10000C518(&unk_100933370);
  __chkstk_darwin(v33 - 8);
  v237 = (&v228 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v35);
  v37 = &v228 - v36;
  __chkstk_darwin(v38);
  v277 = &v228 - v39;
  sub_100743FA4();
  sub_1004C1794(&qword_10092C388, &type metadata accessor for ProductMedia);
  v40 = a1;
  result = sub_1007468B4();
  v42 = v285;
  if (!v285)
  {
    return result;
  }

  v235 = v37;
  v233 = v10;
  v43 = sub_10007DC04();
  v44 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = v281;

  sub_100111078(v44);

  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v43;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v45 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
  ObjectType = swift_getObjectType();
  v280 = v43;
  [v43 pageMarginInsets];
  [v45 setSectionInset:?];

  v279 = v2;
  sub_100110F6C(v46);
  v47 = sub_100743F94();
  v48 = sub_100743F34();
  v236 = sub_100743F44();
  v272 = v49;
  v273 = v42;
  v243 = sub_100743F74();
  v275 = v50;
  v229 = sub_10000C518(&unk_1009231A0);
  v51 = swift_allocObject();
  v228 = xmmword_1007A5CF0;
  *(v51 + 16) = xmmword_1007A5CF0;
  *(v51 + 32) = v47;
  v278 = v47;

  v281 = v48;
  v231 = sub_10011D2E4(v48, v51);

  swift_getKeyPath();
  sub_100746914();

  sub_100028CD0(&v29[*(v27 + 48)], v32);
  v52 = v267;
  v53 = (v267[6])(v32, 1, v25);
  v274 = v40;
  if (v53 == 1)
  {
    sub_10000C8CC(v29, &unk_10093D6E0);
    sub_10000C8CC(v32, &unk_10093D6E0);
    v54 = v25;
    v55 = v270;
    v56 = v277;
    v57 = v276;
    v234 = *(v270 + 7);
    v234(v277, 1, 1, v276);
  }

  else
  {
    swift_getKeyPath();
    v56 = v277;
    sub_1007525B4();

    v52[1](v32, v25);
    v54 = v25;
    v55 = v270;
    v57 = v276;
    v234 = *(v270 + 7);
    v234(v56, 0, 1, v276);
    sub_10000C8CC(v29, &unk_10093D6E0);
  }

  swift_getKeyPath();
  v58 = v268;
  sub_100746914();

  swift_getKeyPath();
  v59 = v235;
  sub_1007525B4();

  v52[1](v58, v54);
  v60 = v59;
  v234(v59, 0, 1, v57);
  v61 = v269[12];
  v62 = v271;
  sub_100016B4C(v56, v271, &unk_100933370);
  sub_100016B4C(v59, v62 + v61, &unk_100933370);
  v63 = v56;
  v64 = *(v55 + 6);
  v65 = v64(v62, 1, v57);
  v276 = v281 >> 62;
  if (v65 == 1)
  {
    sub_10000C8CC(v60, &unk_100933370);
    sub_10000C8CC(v56, &unk_100933370);
    v66 = v64(v62 + v61, 1, v57);
    v67 = v279;
    if (v66 == 1)
    {
      sub_10000C8CC(v62, &unk_100933370);
LABEL_21:
      LODWORD(v277) = 0;
      v79 = 1;
      goto LABEL_26;
    }

    goto LABEL_10;
  }

  v63 = v237;
  sub_100016B4C(v62, v237, &unk_100933370);
  v68 = v64(v62 + v61, 1, v57);
  v67 = v279;
  if (v68 == 1)
  {
    sub_10000C8CC(v60, &unk_100933370);
    sub_10000C8CC(v277, &unk_100933370);
    v69 = *(v55 + 1);
    v55 = (v55 + 8);
    v69(v63, v57);
LABEL_10:
    sub_10000C8CC(v62, &qword_10092C380);
    v70 = v278;
    goto LABEL_11;
  }

  v76 = v230;
  (*(v55 + 4))(v230, v62 + v61, v57);
  sub_1004C1794(&qword_1009350D0, &type metadata accessor for Shelf.ContentType);
  v77 = sub_100753014();
  v78 = *(v55 + 1);
  v55 = (v55 + 8);
  v78(v76, v57);
  sub_10000C8CC(v60, &unk_100933370);
  sub_10000C8CC(v277, &unk_100933370);
  v78(v63, v57);
  sub_10000C8CC(v62, &unk_100933370);
  v70 = v278;
  if (v77)
  {
    goto LABEL_21;
  }

LABEL_11:
  if (!v276)
  {
    v71 = v281;
    v72 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v72)
    {
      goto LABEL_13;
    }

LABEL_23:

    *&v285 = v70;
    goto LABEL_24;
  }

  v71 = v281;
  v72 = sub_100754664();
  if (!v72)
  {
    goto LABEL_23;
  }

LABEL_13:
  v73 = v72 - 1;
  if (__OFSUB__(v72, 1))
  {
    __break(1u);
  }

  else if ((v71 & 0xC000000000000001) == 0)
  {
    if ((v73 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v73 < *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v74 = *(v71 + 8 * v73 + 32);

      *&v285 = v70;
      if (v74)
      {
        goto LABEL_18;
      }

LABEL_24:

      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_89;
  }

  v74 = sub_100754574();
  *&v285 = v70;
  if (!v74)
  {
    goto LABEL_24;
  }

LABEL_18:
  *&v282 = v74;
  sub_100744514();
  sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform);
  v75 = sub_100753014();

  if (v75)
  {
    goto LABEL_21;
  }

LABEL_25:
  v79 = 0;
  LODWORD(v277) = v231 ^ 1;
LABEL_26:
  v80 = v244;
  sub_100743F64();
  v81 = (*(v245 + 88))(v80, v246);
  LODWORD(v271) = v79;
  if (v81 != enum case for ProductMedia.DescriptionPlacement.top(_:))
  {
    v85 = v261;
    if (v81 != enum case for ProductMedia.DescriptionPlacement.bottom(_:))
    {
      result = sub_100754744();
      __break(1u);
      return result;
    }

    v86 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    v87 = *(v67 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
    if (v87)
    {
      [v87 removeFromSuperview];
      v88 = *(v67 + v86);
    }

    else
    {
      v88 = 0;
    }

    *(v67 + v86) = 0;

    [v67 setNeedsLayout];
    v270 = type metadata accessor for PlatformSelectorView();
    swift_getKeyPath();
    v127 = v247;
    sub_100746914();

    sub_10074F674();
    (*(v248 + 8))(v127, v249);
    if (v277)
    {
      if (qword_100920BA8 != -1)
      {
        swift_once();
      }

      [qword_100936900 size];
    }

    else
    {
      if (v276)
      {
        v128 = sub_100754664();
      }

      else
      {
        v128 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v128 > 1)
      {
        sub_100744514();
        v129 = swift_allocObject();
        *(v129 + 16) = v228;
        *(v129 + 32) = v278;

        v130 = sub_1007444D4();

        goto LABEL_63;
      }
    }

    sub_100744514();
    v130 = sub_1007444D4();
LABEL_63:

    if (qword_100920BB0 != -1)
    {
      swift_once();
    }

    v131 = sub_10000D0FC(v85, qword_100936908);
    sub_10074BD14();
    sub_10000C888(&v285, *(&v286 + 1));
    v132 = v250;
    sub_100536120();
    sub_100750564();
    v134 = v133;
    (*(v251 + 8))(v132, v252);
    sub_1003FD42C(v130, v134);
    sub_10000C620(&v285);
    if (v130 >> 62)
    {
      sub_100754664();
    }

    v135 = v257;

    v136 = v280;
    sub_100746574();
    v137 = sub_1003FD11C(v130, v136);

    v269 = v137;
    v138 = sub_10074BCD4();
    if (qword_100921018 != -1)
    {
      swift_once();
    }

    v139 = sub_100750534();
    v140 = sub_10000D0FC(v139, qword_100980D80);
    v141 = *(v139 - 8);
    v142 = v255;
    (*(v141 + 16))(v255, v140, v139);
    (*(v141 + 56))(v142, 0, 1, v139);
    (*(v256 + 104))(v258, enum case for DirectionalTextAlignment.none(_:), v135);
    v143 = sub_100745C84();
    v144 = objc_allocWithZone(v143);
    v145 = sub_100745C74();
    [v145 setAttributedText:v138];
    v268 = v138;
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v274 = qword_100936900;
    [qword_100936900 size];
    v146 = sub_100750F34();
    swift_allocObject();
    v147 = sub_100750F14();
    (*(v260 + 16))(v262, v131, v85);
    v148 = v263;
    v149 = v254;
    v150 = v264;
    (*(v263 + 16))(v259, v254, v264);
    *(&v286 + 1) = v143;
    v287 = &protocol witness table for UILabel;
    *&v285 = v145;
    *(&v283 + 1) = v146;
    v284 = &protocol witness table for LayoutViewPlaceholder;
    *&v282 = v147;
    v151 = v145;

    v152 = v265;
    sub_10074BD34();
    [v280 pageMarginInsets];
    sub_100753BA4();
    sub_1004C1794(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
    v115 = v233;
    sub_100750404();
    sub_100753BC4();
    v154 = v153;
    v156 = v155;

    (v266[1])(v152, v115);
    (*(v148 + 8))(v149, v150);
    v121 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
    v122 = v279;
    v157 = *(v279 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
    if (v157)
    {
      [v157 setFrame:{0.0, 0.0, v154, v156}];
      v124 = v278;
      v120 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
      goto LABEL_78;
    }

    v125 = [objc_allocWithZone(v270) initWithFrame:{0.0, 0.0, v154, v156}];
    v126 = *(v122 + v121);
    v120 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
    if (!v126)
    {
      v115 = 0;
      goto LABEL_77;
    }

    goto LABEL_74;
  }

  v82 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v83 = *(v67 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  v55 = v261;
  if (v83)
  {
    [v83 removeFromSuperview];
    v84 = *(v67 + v82);
  }

  else
  {
    v84 = 0;
  }

  *(v67 + v82) = 0;

  [v67 setNeedsLayout];
  v63 = type metadata accessor for PlatformSelectorView();
  swift_getKeyPath();
  v89 = v247;
  sub_100746914();

  sub_10074F674();
  (*(v248 + 8))(v89, v249);
  if (v277)
  {
    if (qword_100920BA8 == -1)
    {
LABEL_35:
      [qword_100936900 size];
      goto LABEL_40;
    }

LABEL_89:
    swift_once();
    goto LABEL_35;
  }

  if (v276)
  {
    v90 = sub_100754664();
  }

  else
  {
    v90 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v90 > 1)
  {
    sub_100744514();
    v91 = swift_allocObject();
    *(v91 + 16) = v228;
    *(v91 + 32) = v278;

    v92 = sub_1007444D4();

    goto LABEL_41;
  }

LABEL_40:
  sub_100744514();
  v92 = sub_1007444D4();
LABEL_41:

  if (qword_100920BB0 != -1)
  {
    swift_once();
  }

  v93 = sub_10000D0FC(v55, qword_100936908);
  sub_10074BD14();
  sub_10000C888(&v285, *(&v286 + 1));
  v94 = v250;
  sub_100536120();
  sub_100750564();
  v96 = v95;
  (*(v251 + 8))(v94, v252);
  sub_1003FD42C(v92, v96);
  sub_10000C620(&v285);
  if (v92 >> 62)
  {
    sub_100754664();
  }

  v97 = v257;

  v98 = v280;
  sub_100746574();
  v99 = sub_1003FD11C(v92, v98);

  v270 = v99;
  v100 = sub_10074BCD4();
  if (qword_100921018 != -1)
  {
    swift_once();
  }

  v268 = v63;
  v101 = sub_100750534();
  v102 = sub_10000D0FC(v101, qword_100980D80);
  v103 = *(v101 - 8);
  v104 = v255;
  (*(v103 + 16))(v255, v102, v101);
  (*(v103 + 56))(v104, 0, 1, v101);
  (*(v256 + 104))(v258, enum case for DirectionalTextAlignment.none(_:), v97);
  v105 = sub_100745C84();
  v106 = objc_allocWithZone(v105);
  v107 = sub_100745C74();
  [v107 setAttributedText:v100];
  v269 = v100;
  if (qword_100920BA8 != -1)
  {
    swift_once();
  }

  v274 = qword_100936900;
  [qword_100936900 size];
  v108 = sub_100750F34();
  swift_allocObject();
  v109 = sub_100750F14();
  (*(v260 + 16))(v262, v93, v55);
  v110 = v263;
  v111 = v253;
  v112 = v264;
  (*(v263 + 16))(v259, v253, v264);
  *(&v286 + 1) = v105;
  v287 = &protocol witness table for UILabel;
  *&v285 = v107;
  *(&v283 + 1) = v108;
  v284 = &protocol witness table for LayoutViewPlaceholder;
  *&v282 = v109;
  v113 = v107;

  v114 = v265;
  sub_10074BD34();
  [v280 pageMarginInsets];
  sub_100753BA4();
  sub_1004C1794(&qword_10092E630, &type metadata accessor for PlatformSelectorViewLayout);
  v115 = v233;
  sub_100750404();
  sub_100753BC4();
  v117 = v116;
  v119 = v118;

  (v266[1])(v114, v115);
  (*(v110 + 8))(v111, v112);
  v120 = &OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v121 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v122 = v279;
  v123 = *(v279 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  if (!v123)
  {
    v125 = [objc_allocWithZone(v268) initWithFrame:{0.0, 0.0, v117, v119}];
    v126 = *(v122 + v121);
    if (!v126)
    {
      v115 = 0;
      goto LABEL_77;
    }

LABEL_74:
    [v126 removeFromSuperview];
    v115 = *(v122 + v121);
LABEL_77:
    v124 = v278;
    *(v122 + v121) = v125;
    v158 = v125;

    v159 = [v122 contentView];
    [v159 addSubview:v158];

    [v122 setNeedsLayout];
    goto LABEL_78;
  }

  [v123 setFrame:{0.0, 0.0, v117, v119}];
  v124 = v278;
LABEL_78:
  v270 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView;
  v160 = *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_topAccessoryView);
  v161 = v281;
  if (!v160)
  {
    goto LABEL_123;
  }

  type metadata accessor for PlatformSelectorView();
  v162 = swift_dynamicCastClass();
  if (!v162)
  {
    goto LABEL_123;
  }

  v163 = v162;
  if (v277)
  {
    goto LABEL_93;
  }

  if (v276)
  {
    if (sub_100754664() > 1)
    {
      goto LABEL_83;
    }

LABEL_93:

    v164 = 0;
    goto LABEL_94;
  }

  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_93;
  }

LABEL_83:
  v161 = swift_allocObject();
  *(v161 + 16) = v228;
  *(v161 + 32) = v124;

  v164 = 1;
LABEL_94:
  v268 = v160;
  v165 = sub_1003FD52C(v161);

  if (v164)
  {
    v166 = v236;
  }

  else
  {
    v166 = v243;
  }

  v168 = &v163[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text];
  *v168 = v166;
  v168[1] = v167;

  v169 = _swiftEmptyArrayStorage;
  *&v285 = _swiftEmptyArrayStorage;
  v170 = *(v165 + 2);
  v269 = v163;
  if (v170)
  {
    v171 = 0;
    v172 = v165 + 56;
    v265 = v170 - 1;
    v169 = _swiftEmptyArrayStorage;
    v266 = (v165 + 56);
    do
    {
      v267 = v169;
      v173 = &v172[32 * v171];
      v163 = v171;
      while (1)
      {
        if (v163 >= *(v165 + 2))
        {
          __break(1u);
          goto LABEL_131;
        }

        v174 = sub_100753064();
        v175 = [objc_opt_self() _systemImageNamed:v174];

        if (v175)
        {
          break;
        }

LABEL_101:
        ++v163;
        v173 += 32;
        if (v170 == v163)
        {
          v163 = v269;
          v169 = v267;
          goto LABEL_113;
        }
      }

      if (qword_100920BA0 != -1)
      {
        swift_once();
      }

      v176 = [v175 imageWithTintColor:qword_100980200];

      if (!v176)
      {
        goto LABEL_101;
      }

      sub_100753284();
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v171 = v163 + 1;
      sub_100753344();
      v169 = v285;
      v177 = v265 == v163;
      v163 = v269;
      v172 = v266;
    }

    while (!v177);
  }

LABEL_113:
  v178 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images;
  *&v163[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images] = v169;

  v179 = *&v163[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView];
  if (v277)
  {
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v180 = v274;
  }

  else
  {
    v180 = 0;
  }

  [v179 setImage:v180];

  v181 = *&v163[v178];
  if (v181)
  {
    if (v181 >> 62)
    {
LABEL_131:
      v182 = sub_100754664();
    }

    else
    {
      v182 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }
  }

  else
  {
    v182 = 0;
  }

  *&v163[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges] = v182;
  v183 = v280;
  *&v163[OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits] = v280;
  swift_unknownObjectRelease();
  swift_unknownObjectRetain();
  sub_1003FC0B4();
  [v183 pageMarginInsets];
  [v163 setLayoutMargins:?];
  [v163 setNeedsLayout];
  v285 = 0u;
  v286 = 0u;
  v282 = 0u;
  v283 = 0u;
  v184 = v238;
  sub_100752A34();
  sub_10000C8CC(&v282, &unk_100923520);
  sub_10000C8CC(&v285, &unk_100923520);
  *&v285 = v165;
  *(&v285 + 1) = sub_1003FCE0C;
  *&v286 = 0;

  sub_10000C518(&qword_100939308);
  sub_10048176C();
  v185 = sub_100752FF4();
  v187 = v186;

  *(&v286 + 1) = &type metadata for String;
  *&v285 = v185;
  *(&v285 + 1) = v187;
  v188 = v239;
  sub_100752AA4();
  LOBYTE(v115) = v241 + 8;
  v120 = *(v241 + 8);
  v189 = v242;
  (v120)(v184, v242);
  sub_10000C8CC(&v285, &unk_100923520);
  *&v285 = v165;
  *(&v285 + 1) = sub_1003FCE18;
  *&v286 = 0;
  v190 = sub_100752FF4();
  v192 = v191;

  *(&v286 + 1) = &type metadata for String;
  *&v285 = v190;
  *(&v285 + 1) = v192;
  v193 = v240;
  sub_100752AA4();
  (v120)(v188, v189);
  sub_10000C8CC(&v285, &unk_100923520);
  sub_100753C74();

  (v120)(v193, v189);
  v124 = v278;
  v122 = v279;
  v161 = v281;
LABEL_123:
  v194 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView;
  v195 = *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_bottomAccessoryView);
  if (!v195 || (type metadata accessor for PlatformSelectorView(), (v196 = swift_dynamicCastClass()) == 0))
  {

    goto LABEL_166;
  }

  v120 = v196;
  v268 = v194;
  if (v277)
  {
    goto LABEL_133;
  }

  if (v276)
  {
    if (sub_100754664() > 1)
    {
      goto LABEL_128;
    }

LABEL_133:

    v197 = 0;
    goto LABEL_134;
  }

  if (*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 1)
  {
    goto LABEL_133;
  }

LABEL_128:
  v161 = swift_allocObject();
  *(v161 + 16) = v228;
  *(v161 + 32) = v124;

  v197 = 1;
LABEL_134:
  v267 = v195;
  v194 = sub_1003FD52C(v161);

  if (v197)
  {
    v198 = v236;
  }

  else
  {
    v198 = v243;
  }

  if (v197)
  {
    v161 = v272;
  }

  else
  {
    v161 = v275;
  }

  v199 = (v120 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_text);
  *v199 = v198;
  v199[1] = v161;

  v200 = _swiftEmptyArrayStorage;
  *&v285 = _swiftEmptyArrayStorage;
  v201 = *(v194 + 2);
  v269 = v120;
  if (v201)
  {
    v202 = 0;
    v203 = v194 + 56;
    v266 = (v201 - 1);
    v200 = _swiftEmptyArrayStorage;
    v115 = &_s7SwiftUI4ViewPAAE7toolbar7contentQrqd__yXE_tAA14ToolbarContentRd__lFQOMQ_ptr;
    v122 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    v272 = v194 + 56;
    do
    {
      v275 = v200;
      v124 = &v203[32 * v202];
      v120 = v202;
      while (1)
      {
        if (v120 >= *(v194 + 2))
        {
          __break(1u);
          goto LABEL_176;
        }

        v161 = *(v124 - 2);

        v204 = sub_100753064();
        v205 = [objc_opt_self() _systemImageNamed:v204];

        if (v205)
        {
          break;
        }

LABEL_144:
        v120 = (v120 + 1);
        v124 += 32;
        if (v201 == v120)
        {
          v120 = v269;
          v200 = v275;
          goto LABEL_156;
        }
      }

      if (qword_100920BA0 != -1)
      {
        swift_once();
      }

      v206 = [v205 imageWithTintColor:qword_100980200];

      if (!v206)
      {
        goto LABEL_144;
      }

      v161 = &v285;
      sub_100753284();
      if (*((v285 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v285 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_100753304();
      }

      v202 = (v120 + 1);
      sub_100753344();
      v200 = v285;
      v177 = v266 == v120;
      v120 = v269;
      v203 = v272;
    }

    while (!v177);
  }

LABEL_156:
  v207 = OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images;
  *(v120 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_images) = v200;

  v208 = *(v120 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_accessoryImageView);
  if (v277)
  {
    v122 = v279;
    if (qword_100920BA8 != -1)
    {
      swift_once();
    }

    v209 = v274;
  }

  else
  {
    v209 = 0;
    v122 = v279;
  }

  [v208 setImage:v209];

  v210 = *(v120 + v207);
  if (v210)
  {
    if (v210 >> 62)
    {
      goto LABEL_208;
    }

    v211 = *((v210 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  else
  {
    v211 = 0;
  }

  while (1)
  {
    *(v120 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_numberOfBadges) = v211;
    v212 = v280;
    *(v120 + OBJC_IVAR____TtC22SubscribePageExtension20PlatformSelectorView_pageTraits) = v280;
    swift_unknownObjectRelease();
    swift_unknownObjectRetain();
    sub_1003FC0B4();
    [v212 pageMarginInsets];
    [v120 setLayoutMargins:?];
    [v120 setNeedsLayout];
    v285 = 0u;
    v286 = 0u;
    v282 = 0u;
    v283 = 0u;
    v213 = v238;
    sub_100752A34();
    sub_10000C8CC(&v282, &unk_100923520);
    sub_10000C8CC(&v285, &unk_100923520);
    *&v285 = v194;
    *(&v285 + 1) = sub_1003FCE0C;
    *&v286 = 0;

    sub_10000C518(&qword_100939308);
    sub_10048176C();
    v214 = sub_100752FF4();
    v216 = v215;

    *(&v286 + 1) = &type metadata for String;
    *&v285 = v214;
    *(&v285 + 1) = v216;
    v115 = v239;
    sub_100752AA4();
    v120 = *(v241 + 8);
    v217 = v242;
    (v120)(v213, v242);
    sub_10000C8CC(&v285, &unk_100923520);
    *&v285 = v194;
    *(&v285 + 1) = sub_1003FCE18;
    *&v286 = 0;
    v218 = sub_100752FF4();
    v220 = v219;

    *(&v286 + 1) = &type metadata for String;
    *&v285 = v218;
    *(&v285 + 1) = v220;
    v221 = v240;
    sub_100752AA4();
    (v120)(v115, v217);
    sub_10000C8CC(&v285, &unk_100923520);
    sub_100753C74();

    (v120)(v221, v217);
    v124 = v278;
    v161 = v281;
    v194 = v268;
LABEL_166:
    if (v276)
    {
LABEL_176:
      v222 = sub_100754664();
      if (!v222)
      {
LABEL_177:

        goto LABEL_178;
      }
    }

    else
    {
      v222 = *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v222)
      {
        goto LABEL_177;
      }
    }

    if ((v161 & 0xC000000000000001) != 0)
    {

      v120 = sub_100754574();
      *&v285 = v124;
      if (!v120)
      {
        goto LABEL_178;
      }

LABEL_171:
      *&v282 = v120;
      sub_100744514();
      sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform);

      LOBYTE(v115) = sub_100753014();

      if (v271)
      {
        v161 = v281;
        goto LABEL_181;
      }

      if (v115)
      {
        v223 = 1;
        goto LABEL_193;
      }

LABEL_190:
      *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
      sub_1001121E4();
LABEL_195:
      v227 = *&v194[v122] != 0;
      goto LABEL_199;
    }

    if (!*((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_204:
      __break(1u);
LABEL_205:
      v225 = sub_100754574();
LABEL_186:

      *&v285 = v124;
      if (v225)
      {
        *&v282 = v225;
        sub_100744514();
        sub_1004C1794(&qword_100929290, &type metadata accessor for MediaPlatform);
        v223 = sub_100753014();

        if ((v115 & 1) == 0)
        {
          v226 = 0;
          goto LABEL_194;
        }
      }

      else
      {

        if ((v115 & 1) == 0)
        {
          goto LABEL_197;
        }

        v223 = 0;
      }

LABEL_193:
      v226 = *(v270 + v122) != 0;
LABEL_194:
      *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = v226;
      sub_1001121E4();
      if ((v223 & 1) == 0)
      {
        goto LABEL_198;
      }

      goto LABEL_195;
    }

    v120 = *(v161 + 32);

    *&v285 = v124;
    if (v120)
    {
      goto LABEL_171;
    }

LABEL_178:
    if (!v271)
    {

      goto LABEL_190;
    }

    if (!v222)
    {
      break;
    }

    LOBYTE(v115) = 0;
LABEL_181:
    v224 = v222 - 1;
    if (__OFSUB__(v222, 1))
    {
      goto LABEL_204;
    }

    if ((v161 & 0xC000000000000001) != 0)
    {
      goto LABEL_205;
    }

    if ((v224 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v224 < *((v161 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v225 = *(v161 + 8 * v224 + 32);

      goto LABEL_186;
    }

    __break(1u);
LABEL_208:
    v211 = sub_100754664();
  }

LABEL_197:
  *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysTopAccessoryDivider) = 0;
  sub_1001121E4();
LABEL_198:
  v227 = 0;
LABEL_199:
  *(v122 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_displaysBottomAccessoryDivider) = v227;
  sub_1001121F8();
  [v122 setNeedsLayout];

  swift_unknownObjectRelease();
}