uint64_t sub_1004C15E8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_100923200);
}

uint64_t sub_1004C1654(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

unint64_t sub_1004C1730()
{
  result = qword_100939318;
  if (!qword_100939318)
  {
    sub_10000C724(&unk_100939320);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100939318);
  }

  return result;
}

uint64_t sub_1004C1794(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C17DC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1004C1828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      *(result + 8) = 1;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1004C18C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100750294();
  v61 = *(v4 - 8);
  __chkstk_darwin(v4);
  v59 = &v47[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v56 = v5;
  __chkstk_darwin(v6);
  v60 = &v47[-v7];
  v8 = sub_10074ED34();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v47[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v14 = &v47[-v13];
  sub_10000C518(&qword_100930CA0);
  v15 = sub_100752DE4();
  sub_100742164();
  v16 = sub_10074ECE4();
  v17 = *(v9 + 8);
  v17(v14, v8);
  if (v16)
  {
    v51 = v16;
    v58 = v4;
    v55 = v15;
    sub_10000C518(&unk_100925780);
    sub_100752764();
    v54 = a2;
    sub_100752D34();
    swift_getObjectType();
    sub_100742164();
    v18 = sub_1007424E4();
    swift_unknownObjectRelease();
    v17(v11, v8);
    swift_getObjectType();
    v53 = v18;
    v19 = sub_100742394();
    v20 = "ActionDispatcher[ASDAppQuery]:handleOpenAppAction";
    v52 = a1;
    if (v19)
    {
      v21 = sub_100742144();
      if (v21)
      {
        v20 = "ActionDispatcher[ASDAppQuery.BetaApps]:handleOpenAppAction";
        v22 = 58;
      }

      else
      {
        v22 = 49;
      }
    }

    else
    {
      v21 = 0;
      v22 = 49;
    }

    v49 = v20;
    sub_100752A04();
    sub_1007529F4();
    v25 = v60;
    sub_100750284();
    sub_1007538D4();
    v26 = sub_1007529F4();
    sub_100750274();

    sub_10000C518(&unk_1009231A0);
    v27 = swift_allocObject();
    *(v27 + 16) = xmmword_1007A5CF0;
    v28 = v51;
    *(v27 + 32) = v51;
    sub_100016C60(0, &qword_10092BE20);
    v50 = v28;
    v29.super.isa = sub_100753294().super.isa;

    v30 = objc_opt_self();
    v31 = &selRef_queryForBetaAppsWithStoreItemIDs_;
    v48 = v21 & 1;
    if ((v21 & 1) == 0)
    {
      v31 = &selRef_queryForStoreItemIDs_;
    }

    v51 = [v30 *v31];

    v32 = v61;
    (*(v61 + 16))(v59, v25, v58);
    sub_1004C3120(v57, v63);
    v33 = (*(v32 + 80) + 33) & ~*(v32 + 80);
    v34 = v33 + v56;
    v35 = (((v33 + v56) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
    v37 = v22;
    v38 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
    v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    *(v40 + 16) = v49;
    *(v40 + 24) = v37;
    *(v40 + 32) = 2;
    v41 = v58;
    (*(v32 + 32))(v40 + v33, v59, v58);
    *(v40 + v34) = v48;
    *(v40 + (v34 & 0xFFFFFFFFFFFFFFF8) + 8) = v52;
    sub_1004C3244(v63, v40 + v35);
    v15 = v55;
    *(v40 + v36) = v54;
    *(v40 + v38) = v15;
    v42 = v50;
    *(v40 + v39) = v50;
    aBlock[4] = sub_1004C327C;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10071450C;
    aBlock[3] = &unk_100878458;
    v43 = _Block_copy(aBlock);
    v44 = v42;

    v45 = v51;
    [v51 executeQueryWithResultHandler:v43];
    _Block_release(v43);

    swift_unknownObjectRelease();
    (*(v61 + 8))(v60, v41);
  }

  else
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v23 = sub_100752E44();
    sub_10000D0FC(v23, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5A00;
    sub_1007523A4();
    sub_100752D04();

    sub_1004C30CC();
    swift_allocError();
    *v24 = 0;
    sub_100752DA4();
  }

  return v15;
}

void sub_1004C1FB4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  v45 = a7;
  v46 = a8;
  v47 = a11;
  v44 = a10;
  v13 = sub_10074ED34();
  __chkstk_darwin(v13 - 8);
  v41[1] = v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100752614();
  __chkstk_darwin(v15 - 8);
  v43 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100748314();
  v42 = *(v17 - 8);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v20 = v41 - v19;
  v21 = sub_1007538C4();
  sub_100752A04();
  v22 = sub_1007529F4();
  sub_100750274();

  if (!a1)
  {
    goto LABEL_13;
  }

  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_13:
    if (v45)
    {
      sub_10074ECB4();
      sub_100742164();
      sub_100742134();
      sub_10074EC84();
      sub_10074EC64();
      sub_100742174();
      swift_allocObject();
      v37 = sub_100742154();
      sub_10052ADAC(v37, 1, v44);
      sub_100752D54();

      return;
    }

    v21 = a12;
    if (qword_100921EE0 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (!sub_100754664())
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) == 0)
  {
    v23 = v46;
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(a1 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_19:
    swift_once();
LABEL_16:
    v38 = sub_100752E44();
    sub_10000D0FC(v38, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A5620;
    sub_1007523A4();
    v51 = sub_100016C60(0, &qword_10092BE20);
    aBlock = v21;
    v39 = v21;
    sub_1007523B4();
    sub_1000277BC(&aBlock);
    sub_1007523A4();
    sub_100752D04();

    sub_1004C30CC();
    swift_allocError();
    *v40 = 1;
    sub_100752DA4();

    return;
  }

  v24 = sub_100754574();
  v23 = v46;
LABEL_7:
  sub_100742134();
  v25 = v42;
  v26 = (*(v42 + 88))(v20, v17);
  if (v26 == enum case for OpenableDestination.app(_:))
  {
    v27 = [v24 bundleID];
    sub_100753094();

    sub_1007525F4();
    sub_100386760(_swiftEmptyArrayStorage);
    sub_10074CB04();
    swift_allocObject();
    sub_10074CAF4();

    v29 = v44;
    sub_10052ADF4(v28, 1, v44);

    v30 = objc_opt_self();
    sub_1004C3120(a9, v54);
    v31 = swift_allocObject();
    sub_1004C3244(v54, (v31 + 2));
    v31[4] = v23;
    v31[5] = v29;
    v31[6] = v47;
    v52 = sub_1004C353C;
    v53 = v31;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004C2E50;
    v51 = &unk_1008784F8;
    v32 = _Block_copy(&aBlock);

    [v30 launchApp:v24 withResultHandler:v32];

    _Block_release(v32);
  }

  else if (v26 == enum case for OpenableDestination.messages(_:))
  {
    v33 = objc_opt_self();
    sub_1004C3120(a9, v54);
    v34 = swift_allocObject();
    sub_1004C3244(v54, (v34 + 2));
    v35 = v44;
    v34[4] = v23;
    v34[5] = v35;
    v34[6] = v47;
    v52 = sub_1004C3384;
    v53 = v34;
    aBlock = _NSConcreteStackBlock;
    v49 = 1107296256;
    v50 = sub_1004C2E50;
    v51 = &unk_1008784A8;
    v36 = _Block_copy(&aBlock);

    [v33 launchMessagesExtensionForApp:v24 withResultHandler:v36];

    _Block_release(v36);
  }

  else
  {

    (*(v25 + 8))(v20, v17);
  }
}

uint64_t sub_1004C2770(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[0] = a3;
  v27[1] = a2;
  v5 = sub_100752624();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1007521E4();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100752224();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v25 = sub_100752E44();
    sub_10000D0FC(v25, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v29 = sub_10074ED34();
    sub_10000D134(aBlock);
    sub_100742164();
    sub_1007523B4();
    sub_1000277BC(aBlock);
    sub_100752D04();

    sub_10000C518(&qword_100930CA0);
    sub_1004C30CC();
    swift_allocError();
    v24 = 1;
    goto LABEL_9;
  }

  if (a1 == 1)
  {
    v18 = v15;
    sub_100016C60(0, &qword_100926D00);
    v19 = sub_100753774();
    sub_1004C3120(v3, v32);
    v20 = swift_allocObject();
    sub_1004C3244(v32, v20 + 16);
    *(v20 + 32) = v27[0];
    v30 = sub_1004C3464;
    v31 = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CF7B0;
    v29 = &unk_100878548;
    v21 = _Block_copy(aBlock);

    sub_100752204();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1004C3470(&qword_1009236B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10000C518(&unk_10092F750);
    sub_1000A8054();
    sub_1007543A4();
    sub_100753784();
    _Block_release(v21);

    (*(v10 + 8))(v12, v9);
    (*(v14 + 8))(v17, v18);
    if (qword_100921EE0 != -1)
    {
      swift_once();
    }

    v22 = sub_100752E44();
    sub_10000D0FC(v22, qword_100983318);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v29 = sub_10074ED34();
    sub_10000D134(aBlock);
    sub_100742164();
    sub_1007523B4();
    sub_1000277BC(aBlock);
    sub_100752D04();

    sub_10000C518(&qword_100930CA0);
    sub_1004C30CC();
    swift_allocError();
    v24 = 2;
LABEL_9:
    *v23 = v24;
    return sub_100752D74();
  }

  sub_10000C518(&qword_100930CA0);
  (*(v6 + 104))(v8, enum case for ActionOutcome.performed(_:), v5);
  return sub_100752D84();
}

uint64_t sub_1004C2E50(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004C2EA4(uint64_t a1, uint64_t a2)
{
  v3 = sub_100745B04();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100752614();
  __chkstk_darwin(v7 - 8);
  v11._object = 0x8000000100780240;
  v11._countAndFlagsBits = 0xD00000000000001FLL;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  sub_1007458B4(v11, v13);
  v12._countAndFlagsBits = 0xD000000000000021;
  v12._object = 0x8000000100780260;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  sub_1007458B4(v12, v14);
  sub_1007525F4();
  (*(v4 + 104))(v6, enum case for AlertActionStyle.normal(_:), v3);
  sub_100743144();
  swift_allocObject();
  v8 = sub_100743114();
  sub_10052AE0C(v8, 1, a2);
}

unint64_t sub_1004C30CC()
{
  result = qword_10093A4D8;
  if (!qword_10093A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4D8);
  }

  return result;
}

uint64_t sub_1004C3158()
{
  v1 = sub_100750294();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (((((((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

void sub_1004C327C(unint64_t a1, uint64_t a2)
{
  v5 = *(sub_100750294() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = ((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_1004C1FB4(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), v2 + v6, *(v2 + v7), *(v2 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8), v2 + v8, *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1004C3368(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004C3388()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1004C33D8(uint64_t a1)
{
  sub_1004C2770(a1, *(v1 + 32), *(v1 + 40));
  sub_100752D54();
}

uint64_t sub_1004C3424()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1004C3470(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1004C34CC()
{
  result = qword_10093A4E0;
  if (!qword_10093A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4E0);
  }

  return result;
}

unint64_t sub_1004C3554()
{
  result = qword_10093A4E8;
  if (!qword_10093A4E8)
  {
    sub_1007436A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4E8);
  }

  return result;
}

uint64_t sub_1004C35AC()
{
  v0 = sub_100752624();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100743694();
  sub_10000C518(&qword_100930CA0);
  (*(v1 + 104))(v3, enum case for ActionOutcome.performed(_:), v0);
  return sub_100752D84();
}

unint64_t sub_1004C36B8()
{
  result = qword_10093A4F0;
  if (!qword_10093A4F0)
  {
    sub_100747624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4F0);
  }

  return result;
}

uint64_t sub_1004C3710(void *a1)
{
  v2 = sub_100752624();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 success])
  {
    (*(v3 + 104))(v6, enum case for ActionOutcome.performed(_:), v2);
    sub_100752DB4();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v8 = [a1 error];
    sub_1004C3CA0();
    swift_allocError();
    *v9 = v8;
    sub_100752DA4();
  }
}

uint64_t sub_1004C3894()
{
  v0 = sub_100747604();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = aBlock - v5;
  sub_10000C518(&qword_100930CA0);
  v7 = sub_100752DE4();
  Strong = swift_unknownObjectUnownedLoadStrong();
  v9 = sub_100378B58(Strong);

  sub_100747614();
  (*(v1 + 16))(v3, v6, v0);
  v10 = (*(v1 + 88))(v3, v0);
  if (v10 == enum case for FamilyCircleAction.EventType.initiate(_:))
  {
    v11 = *(v1 + 8);
    v12 = FACircleEventTypeInitiate;
    v11(v6, v0);
  }

  else
  {
    v13 = *(v1 + 8);
    if (v10 == enum case for FamilyCircleAction.EventType.addFamilyMember(_:))
    {
      v12 = FACircleEventTypeAddFamilyMemberV3;
      v14 = v6;
    }

    else
    {
      v12 = FACircleEventTypeInitiate;
      v13(v6, v0);
      v14 = v3;
    }

    v13(v14, v0);
  }

  v15 = [objc_allocWithZone(FACircleContext) initWithEventType:v12];

  sub_1007475E4();
  v16 = sub_100753064();

  [v15 setClientName:v16];

  v17 = [objc_opt_self() mainBundle];
  v18 = [v17 bundleIdentifier];

  [v15 setClientBundleID:v18];
  if (sub_1007475F4())
  {
    v19.super.isa = sub_100752F34().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  [v15 setAdditionalParameters:v19.super.isa];

  v20 = [objc_allocWithZone(FACircleStateController) initWithPresenter:v9];
  aBlock[4] = sub_1004C3C80;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A67C4;
  aBlock[3] = &unk_1008786A0;
  v21 = _Block_copy(aBlock);

  [v20 performWithContext:v15 completion:v21];
  _Block_release(v21);

  return v7;
}

uint64_t sub_1004C3C88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1004C3CA0()
{
  result = qword_10093A4F8;
  if (!qword_10093A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A4F8);
  }

  return result;
}

uint64_t sub_1004C3CF4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1004C3D50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_1004C3DB0(char *a1, double a2, double a3, double a4, double a5)
{
  ObjectType = swift_getObjectType();
  v11 = &a1[qword_1009805D8];
  v12 = sub_1007433C4();
  *v11 = 0;
  *(v11 + 1) = 0;
  v13 = [objc_allocWithZone(v12) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&a1[qword_1009805D0] = v13;
  v15.receiver = a1;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, "initWithFrame:", a2, a3, a4, a5);
}

uint64_t type metadata accessor for FramedArtworkCollectionViewCell()
{
  result = qword_10093A528;
  if (!qword_10093A528)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004C3FA4()
{
  sub_100743204();
  sub_1007433C4();
  sub_1004C4094(&qword_100925570, &type metadata accessor for ArtworkView);
  return sub_100744274();
}

uint64_t sub_1004C403C(uint64_t a1)
{
  result = sub_1004C4094(&qword_10093A6B0, type metadata accessor for FramedArtworkCollectionViewCell);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1004C4094(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004C40DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_objectGraph) = a3;

  sub_100111078(v8);

  v9 = [a6 snapshotPageTraitEnvironment];
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_pageTraits) = v9;
  swift_unknownObjectRelease();
  v10 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension30ProductMediaCollectionViewCell_flowLayout);
  [a6 pageMarginInsets];
  [v10 setSectionInset:?];

  return sub_100110F6C(v11);
}

uint64_t sub_1004C4270(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004C42BC()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = sub_1007537B4();

  if ((v6 & 1) == 0)
  {
    if (v4 < v2)
    {
LABEL_7:
      JUScreenClassGetLandscapeWidth();
      return;
    }

    goto LABEL_10;
  }

  if (v4 >= v2)
  {
    if (v2 == 744.0)
    {
      return;
    }

    JUScreenClassGetPortraitWidth();
    if (v2 <= v8)
    {
      return;
    }

LABEL_10:
    JUScreenClassGetPortraitWidth();
    return;
  }

  if (v2 != 1133.0)
  {
    JUScreenClassGetLandscapeWidth();
    if (v2 > v7)
    {
      goto LABEL_7;
    }
  }
}

id sub_1004C449C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnapshotPageTraitEnvironment();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void UIViewController.pageContainerSize.getter()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
  }

  else
  {
    __break(1u);
  }
}

id UIViewController.snapshotPageTraitEnvironment.getter()
{
  [v0 pageContainerSize];
  v2 = v1;
  v4 = v3;
  v5 = [v0 traitCollection];
  v6 = type metadata accessor for SnapshotPageTraitEnvironment();
  v7 = objc_allocWithZone(v6);
  v8 = &v7[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v8 = v2;
  *(v8 + 1) = v4;
  *&v7[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v5;
  v10.receiver = v7;
  v10.super_class = v6;
  return objc_msgSendSuper2(&v10, "init");
}

uint64_t MetadataRibbonBarViewLayout.Metrics.standard.unsafeMutableAddressor()
{
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v0 = sub_10074C354();

  return sub_10000D0FC(v0, static MetadataRibbonBarViewLayout.Metrics.standard);
}

char *sub_1004C47E4(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10074C354();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v42[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v16 = sub_10000D0FC(v11, static MetadataRibbonBarViewLayout.Metrics.standard);
  v17 = *(v12 + 16);
  v17(&v5[v15], v16, v11);
  v18 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  v19 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  v20 = sub_100749D24();
  (*(*(v20 - 8) + 56))(&v5[v19], 1, 1, v20);
  v21 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth];
  *v21 = 0;
  v21[8] = 1;
  v22 = &v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold];
  *v22 = 0;
  v22[8] = 1;
  v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation] = 2;
  sub_100745C84();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel] = sub_100745C64();
  v43.receiver = v5;
  v43.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v43, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v27 = v23;
  [v27 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v28 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel;
  v29 = *&v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 separatorColor];
  [v31 setTextColor:v32];

  v33 = *&v27[v28];
  v17(v14, &v27[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics], v11);
  v34 = v33;
  v35 = sub_10074C344();
  (*(v12 + 8))(v14, v11);
  [v34 setNumberOfLines:v35];

  v36 = *&v27[v28];
  sub_1007509A4();
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v37 = sub_10074A584();
  v38 = sub_10000D0FC(v37, qword_10097D9F0);
  v42[3] = v37;
  v42[4] = sub_1002371F8();
  v39 = sub_10000D134(v42);
  (*(*(v37 - 8) + 16))(v39, v38, v37);
  sub_100745BC4();

  [v27 addSubview:*&v27[v28]];
  return v27;
}

uint64_t sub_1004C4C2C()
{
  ObjectType = swift_getObjectType();
  v18 = sub_100750354();
  v2 = *(v18 - 8);
  __chkstk_darwin(v18);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10074C354();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10074C364();
  v9 = *(v17 - 8);
  *&v10 = __chkstk_darwin(v17).n128_u64[0];
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.receiver = v0;
  v22.super_class = ObjectType;
  objc_msgSendSuper2(&v22, "layoutSubviews", v10);
  v13 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  v20 = sub_100745C84();
  v21 = &protocol witness table for UILabel;
  v19 = v13;
  (*(v6 + 16))(v8, &v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics], v5);
  v14 = v13;
  sub_10074C304();
  sub_1007477B4();
  sub_10074C324();
  (*(v2 + 8))(v4, v18);
  return (*(v9 + 8))(v12, v17);
}

uint64_t sub_1004C51C0()
{
  sub_100747914();
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_dividerLabel];
  if (v2)
  {
    v3 = sub_100753064();
  }

  else
  {
    v3 = 0;
  }

  [v1 setText:v3];

  [v0 setNeedsLayout];
}

uint64_t sub_1004C5254@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &qword_100924B30);
}

uint64_t sub_1004C52BC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &qword_100924B30);
  return swift_endAccess();
}

uint64_t sub_1004C5398(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1004C5464(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  result = swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  return result;
}

uint64_t sub_1004C5524()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1004C5568(char a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1004C5618@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  return sub_100016B4C(v1 + v3, a1, &unk_1009276E0);
}

uint64_t sub_1004C5680(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  swift_beginAccess();
  sub_10006644C(a1, v1 + v3, &unk_1009276E0);
  return swift_endAccess();
}

uint64_t sub_1004C5750()
{
  v0 = sub_10000C518(&unk_100923180);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v6 - v2;
  v4 = sub_10074C354();
  sub_100039C50(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000D0FC(v4, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_10000C518(&unk_100923AE0);
  sub_100743564();
  sub_10074C334();
  return (*(v1 + 8))(v3, v0);
}

uint64_t static MetadataRibbonBarViewLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C354();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t type metadata accessor for MetadataRibbonBarView()
{
  result = qword_10093A778;
  if (!qword_10093A778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004C598C()
{
  sub_10074C354();
  if (v0 <= 0x3F)
  {
    sub_1000D9E5C();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

double sub_1004C5A80(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v31 = a1;
  v2 = sub_10074C354();
  v34 = *(v2 - 8);
  __chkstk_darwin(v2);
  v33 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10074C364();
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_100750BD4();
  v29 = *(v30 - 8);
  __chkstk_darwin(v30);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100750E94();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v27 - v13;
  __chkstk_darwin(v15);
  v17 = &v27 - v16;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v18 = sub_10000D0FC(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  sub_100750E84();
  sub_1007509A4();
  v28 = v2;
  if (qword_100920210 != -1)
  {
    swift_once();
  }

  v19 = sub_10074A584();
  v20 = sub_10000D0FC(v19, qword_10097D9F0);
  v39[3] = v19;
  v39[4] = sub_1002371F8();
  v21 = sub_10000D134(v39);
  (*(*(v19 - 8) + 16))(v21, v20, v19);
  sub_100750DE4();
  v22 = *(v9 + 8);
  v22(v11, v8);
  sub_10000C620(v39);
  sub_10074C344();
  sub_100750E74();
  v22(v14, v8);
  sub_100747914();
  (*(v9 + 16))(v14, v17, v8);
  sub_100750BB4();
  sub_100750BF4();
  sub_100750BA4();
  (*(v29 + 8))(v7, v30);
  sub_10000C824(v39, v38);
  (*(v34 + 16))(v33, v18, v28);
  v23 = v32;
  sub_10074C304();
  sub_10074C314();
  v25 = v24;
  (*(v35 + 8))(v23, v36);
  sub_10000C620(v39);
  v22(v17, v8);
  return v25;
}

void sub_1004C5F74()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_metrics;
  if (qword_100920D58 != -1)
  {
    swift_once();
  }

  v2 = sub_10074C354();
  v3 = sub_10000D0FC(v2, static MetadataRibbonBarViewLayout.Metrics.standard);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_id;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  v5 = OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_itemType;
  v6 = sub_100749D24();
  (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  v7 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_labelMaxWidth;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_truncationLegibilityThreshold;
  *v8 = 0;
  *(v8 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension21MetadataRibbonBarView_allowsTruncation) = 2;
  sub_100754644();
  __break(1u);
}

uint64_t sub_1004C6108()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100933290);
  __chkstk_darwin(v2 - 8);
  v4 = v8 - v3;
  v8[1] = sub_1007445A4();
  sub_100743EB4();
  sub_100752764();
  sub_1004C6A2C(&qword_100933028, &type metadata accessor for LinkableText);
  sub_100752684();

  v5 = sub_10000C518(&unk_1009332A0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31PrivacyFooterCollectionViewCell_bodyText;
  swift_beginAccess();
  sub_1004C6484(v4, v1 + v6);
  swift_endAccess();
  sub_10014C36C();
  return sub_1004C64F4(v4);
}

uint64_t sub_1004C62AC()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100921718 != -1)
  {
    swift_once();
  }

  v4 = sub_100750B04();
  sub_10000D0FC(v4, qword_1009820C8);
  sub_1007502D4();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_1004C6484(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&unk_100933290);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004C64F4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_100933290);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1004C655C(void *a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  v33[0] = a1;
  v7 = sub_100748494();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1007484B4();
  v34 = *(v11 - 8);
  v35 = v11;
  __chkstk_darwin(v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10074CD14();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100038D38();
  if (qword_100921248 != -1)
  {
    swift_once();
  }

  v18 = sub_100750534();
  sub_10000D0FC(v18, qword_100981410);
  v19 = [a5 traitCollection];
  v33[1] = a5;
  v20 = v19;
  v21 = sub_100753C14();

  sub_1007445A4();
  sub_100743E94();

  v22 = sub_100743074();

  v23 = sub_10074F3F4();
  v38 = v23;
  v39 = sub_1004C6A2C(&qword_10092AC70, &type metadata accessor for Feature);
  v24 = sub_10000D134(v37);
  (*(*(v23 - 8) + 104))(v24, enum case for Feature.measurement_with_labelplaceholder(_:), v23);
  v33[0] = v22;
  v25 = v21;
  sub_10074FC74();
  sub_10000C620(v37);
  sub_10074CCD4();
  sub_10074CCE4();
  (*(v15 + 8))(v17, v14);
  if (qword_100920350 != -1)
  {
    swift_once();
  }

  v26 = sub_10000D0FC(v7, qword_10097DD00);
  (*(v8 + 16))(v10, v26, v7);
  v27 = v38;
  v28 = v39;
  v29 = sub_10000C888(v37, v38);
  v36[3] = v27;
  v36[4] = *(v28 + 8);
  v30 = sub_10000D134(v36);
  (*(*(v27 - 8) + 16))(v30, v29, v27);
  sub_1007484A4();
  sub_1004C6A2C(&unk_100923AC0, &type metadata accessor for PrivacyFooterLayout);
  v31 = v35;
  sub_100750404();

  (*(v34 + 8))(v13, v31);
  sub_10000C620(v37);
  return a2;
}

uint64_t sub_1004C6A2C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004C6A74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v11 = a1;
    v12 = v11;
    if ((a5 & 1) != 0 && ([v11 size], v14 = v13, objc_msgSend(v12, "size"), v15 < v14) && (v16 = objc_msgSend(v12, "CGImage")) != 0)
    {
      v17 = v16;
      [v12 scale];
      v19 = [objc_allocWithZone(UIImage) initWithCGImage:v17 scale:2 orientation:v18];
    }

    else
    {
      v19 = v12;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v21 = Strong;
      swift_beginAccess();
      v22 = *(v21 + 16);
      if ((v22 & 0xC000000000000001) != 0)
      {
        if (v22 < 0)
        {
          v23 = *(v21 + 16);
        }

        else
        {
          v23 = v22 & 0xFFFFFFFFFFFFFF8;
        }

        v24 = v19;
        v25 = sub_100754614();
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return;
        }

        *(v21 + 16) = sub_1004C6D20(v23, v25 + 1);
      }

      else
      {
        v26 = v19;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = *(v21 + 16);
      sub_100674504(v19, a7, isUniquelyReferenced_nonNull_native);
      *(v21 + 16) = v32;
      swift_endAccess();
    }

    swift_beginAccess();
    v28 = swift_weakLoadStrong();
    if (v28)
    {
      v29 = v28;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v30 = *(v29 + 32);
        ObjectType = swift_getObjectType();
        (*(v30 + 8))(v29, v19, a8, ObjectType, v30);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

uint64_t sub_1004C6CBC()
{

  sub_10000C4F0(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1004C6D20(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_10000C518(&qword_100936D28);
    v2 = sub_1007546A4();
    v19 = v2;
    sub_100754604();
    v3 = sub_100754634();
    if (v3)
    {
      v4 = v3;
      sub_10074F3D4();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1004C6F5C();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_100673214(v12 + 1, 1);
        }

        v2 = v19;
        sub_1004C6FA8();
        result = sub_100752FA4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_100754634();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

unint64_t sub_1004C6F5C()
{
  result = qword_10092B280;
  if (!qword_10092B280)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10092B280);
  }

  return result;
}

unint64_t sub_1004C6FA8()
{
  result = qword_100936D20;
  if (!qword_100936D20)
  {
    sub_10074F3D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100936D20);
  }

  return result;
}

void *sub_1004C7000(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v3)
  {
    sub_1007545C4();
    v6 = a1 + 48;
    do
    {

      if (a2)
      {
        sub_10074F114();
      }

      sub_10074F374();

      sub_1007545A4();
      sub_1007545D4();
      sub_1007545E4();
      sub_1007545B4();
      v6 += 24;
      --v3;
    }

    while (v3);
    return _swiftEmptyArrayStorage;
  }

  return result;
}

double sub_1004C7138(uint64_t a1, void *a2)
{
  sub_10000C888(a2, a2[3]);
  sub_100750404();
  return v2;
}

uint64_t sub_1004C71A4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  return sub_100020514(v1 + v3, a1);
}

uint64_t sub_1004C7200(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_itemLayoutContext;
  swift_beginAccess();
  sub_1000204A4(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1004C72C8()
{
  sub_100745224();
  sub_1004C736C();
  result = sub_1007468B4();
  if (v6)
  {
    v2 = sub_100745214();
    v4 = v3;

    v5 = (v0 + OBJC_IVAR____TtC22SubscribePageExtension32UnifiedMessageCollectionViewCell_placement);
    swift_beginAccess();
    *v5 = v2;
    v5[1] = v4;
  }

  return result;
}

unint64_t sub_1004C736C()
{
  result = qword_10093A8C0;
  if (!qword_10093A8C0)
  {
    sub_100745224();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093A8C0);
  }

  return result;
}

uint64_t sub_1004C73C4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C73F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C741C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v232 = a2;
  v223 = type metadata accessor for TitleHeaderView.Style(0);
  __chkstk_darwin(v223);
  v207 = &v194 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v212 = &v194 - v5;
  v231 = sub_100747144();
  v222 = *(v231 - 8);
  __chkstk_darwin(v231);
  v216 = &v194 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v228 = &v194 - v8;
  v9 = sub_10000C518(&qword_100928A88);
  __chkstk_darwin(v9 - 8);
  v217 = &v194 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v214 = (&v194 - v12);
  __chkstk_darwin(v13);
  v211 = &v194 - v14;
  __chkstk_darwin(v15);
  v226 = (&v194 - v16);
  v17 = sub_10000C518(&unk_100940600);
  __chkstk_darwin(v17 - 8);
  v215 = &v194 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v208 = &v194 - v20;
  __chkstk_darwin(v21);
  v227 = &v194 - v22;
  __chkstk_darwin(v23);
  v218 = &v194 - v24;
  v25 = type metadata accessor for TitleHeaderView.TextConfiguration(0);
  v220 = *(v25 - 8);
  v221 = v25;
  __chkstk_darwin(v25);
  v206 = &v194 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v205 = &v194 - v28;
  __chkstk_darwin(v29);
  v204 = &v194 - v30;
  __chkstk_darwin(v31);
  v213 = (&v194 - v32);
  __chkstk_darwin(v33);
  v225 = &v194 - v34;
  __chkstk_darwin(v35);
  v210 = &v194 - v36;
  __chkstk_darwin(v37);
  v209 = &v194 - v38;
  __chkstk_darwin(v39);
  v224 = (&v194 - v40);
  v41 = sub_10000C518(&unk_100928A90);
  __chkstk_darwin(v41 - 8);
  v197 = &v194 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v196 = &v194 - v44;
  __chkstk_darwin(v45);
  v200 = &v194 - v46;
  __chkstk_darwin(v47);
  v199 = &v194 - v48;
  __chkstk_darwin(v49);
  v219 = &v194 - v50;
  __chkstk_darwin(v51);
  v195 = &v194 - v52;
  __chkstk_darwin(v53);
  v198 = &v194 - v54;
  __chkstk_darwin(v55);
  v203 = &v194 - v56;
  __chkstk_darwin(v57);
  v202 = &v194 - v58;
  __chkstk_darwin(v59);
  v201 = &v194 - v60;
  __chkstk_darwin(v61);
  v229 = &v194 - v62;
  v63 = sub_1007457B4();
  v64 = *(v63 - 8);
  __chkstk_darwin(v63);
  v66 = &v194 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v67);
  v69 = &v194 - v68;
  v70 = sub_10000C518(&unk_10092E450);
  v230 = *(v70 - 8);
  __chkstk_darwin(v70);
  v72 = &v194 - v71;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v73 = v236;
  if (v236)
  {
  }

  swift_getKeyPath();
  sub_1007525B4();

  v74 = v236;
  if (v236)
  {
    v75 = v235;

    v76 = HIBYTE(v74) & 0xF;
    if ((v74 & 0x2000000000000000) == 0)
    {
      v76 = v75 & 0xFFFFFFFFFFFFLL;
    }

    v233 = v76 != 0;
  }

  else
  {
    v233 = 0;
  }

  swift_getKeyPath();
  v234 = v72;
  sub_1007525B4();

  if (v235)
  {
    v77 = sub_100743A34();
  }

  else
  {
    v77 = 0;
  }

  swift_getKeyPath();
  sub_1007525B4();

  (*(v64 + 104))(v66, enum case for ShelfBackground.interactive(_:), v63);
  v78 = sub_1007457A4();
  v79 = *(v64 + 8);
  v79(v66, v63);
  v79(v69, v63);
  v80 = sub_1004C95EC(a1);
  if (sub_1004CA0B4(a1))
  {
    if ((v78 & 1) == 0)
    {
      v81 = v77 ^ 1;
      goto LABEL_17;
    }

LABEL_15:
    sub_10071ED04(v233, v232);
    return (*(v230 + 8))(v234, v70);
  }

  if (v78)
  {
    goto LABEL_15;
  }

  v81 = 0;
LABEL_17:
  v194 = v70;
  if (!v80)
  {
    LODWORD(v229) = v81;
    swift_getKeyPath();
    sub_1007525B4();

    if (v235)
    {
      v85 = v219;
      sub_1007439D4();

      v86 = sub_1007439C4();
      (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    }

    else
    {
      v113 = sub_1007439C4();
      (*(*(v113 - 8) + 56))(v219, 1, 1, v113);
    }

    v114 = v221;
    if (v77)
    {
      v115 = v214;
      *v214 = xmmword_1007C5CF0;
      v116 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
      v117 = sub_100747134();
      v118 = *(v117 - 8);
      v119 = *(v118 + 104);
      v227 = (v117 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
      v119(v115, v116, v117);
      v120 = *(v118 + 56);
      v228 = v117;
      v120(v115, 0, 1, v117);
      if (qword_100920AC8 != -1)
      {
        swift_once();
      }

      v121 = sub_10000D0FC(v114, qword_10097FF10);
      sub_10015027C(v121, v213);
      v122 = 10.0;
      v123 = v204;
      if (qword_100920AF8 != -1)
      {
        swift_once();
      }

      v124 = 1;
      v125 = qword_10097FFA0;
LABEL_107:
      v177 = v123;
LABEL_108:
      v178 = sub_10000D0FC(v114, v125);
      sub_10015027C(v178, v177);
      v179 = v208;
      (*(v220 + 56))(v208, v124, 1, v114);
      v180 = v213;
      v181 = v205;
      sub_10015027C(v213, v205);
      v182 = v206;
      sub_10015027C(v123, v206);
      sub_100016B4C(v179, v215, &unk_100940600);
      v183 = v214;
      sub_100016B4C(v214, v217, &qword_100928A88);
      v184 = v222;
      (*(v222 + 104))(v216, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
      sub_10000D198();
      v185 = sub_100753DB4();
      sub_10000C8CC(v183, &qword_100928A88);
      sub_10000C8CC(v179, &unk_100940600);
      sub_1003B6E50(v123);
      sub_1003B6E50(v180);
      sub_10000C8CC(v219, &unk_100928A90);
      (*(v230 + 8))(v234, v194);
      v186 = v223;
      v187 = *(v223 + 32);
      v188 = v207;
      sub_1003ED344(v181, v207, type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_1003ED344(v182, v188 + v186[5], type metadata accessor for TitleHeaderView.TextConfiguration);
      sub_100066578(v215, v188 + v186[6], &unk_100940600);
      *(v188 + v186[7]) = v229 & 1;
      *(v188 + v187) = 0;
      v189 = v233;
      *(v188 + v186[9]) = v233;
      *(v188 + v186[14]) = v122;
      *(v188 + v186[12]) = 0;
      *(v188 + v186[13]) = v185;
      v190 = v217;
      (*(v184 + 32))(v188 + v186[11], v216, v231);
      sub_100747134();
      v191 = v228;
      v192 = *(v228 - 1);
      if ((*(v192 + 48))(v190, 1, v228) == 1)
      {
        sub_10000C8CC(v190, &qword_100928A88);
        if (v189)
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
        }

        else
        {
          v193 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
        }

        (*(v192 + 104))(v188 + v186[10], *v193, v191);
      }

      else
      {
        (*(v192 + 32))(v188 + v186[10], v190, v191);
      }

      v166 = v188;
      return sub_1003ED344(v166, v232, type metadata accessor for TitleHeaderView.Style);
    }

    v126 = sub_100747134();
    v127 = *(*(v126 - 8) + 56);
    v227 = (v126 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v127(v214, 1, 1, v126);
    v228 = v126;
    if (v73)
    {
      if (!v233)
      {
        v145 = v200;
        sub_100016B4C(v219, v200, &unk_100928A90);
        v146 = sub_1007439C4();
        v147 = *(v146 - 8);
        if ((*(v147 + 48))(v145, 1, v146) == 1)
        {
          sub_10000C8CC(v145, &unk_100928A90);
          v148 = 0;
        }

        else
        {
          v148 = sub_100743964();
          (*(v147 + 8))(v145, v146);
        }

        v123 = v204;
        sub_1003AFADC(v148, v213);

        v122 = 16.0;
        if (qword_100920AF0 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10097FF88;
        goto LABEL_107;
      }

      v128 = v199;
      sub_100016B4C(v219, v199, &unk_100928A90);
      v129 = sub_1007439C4();
      v130 = *(v129 - 8);
      if ((*(v130 + 48))(v128, 1, v129) == 1)
      {
        sub_10000C8CC(v128, &unk_100928A90);
        v131 = 0;
      }

      else
      {
        v131 = sub_100743964();
        (*(v130 + 8))(v128, v129);
      }

      v123 = v204;
      sub_1003AFADC(v131, v213);

      if (qword_100920B08 != -1)
      {
        swift_once();
      }

      v171 = qword_10097FFD0;
    }

    else
    {
      if (!v233)
      {
        v167 = v197;
        sub_100016B4C(v219, v197, &unk_100928A90);
        v168 = sub_1007439C4();
        v169 = *(v168 - 8);
        if ((*(v169 + 48))(v167, 1, v168) == 1)
        {
          sub_10000C8CC(v167, &unk_100928A90);
          v170 = 0;
        }

        else
        {
          v170 = sub_100743964();
          (*(v169 + 8))(v167, v168);
        }

        v123 = v204;
        sub_1003AFADC(v170, v213);

        v122 = 16.0;
        if (qword_100920AE8 != -1)
        {
          swift_once();
        }

        v124 = 1;
        v125 = qword_10097FF70;
        goto LABEL_107;
      }

      v141 = v196;
      sub_100016B4C(v219, v196, &unk_100928A90);
      v142 = sub_1007439C4();
      v143 = *(v142 - 8);
      if ((*(v143 + 48))(v141, 1, v142) == 1)
      {
        sub_10000C8CC(v141, &unk_100928A90);
        v144 = 0;
      }

      else
      {
        v144 = sub_100743964();
        (*(v143 + 8))(v141, v142);
      }

      v123 = v204;
      sub_1003AFADC(v144, v213);

      if (qword_100920B00 != -1)
      {
        swift_once();
      }

      v171 = qword_10097FFB8;
    }

    v176 = sub_10000D0FC(v114, v171);
    sub_10015027C(v176, v123);
    v122 = 16.0;
    if (qword_100920AE0 != -1)
    {
      swift_once();
    }

    v124 = 0;
    v125 = qword_10097FF58;
    v177 = v208;
    goto LABEL_108;
  }

  swift_getKeyPath();
  sub_1007525B4();

  if (v235)
  {
    v83 = v229;
    sub_1007439D4();

    v84 = sub_1007439C4();
    (*(*(v84 - 8) + 56))(v83, 0, 1, v84);
  }

  else
  {
    v87 = sub_1007439C4();
    (*(*(v87 - 8) + 56))(v229, 1, 1, v87);
  }

  if (v77)
  {
    v88 = v226;
    *v226 = xmmword_1007C5CF0;
    v89 = enum case for TitleHeaderLayout.AccessoryVerticalAlignment.corner(_:);
    v90 = sub_100747134();
    v91 = *(v90 - 8);
    v92 = *(v91 + 104);
    v217 = (v90 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v92(v88, v89, v90);
    v93 = *(v91 + 56);
    v219 = v90;
    v93(v88, 0, 1, v90);
    if (qword_100920AC8 != -1)
    {
      swift_once();
    }

    v94 = v221;
    v95 = sub_10000D0FC(v221, qword_10097FF10);
    sub_10015027C(v95, v224);
    v96 = 10.0;
    v97 = v209;
    if (qword_100920AF8 != -1)
    {
      swift_once();
    }

    v98 = 1;
    v99 = qword_10097FFA0;
  }

  else
  {
    v101 = sub_100747134();
    v102 = *(*(v101 - 8) + 56);
    v217 = (v101 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
    v102(v226, 1, 1, v101);
    v219 = v101;
    if (v233)
    {
      if (v80 == 1)
      {
        v103 = v201;
        sub_100016B4C(v229, v201, &unk_100928A90);
        v104 = sub_1007439C4();
        v105 = *(v104 - 8);
        v106 = (*(v105 + 48))(v103, 1, v104);
        v97 = v209;
        if (v106 == 1)
        {
          sub_10000C8CC(v103, &unk_100928A90);
          v107 = 0;
        }

        else
        {
          v107 = sub_100743964();
          (*(v105 + 8))(v103, v104);
        }

        v94 = v221;
        sub_1003AFADC(v107, v224);

        if (qword_100920B30 != -1)
        {
          swift_once();
        }

        v149 = qword_100980048;
      }

      else
      {
        v132 = v202;
        sub_100016B4C(v229, v202, &unk_100928A90);
        v133 = sub_1007439C4();
        v134 = *(v133 - 8);
        v135 = (*(v134 + 48))(v132, 1, v133);
        v97 = v209;
        if (v135 == 1)
        {
          sub_10000C8CC(v132, &unk_100928A90);
          v136 = 0;
        }

        else
        {
          v136 = sub_100743964();
          (*(v134 + 8))(v132, v133);
        }

        v94 = v221;
        sub_1003AFADC(v136, v224);

        if (qword_100920B20 != -1)
        {
          swift_once();
        }

        v149 = qword_100980018;
      }

      v150 = sub_10000D0FC(v94, v149);
      sub_10015027C(v150, v97);
      v96 = 16.0;
      if (qword_100920AE0 != -1)
      {
        swift_once();
      }

      v98 = 0;
      v99 = qword_10097FF58;
      v100 = v218;
      goto LABEL_73;
    }

    if (v80 == 1)
    {
      v108 = v203;
      sub_100016B4C(v229, v203, &unk_100928A90);
      v109 = sub_1007439C4();
      v110 = *(v109 - 8);
      v111 = (*(v110 + 48))(v108, 1, v109);
      v94 = v221;
      v97 = v209;
      if (v111 == 1)
      {
        sub_10000C8CC(v108, &unk_100928A90);
        v112 = 0;
      }

      else
      {
        v112 = sub_100743964();
        (*(v110 + 8))(v108, v109);
      }

      sub_1003AFADC(v112, v224);

      v96 = 16.0;
      if (qword_100920B28 != -1)
      {
        swift_once();
      }

      v98 = 1;
      v99 = qword_100980030;
    }

    else
    {
      v94 = v221;
      v97 = v209;
      if (v73)
      {
        v137 = v198;
        sub_100016B4C(v229, v198, &unk_100928A90);
        v138 = sub_1007439C4();
        v139 = *(v138 - 8);
        if ((*(v139 + 48))(v137, 1, v138) == 1)
        {
          sub_10000C8CC(v137, &unk_100928A90);
          v140 = 0;
        }

        else
        {
          v140 = sub_100743964();
          (*(v139 + 8))(v137, v138);
        }

        sub_1003AFAE4(v140, v224);

        v96 = 16.0;
        if (qword_100920B18 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_100980000;
      }

      else
      {
        v172 = v195;
        sub_100016B4C(v229, v195, &unk_100928A90);
        v173 = sub_1007439C4();
        v174 = *(v173 - 8);
        if ((*(v174 + 48))(v172, 1, v173) == 1)
        {
          sub_10000C8CC(v172, &unk_100928A90);
          v175 = 0;
        }

        else
        {
          v175 = sub_100743964();
          (*(v174 + 8))(v172, v173);
        }

        sub_1003AFADC(v175, v224);

        v96 = 16.0;
        if (qword_100920B10 != -1)
        {
          swift_once();
        }

        v98 = 1;
        v99 = qword_10097FFE8;
      }
    }
  }

  v100 = v97;
LABEL_73:
  v151 = sub_10000D0FC(v94, v99);
  sub_10015027C(v151, v100);
  v152 = v218;
  (*(v220 + 56))(v218, v98, 1, v94);
  v153 = v224;
  v154 = v210;
  sub_10015027C(v224, v210);
  sub_10015027C(v97, v225);
  sub_100016B4C(v152, v227, &unk_100940600);
  v155 = v226;
  v156 = v211;
  sub_100016B4C(v226, v211, &qword_100928A88);
  v157 = v222;
  (*(v222 + 104))(v228, enum case for TitleHeaderLayout.ChildrenHorizontalAlignment.leading(_:), v231);
  sub_10000D198();
  v221 = sub_100753DB4();
  sub_10000C8CC(v155, &qword_100928A88);
  sub_10000C8CC(v152, &unk_100940600);
  sub_1003B6E50(v97);
  sub_1003B6E50(v153);
  sub_10000C8CC(v229, &unk_100928A90);
  (*(v230 + 8))(v234, v194);
  v158 = v223;
  v159 = *(v223 + 32);
  v160 = v212;
  sub_1003ED344(v154, v212, type metadata accessor for TitleHeaderView.TextConfiguration);
  v161 = v156;
  sub_1003ED344(v225, v160 + v158[5], type metadata accessor for TitleHeaderView.TextConfiguration);
  sub_100066578(v227, v160 + v158[6], &unk_100940600);
  *(v160 + v158[7]) = 0;
  *(v160 + v159) = 0;
  v162 = v233;
  *(v160 + v158[9]) = v233;
  *(v160 + v158[14]) = v96;
  *(v160 + v158[12]) = 0;
  *(v160 + v158[13]) = v221;
  (*(v157 + 32))(v160 + v158[11], v228, v231);
  sub_100747134();
  v163 = v219;
  v164 = *(v219 - 8);
  if ((*(v164 + 48))(v161, 1, v219) == 1)
  {
    sub_10000C8CC(v161, &qword_100928A88);
    if (v162)
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.firstBaseline(_:);
    }

    else
    {
      v165 = &enum case for TitleHeaderLayout.AccessoryVerticalAlignment.lastBaseline(_:);
    }

    (*(v164 + 104))(v160 + v158[10], *v165, v163);
  }

  else
  {
    (*(v164 + 32))(v160 + v158[10], v161, v163);
  }

  v166 = v160;
  return sub_1003ED344(v166, v232, type metadata accessor for TitleHeaderView.Style);
}

uint64_t sub_1004C9364@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB54();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C9390@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10074EB74();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1004C93C4()
{
  sub_10000C518(&qword_100930BC8);
  v0 = sub_10074E984();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1007B3A60;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, enum case for Shelf.ContentType.upsellBreakout(_:), v0);
  v6(v5 + v2, enum case for Shelf.ContentType.smallBreakout(_:), v0);
  v6(v5 + 2 * v2, enum case for Shelf.ContentType.ribbonBar(_:), v0);
  v6(v5 + 3 * v2, enum case for Shelf.ContentType.largeHeroBreakout(_:), v0);
  v6(v5 + 4 * v2, enum case for Shelf.ContentType.editorialStoryCard(_:), v0);
  v6(v5 + 5 * v2, enum case for Shelf.ContentType.gameCenterReengagement(_:), v0);
  v6(v5 + 6 * v2, enum case for Shelf.ContentType.heroCarousel(_:), v0);
  v6(v5 + 7 * v2, enum case for Shelf.ContentType.productBadge(_:), v0);
  v7 = sub_1001A9F00(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_10093A8C8 = v7;
  return result;
}

uint64_t sub_1004C95EC(unint64_t a1)
{
  v94 = sub_10000C518(&qword_10093A8D0);
  __chkstk_darwin(v94);
  v97 = &v89 - v2;
  v3 = sub_10000C518(&unk_10092E450);
  v100 = *(v3 - 8);
  __chkstk_darwin(v3);
  v93 = &v89 - v4;
  v5 = sub_1007457B4();
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  __chkstk_darwin(v5);
  v91 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v89 = (&v89 - v9);
  __chkstk_darwin(v10);
  v90 = (&v89 - v11);
  __chkstk_darwin(v12);
  v101 = &v89 - v13;
  __chkstk_darwin(v14);
  v92 = &v89 - v15;
  __chkstk_darwin(v16);
  v98 = &v89 - v17;
  v18 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v18 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v89 - v22;
  __chkstk_darwin(v24);
  v26 = &v89 - v25;
  __chkstk_darwin(v27);
  v29 = &v89 - v28;
  __chkstk_darwin(v30);
  v32 = &v89 - v31;
  __chkstk_darwin(v33);
  v35 = &v89 - v34;
  v99 = a1;
  sub_100747BB4();
  sub_10000C8CC(v29, &unk_10093D6E0);
  v36 = v100;
  sub_100066578(v32, v35, &unk_10093D6E0);
  v37 = *(v36 + 48);
  if (v37(v35, 1, v3) == 1)
  {
    sub_10000C8CC(v35, &unk_10093D6E0);
LABEL_6:
    v40 = v101;
    goto LABEL_7;
  }

  swift_getKeyPath();
  sub_1007525B4();

  v38 = v102;
  (*(v36 + 8))(v35, v3);
  if (!v38)
  {
    goto LABEL_6;
  }

  v39 = sub_100743A34();

  v40 = v101;
  if (v39)
  {
    return 2;
  }

LABEL_7:
  sub_100747BB4();
  sub_10000C8CC(v20, &unk_10093D6E0);
  sub_100066578(v23, v26, &unk_10093D6E0);
  if (v37(v26, 1, v3) != 1)
  {
    swift_getKeyPath();
    v44 = v92;
    sub_1007525B4();

    v45 = *(v100 + 8);
    v45(v26, v3);
    v46 = v96;
    v47 = v98;
    v48 = v44;
    v49 = v95;
    (*(v96 + 32))(v98, v48, v95);
    v50 = v93;
    sub_100747C04();
    swift_getKeyPath();
    sub_1007525B4();

    v45(v50, v3);
    v51 = v94[12];
    v52 = v46[2];
    v53 = v97;
    v52(v97, v40, v49);
    v100 = v51;
    v52(&v53[v51], v47, v49);
    v54 = v46[11];
    v55 = v54(v53, v49);
    if (v55 == enum case for ShelfBackground.color(_:))
    {
      v56 = v55;
      v57 = v90;
      v52(v90, v53, v49);
      v58 = v46;
      v59 = v57;
      v92 = v58[12];
      (v92)(v57, v49);
      v94 = *v57;
      v60 = sub_10000C518(&unk_100930940);
      v93 = *(v60 + 48);
      if (v54(&v53[v100], v49) == v56)
      {
        v61 = v93;
        v62 = v89;
        v52(v89, &v97[v100], v49);
        (v92)(v62, v49);
        v63 = *v62;
        v64 = *(v60 + 48);
        v65 = sub_100747B94();
        v66 = v94;
        v67 = [v94 resolvedColorWithTraitCollection:v65];

        v68 = sub_100747B94();
        v69 = [v63 resolvedColorWithTraitCollection:v68];

        sub_10000D198();
        LOBYTE(v68) = sub_100753FC4();

        if ((v68 & 1) == 0)
        {
          v85 = *(v96 + 8);
          v85(v101, v49);
          v85(v98, v49);
          v86 = sub_100748E34();
          v87 = *(*(v86 - 8) + 8);
          v87(v62 + v64, v86);
          v87(&v61[v90], v86);
          v88 = v97;
          v85(&v97[v100], v49);
          v85(v88, v49);
          return 2;
        }

        v70 = sub_100748E34();
        v71 = *(*(v70 - 8) + 8);
        v71(v62 + v64, v70);
        v71(&v61[v90], v70);
      }

      else
      {
        v72 = sub_100748E34();
        (*(*(v72 - 8) + 8))(&v93[v59], v72);
      }

      v46 = v96;
      v53 = v97;
    }

    v73 = enum case for ShelfBackground.none(_:);
    v74 = v46[13];
    v75 = v91;
    v74(v91, enum case for ShelfBackground.none(_:), v49);
    v99 = sub_10034B8E4();
    v76 = sub_100753014();
    v77 = v46[1];
    v77(v75, v49);
    if ((v76 & 1) == 0)
    {
      v74(v75, v73, v49);
      v78 = sub_1007457A4();
      v77(v75, v49);
      if (v78)
      {
        v77(v101, v49);
        v77(v98, v49);
        v79 = v100;
LABEL_20:
        v77(&v53[v79], v49);
        v77(v53, v49);
        return 2;
      }
    }

    v80 = v74;
    v74(v75, v73, v49);
    v81 = v101;
    v82 = sub_1007457A4();
    v77(v75, v49);
    if (v82)
    {
      v80(v75, v73, v49);
      v83 = v98;
      v84 = sub_100753014();
      v77(v75, v49);
      v77(v81, v49);
      v77(v83, v49);
      v79 = v100;
      if ((v84 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v77(v81, v49);
      v77(v98, v49);
    }

    v42 = &qword_10093A8D0;
    v43 = v53;
    goto LABEL_23;
  }

  v42 = &unk_10093D6E0;
  v43 = v26;
LABEL_23:
  sub_10000C8CC(v43, v42);
  return 0;
}

uint64_t sub_1004CA0B4(uint64_t a1)
{
  v2 = sub_10000C518(&unk_10093D6E0);
  __chkstk_darwin(v2 - 8);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v36 = &v32 - v5;
  __chkstk_darwin(v6);
  v8 = &v32 - v7;
  v9 = sub_10074E984();
  v34 = *(v9 - 8);
  v35 = v9;
  __chkstk_darwin(v9);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v33 = &v32 - v12;
  v13 = sub_1007439C4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10000C518(&unk_10092E450);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v32 - v19;
  v38 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v21 = *(v18 + 8);
  v21(v20, v17);
  if (v39 && (sub_1007439D4(), , v22 = sub_1007439A4(), (*(v14 + 8))(v16, v13), (v22 & 1) == 0))
  {
    v25 = 0;
  }

  else
  {
    v24 = v36;
    v23 = v37;
    sub_100747BB4();
    sub_10000C8CC(v23, &unk_10093D6E0);
    sub_100066578(v24, v8, &unk_10093D6E0);
    if ((*(v18 + 48))(v8, 1, v17) == 1)
    {
      sub_10000C8CC(v8, &unk_10093D6E0);
      v25 = 1;
    }

    else
    {
      swift_getKeyPath();
      v26 = v32;
      sub_1007525B4();

      v21(v8, v17);
      v28 = v33;
      v27 = v34;
      v29 = v35;
      (*(v34 + 32))(v33, v26, v35);
      if (qword_100920D60 != -1)
      {
        swift_once();
      }

      v30 = sub_1002A5418(v28, qword_10093A8C8);
      (*(v27 + 8))(v28, v29);
      v25 = v30 ^ 1;
    }
  }

  return v25 & 1;
}

double sub_1004CA51C()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  v2 = v1;

  result = 1.0 / v2;
  *&qword_100980620 = 1.0 / v2;
  return result;
}

uint64_t sub_1004CA5A8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100750304();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v18[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_100750B04();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v18[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DividerView.Style(0);
  sub_100039C50(v11, a2);
  v12 = sub_10000D0FC(v11, a2);
  *v6 = UIFontTextStyleBody;
  (*(v4 + 104))(v6, enum case for FontSource.textStyle(_:), v3);
  v18[3] = v3;
  v18[4] = &protocol witness table for FontSource;
  v13 = sub_10000D134(v18);
  (*(v4 + 16))(v13, v6, v3);
  v14 = UIFontTextStyleBody;
  sub_100750B14();
  (*(v4 + 8))(v6, v3);
  v15 = *&UIEdgeInsetsZero.bottom;
  *v12 = *&UIEdgeInsetsZero.top;
  *(v12 + 1) = v15;
  return (*(v8 + 32))(&v12[*(v11 + 20)], v10, v7);
}

char *sub_1004CA7D4(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v11 = *&UIEdgeInsetsZero.bottom;
  *v10 = *&UIEdgeInsetsZero.top;
  *(v10 + 1) = v11;
  v12 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_style;
  if (qword_100920D70 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for DividerView.Style(0);
  v14 = sub_10000D0FC(v13, qword_100980628);
  sub_1001154F8(v14, &v4[v12]);
  v15 = [objc_allocWithZone(UIView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView] = v15;
  v23.receiver = v4;
  v23.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v23, "initWithFrame:", a1, a2, a3, a4);
  v17 = OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView;
  v18 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView];
  sub_10000D198();
  v19 = v16;
  v20 = v18;
  v21 = sub_100753DB4();
  [v20 setBackgroundColor:v21];

  [v19 addSubview:*&v16[v17]];
  return v19;
}

id sub_1004CAC3C()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "layoutSubviews");
  [v0 bounds];
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v9 = *&qword_100980620;
  v10 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorView];
  v17.origin.x = v2;
  v17.origin.y = v4;
  v17.size.width = v6;
  v17.size.height = v8;
  MinX = CGRectGetMinX(v17);
  v12 = &v0[OBJC_IVAR____TtC22SubscribePageExtension11DividerView_separatorInset];
  v13 = MinX + v12[1];
  v18.origin.x = v2;
  v18.origin.y = v4;
  v18.size.width = v6;
  v18.size.height = v8;
  v14 = CGRectGetMidY(v18) + v9 * -0.5;
  v19.origin.x = v2;
  v19.origin.y = v4;
  v19.size.width = v6;
  v19.size.height = v8;
  return [v10 setFrame:{v13, v14, CGRectGetWidth(v19) - v12[1] - v12[3], v9}];
}

uint64_t sub_1004CAE44()
{
  result = type metadata accessor for DividerView.Style(319);
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

uint64_t sub_1004CAF20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_100750B04();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_1004CAFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_100750B04();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_1004CB028()
{
  type metadata accessor for UIEdgeInsets(319);
  if (v0 <= 0x3F)
  {
    sub_100750B04();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

double sub_1004CB0AC()
{
  v0 = sub_100754724();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920D68 != -1)
  {
    swift_once();
  }

  v4 = floor(*&qword_100980620);
  type metadata accessor for DividerView.Style(0);
  sub_1007502D4();
  sub_100750B04();
  sub_100750564();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  return v4 + v6;
}

uint64_t sub_1004CB1F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v11 = sub_10000C518(&unk_100923970);
  __chkstk_darwin(v11 - 8);
  v13 = &v28 - v12;
  sub_100741254();
  v14 = sub_100741264();
  v15 = *(v14 - 8);
  result = (*(v15 + 48))(v13, 1, v14);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v17 = objc_allocWithZone(LPLinkView);
    sub_100741204(v18);
    v20 = v19;
    v21 = [v17 initWithURL:v19];

    (*(v15 + 8))(v13, v14);
    *&v5[OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView] = v21;
    v28.receiver = v5;
    v28.super_class = ObjectType;
    v22 = objc_msgSendSuper2(&v28, "initWithFrame:", a1, a2, a3, a4);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    v26 = v22;
    [v26 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
    v27 = OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView;
    [*&v26[OBJC_IVAR____TtC22SubscribePageExtension20PresentationLinkView_linkView] _setApplyCornerRadius:1];
    [*&v26[v27] _setDisableAnimations:1];
    [*&v26[v27] _setDisableTapGesture:1];
    [*&v26[v27] _setForceFlexibleWidth:1];
    [v26 addSubview:*&v26[v27]];

    return v26;
  }

  return result;
}

uint64_t sub_1004CB608(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1007417F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1004CB6C8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1007417F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ComponentOverflowData()
{
  result = qword_10093AA38;
  if (!qword_10093AA38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1004CB7B8()
{
  result = sub_100032B70();
  if (v1 <= 0x3F)
  {
    result = sub_1007417F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1004CB84C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_10074E984();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10000C518(&unk_10092E450);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  (*(v9 + 8))(v11, v8);
  result = (*(v5 + 88))(v7, v4);
  if (result == enum case for Shelf.ContentType.appTrailerLockup(_:))
  {
    a2[3] = &type metadata for Double;
    a2[4] = &protocol witness table for Double;
    *a2 = 0x4040000000000000;
  }

  else
  {
    sub_10031E808(a1, a2);
    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

uint64_t sub_1004CBA50()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = (&v9[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980660);
  sub_10000D0FC(v4, qword_100980660);
  *v3 = UIFontTextStyleBody;
  (*(v1 + 104))(v3, enum case for FontSource.textStyle(_:), v0);
  v9[3] = v0;
  v9[4] = &protocol witness table for FontSource;
  v5 = sub_10000D134(v9);
  (*(v1 + 16))(v5, v3, v0);
  v6 = UIFontTextStyleBody;
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

char *sub_1004CBBBC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView;
  type metadata accessor for SmallLockupView();
  *&v4[v9] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v15.receiver = v4;
  v15.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  v10 = objc_msgSendSuper2(&v15, "initWithFrame:", a1, a2, a3, a4);
  v11 = [v10 contentView];
  [v11 setPreservesSuperviewLayoutMargins:0];

  v12 = [v10 contentView];
  [v12 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v13 = [v10 contentView];
  [v13 addSubview:*&v10[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView]];

  return v10;
}

id sub_1004CBDBC()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SmallLockupCollectionViewTableCell();
  v22.receiver = v0;
  v22.super_class = v6;
  objc_msgSendSuper2(&v22, "layoutSubviews");
  v7 = [v0 contentView];
  sub_100009D34();
  sub_1007477B4();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension34SmallLockupCollectionViewTableCell_lockupView];
  [v14 intrinsicContentSize];
  v16 = v15;
  if (qword_100920D80 != -1)
  {
    swift_once();
  }

  v17 = sub_100750B04();
  sub_10000D0FC(v17, qword_100980660);
  v18 = [v1 traitCollection];
  sub_1007502D4();
  sub_100750AD4();
  v20 = v19;

  (*(v3 + 8))(v5, v2);
  return [v14 setFrame:{v9, v11 + v20, v13, v16}];
}

id sub_1004CC004()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SmallLockupCollectionViewTableCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004CC08C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013ABB0(a1, a2, a3, WitnessTable);
}

void sub_1004CC0F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  sub_10013AE68(a1, a2, a3, WitnessTable);
}

unint64_t sub_1004CC164(uint64_t a1)
{
  result = sub_1004CC18C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1004CC18C()
{
  result = qword_10093AAA0;
  if (!qword_10093AAA0)
  {
    type metadata accessor for SmallLockupCollectionViewTableCell();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AAA0);
  }

  return result;
}

uint64_t sub_1004CC248(uint64_t a1, uint64_t *a2, void *a3, uint64_t *a4)
{
  v7 = sub_100750304();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100920DA8 != -1)
  {
    swift_once();
  }

  v11 = sub_100750534();
  v12 = sub_10000D0FC(v11, qword_10093AB50);
  (*(*(v11 - 8) + 16))(v10, v12, v11);
  (*(v8 + 104))(v10, enum case for FontSource.useCase(_:), v7);
  *a2 = sub_100750B04();
  *a3 = &protocol witness table for StaticDimension;
  sub_10000D134(a4);
  v16[3] = v7;
  v16[4] = &protocol witness table for FontSource;
  v13 = sub_10000D134(v16);
  (*(v8 + 16))(v13, v10, v7);
  sub_100750B14();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1004CC434()
{
  v0 = sub_100750534();
  sub_100039C50(v0, qword_10093AB50);
  v1 = sub_10000D0FC(v0, qword_10093AB50);
  if (qword_1009214A0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000D0FC(v0, qword_100981B18);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_1004CC564()
{
  v1 = v0;
  v20.receiver = v0;
  v20.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v20, "viewDidLoad");
  v2 = [v0 navigationItem];
  [v2 setLargeTitleDisplayMode:2];

  v3 = [v1 navigationItem];
  sub_10074C2B4();
  if (v4)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v3 setTitle:v5];

  sub_1004D1894(&qword_10093AC48, v6, type metadata accessor for GenericAccountPageViewController);
  swift_unknownObjectRetain();
  sub_10074C294();
  [v1 setViewRespectsSystemMinimumLayoutMargins:0];
  result = [v1 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v8 = result;
  [result setLayoutMargins:{0.0, 16.0, 0.0, 16.0}];

  result = [v1 tableView];
  if (!result)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  [result setAlwaysBounceVertical:1];

  result = [v1 tableView];
  if (!result)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v10 = result;
  sub_100016C60(0, &unk_10093AC50);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v12)
  {
    sub_100753094();
    v12 = sub_100753064();
  }

  [v10 registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v12];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_20;
  }

  v13 = result;
  type metadata accessor for LinkableFooterView();
  v14 = swift_getObjCClassFromMetadata();
  v15 = NSStringFromClass(v14);
  if (!v15)
  {
    sub_100753094();
    v15 = sub_100753064();
  }

  [v13 registerClass:v14 forHeaderFooterViewReuseIdentifier:v15];

  result = [v1 tableView];
  if (!result)
  {
    goto LABEL_21;
  }

  v16 = result;
  _s22SubscribePageExtension10HeaderViewCMa_0();
  v17 = swift_getObjCClassFromMetadata();
  v18 = NSStringFromClass(v17);
  if (!v18)
  {
    sub_100753094();
    v18 = sub_100753064();
  }

  [v16 registerClass:v17 forHeaderFooterViewReuseIdentifier:v18];

  result = [v1 tableView];
  if (result)
  {
    v19 = result;
    [result setRowHeight:UITableViewAutomaticDimension];

    return sub_100744314();
  }

LABEL_22:
  __break(1u);
  return result;
}

void sub_1004CCAE4()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v15, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
  if (v1)
  {
    v2 = v1;
    v3 = [v2 view];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 view];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame:{v8, v10, v12, v14}];
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

void sub_1004CCC8C(void *a1)
{
  v2 = v1;
  v16.receiver = v1;
  v16.super_class = type metadata accessor for GenericAccountPageViewController();
  objc_msgSendSuper2(&v16, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || ((sub_1007537F4() ^ v5) & 1) != 0)
  {
    goto LABEL_3;
  }

  v8 = [v2 traitCollection];
  v9 = [v8 preferredContentSizeCategory];

  v10 = [a1 preferredContentSizeCategory];
  v11 = sub_100753094();
  v13 = v12;
  if (v11 == sub_100753094() && v13 == v14)
  {

    return;
  }

  v15 = sub_100754754();

  if ((v15 & 1) == 0)
  {
LABEL_3:
    v6 = [v2 tableView];
    if (v6)
    {
      v7 = v6;
      [v6 reloadData];
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1004CCF38(void *a1)
{
  v3 = sub_100747294();
  v116 = *(v3 - 8);
  v117 = v3;
  __chkstk_darwin(v3);
  v114 = v111 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v115 = v111 - v6;
  v7 = sub_1007472C4();
  v119 = *(v7 - 1);
  v120 = v7;
  __chkstk_darwin(v7);
  v118 = v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_100754724();
  v112 = *(v113 - 8);
  __chkstk_darwin(v113);
  v10 = v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10093AC30);
  __chkstk_darwin(v11 - 8);
  v13 = v111 - v12;
  v14 = sub_100744B34();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v111 - v19;
  v111[1] = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter];
  sub_10074C234();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_74;
  }

  v121 = v15;
  v122 = v14;
  (*(v15 + 32))(v20, v13, v14);
  v126 = v20;
  v21 = sub_1004CE2D8(v20);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100920DA8 != -1)
  {
    swift_once();
  }

  v123 = v1;
  v22 = sub_100750534();
  sub_10000D0FC(v22, qword_10093AB50);
  v124 = a1;
  v23 = [a1 traitCollection];
  v24 = sub_100753C14();

  v25 = [v21 textLabel];
  if (v25)
  {
    v26 = v25;
    [v25 setFont:v24];
  }

  v125 = v24;
  v27 = [v21 textLabel];
  if (v27)
  {
    v28 = v27;
    [v27 setNumberOfLines:0];
  }

  v29 = [v21 textLabel];
  if (v29)
  {
    v30 = v29;
    [v29 setLineBreakMode:0];
  }

  v31 = [v21 textLabel];
  if (v31)
  {
    v32 = v31;
    v33 = [objc_opt_self() labelColor];
    [v32 setTextColor:v33];
  }

  v34 = [v21 detailTextLabel];
  if (v34)
  {
    v35 = v34;
    [v34 setFont:v125];
  }

  v36 = [v21 detailTextLabel];
  if (v36)
  {
    v37 = v36;
    [v36 setNumberOfLines:0];
  }

  v38 = [v21 detailTextLabel];
  if (v38)
  {
    v39 = v38;
    [v38 setLineBreakMode:0];
  }

  v40 = [v21 detailTextLabel];
  v41 = v123;
  if (v40)
  {
    v42 = v40;
    v43 = [objc_opt_self() labelColor];
    [v42 setTextColor:v43];
  }

  [v21 setAccessoryType:0];
  [v21 setAccessoryView:0];
  v13 = v21;
  [v13 setUserInteractionEnabled:0];
  if (qword_100920D90 != -1)
  {
    swift_once();
  }

  sub_10000C888(qword_10093AAD8, qword_10093AAF0);
  sub_100536120();
  sub_100750564();
  v45 = v44;
  (*(v112 + 8))(v10, v113);
  v46 = v124;
  [v124 layoutMargins];
  v48 = v47;
  [v46 layoutMargins];
  [v13 setLayoutMargins:{v45, v48, v45}];
  v50 = v121;
  v49 = v122;
  (*(v121 + 16))(v17, v126, v122);
  v51 = (*(v50 + 88))(v17, v49);
  if (v51 == enum case for AccountSection.ContentItem.link(_:))
  {
    (*(v50 + 96))(v17, v49);
    (*(v119 + 32))(v118, v17, v120);
    v52 = [v13 textLabel];
    if (v52)
    {
      v53 = v52;
      sub_1007472B4();
      v54 = sub_100753064();

      [v53 setText:v54];
    }

    sub_1007472A4();
    (*(v116 + 104))(v114, enum case for AccountSectionLink.LinkDisplayType.navigation(_:), v117);
    sub_1004D1894(&qword_10093AC38, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_100753274();
    sub_100753274();
    v55 = &selRef_initWithTitle_style_target_action_;
    if (aBlock == v133 && v128 == v134)
    {
      v56 = v117;
      v57 = *(v116 + 8);
      v57(v114, v117);
      v57(v115, v56);
    }

    else
    {
      v68 = sub_100754754();
      v69 = *(v116 + 8);
      v70 = v49;
      v71 = v41;
      v72 = v117;
      v69(v114, v117);
      v73 = v72;
      v41 = v71;
      v49 = v70;
      v55 = &selRef_initWithTitle_style_target_action_;
      v69(v115, v73);

      if ((v68 & 1) == 0)
      {
        v88 = [v13 textLabel];
        v74 = &selRef_initWithTitle_style_target_action_;
        if (v88)
        {
          v89 = v88;
          v90 = [v124 tintColor];
          [v89 setTextColor:v90];
        }

        goto LABEL_37;
      }
    }

    [v13 setAccessoryType:1];
    v74 = &selRef_initWithTitle_style_target_action_;
LABEL_37:
    [v13 v74[112]];

    (*(v119 + 8))(v118, v120);
LABEL_60:
    v64 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    goto LABEL_61;
  }

  if (v51 != enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    if (v51 != enum case for AccountSection.ContentItem.text(_:))
    {
      if (v51 == enum case for AccountSection.ContentItem.personalizedRecommendationsToggle(_:))
      {
        (*(v50 + 96))(v17, v49);
        v91 = *(v17 + 1);
        v92 = v17[16];
        sub_100016C60(0, &qword_100929CC0);
        swift_allocObject();
        swift_unknownObjectWeakInit();
        v93 = sub_100753FF4();
        v94 = [objc_allocWithZone(UISwitch) initWithFrame:v93 primaryAction:{0.0, 0.0, 0.0, 0.0}];

        v95 = sub_10074C274();
        if (v95 == 2)
        {
          v96 = v92;
        }

        else
        {
          v96 = v95;
        }

        [v94 setOn:v96 & 1];
        [v13 setAccessoryView:v94];
        v97 = [v13 textLabel];
        if (v97)
        {
          v98 = v97;
          v55 = &selRef_initWithTitle_style_target_action_;
          if (v91)
          {
            v99 = sub_100753064();
          }

          else
          {
            v99 = 0;
          }

          [v98 setText:v99];
        }

        else
        {

          v55 = &selRef_initWithTitle_style_target_action_;
        }

        [v13 setUserInteractionEnabled:1];

        goto LABEL_60;
      }

      (*(v50 + 8))(v17, v49);
      goto LABEL_55;
    }

    (*(v50 + 96))(v17, v49);
    v75 = [v13 textLabel];
    v64 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
    if (v75)
    {
      v76 = v75;
      v77 = [objc_opt_self() secondaryLabelColor];
      [v76 setTextColor:v77];
    }

    v78 = [v13 textLabel];
    v55 = &selRef_initWithTitle_style_target_action_;
    if (!v78)
    {
      goto LABEL_44;
    }

    v120 = v78;
    sub_1007472D4();
    v79 = sub_10074F914();

    v80 = [v124 traitCollection];
    v81 = [objc_allocWithZone(NSMutableAttributedString) initWithAttributedString:v79];
    v124 = [v79 length];
    v82 = swift_allocObject();
    *(v82 + 16) = 0;
    *(v82 + 24) = v80;
    *(v82 + 32) = v81;
    *(v82 + 40) = 1;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_100047814;
    *(v83 + 24) = v82;
    v131 = sub_1000B18A8;
    v132 = v83;
    aBlock = _NSConcreteStackBlock;
    v128 = 1107296256;
    v129 = sub_100047044;
    v130 = &unk_100878918;
    v84 = _Block_copy(&aBlock);
    v85 = v80;
    v86 = v81;

    [v79 enumerateAttributesInRange:0 options:v124 usingBlock:{0x100000, v84}];

    _Block_release(v84);
    LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

    if ((v84 & 1) == 0)
    {
      v87 = v120;
      [v120 setAttributedText:v86];

      v49 = v122;
      v41 = v123;
      v50 = v121;
LABEL_55:
      v55 = &selRef_initWithTitle_style_target_action_;
      goto LABEL_60;
    }

    __break(1u);
LABEL_74:
    sub_10000C8CC(v13, &qword_10093AC30);
    result = sub_100754644();
    __break(1u);
    return result;
  }

  (*(v50 + 96))(v17, v49);
  v58 = [v13 textLabel];
  if (v58)
  {
    v59 = v58;
    sub_10074B994();
    v60 = sub_100753064();

    [v59 setText:v60];
  }

  v61 = [v13 textLabel];
  v55 = &selRef_initWithTitle_style_target_action_;
  if (v61)
  {
    v62 = v61;
    sub_100016C60(0, &qword_100923500);
    v63 = sub_100753DF4();
    [v62 setTextColor:v63];
  }

  v64 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  v65 = [v13 detailTextLabel];
  if (v65)
  {
    v66 = v65;
    sub_10074B9A4();
    v67 = sub_100753064();

    [v66 setText:v67];

    v64 = &selRef_initWithAdamID_cppIDs_serverCppID_adData_instanceID_;
  }

LABEL_44:

LABEL_61:
  v100 = [v13 textLabel];
  if (v100)
  {
    v101 = v100;
    v102 = [v41 v55[129]];
    v103 = sub_1007537F4();

    if (v103)
    {
      v104 = 2;
    }

    else
    {
      v104 = 0;
    }

    [v101 setTextAlignment:v104];
  }

  v105 = [v13 v64[425]];
  if (v105)
  {
    v106 = v105;
    v107 = [v41 v55[129]];
    v108 = sub_1007537F4();

    if (v108)
    {
      v109 = 2;
    }

    else
    {
      v109 = 0;
    }

    [v106 setTextAlignment:v109];

    (*(v50 + 8))(v126, v49);
  }

  else
  {
    (*(v50 + 8))(v126, v49);
  }

  return v13;
}

void sub_1004CE094(void *a1)
{
  if ([a1 sender])
  {
    sub_100754314();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_100016C60(0, &qword_10093AC40);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v2 = Strong;

        [v3 isOn];
        sub_10074C284();
      }
    }
  }

  else
  {
    sub_10000C8CC(v6, &unk_100923520);
  }
}

id sub_1004CE2D8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100744B34();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  if ((*(v5 + 88))(v8, v4) == enum case for AccountSection.ContentItem.infoListItem(_:))
  {
    (*(v5 + 8))(v8, v4);
    result = [v2 tableView];
    if (result)
    {
      v10 = result;
      v11 = sub_100753064();
      v12 = [v10 dequeueReusableCellWithIdentifier:v11];

      if (!v12)
      {
        v13 = objc_allocWithZone(UITableViewCell);
        v14 = sub_100753064();
        v12 = [v13 initWithStyle:1 reuseIdentifier:v14];
      }

      return v12;
    }

    __break(1u);
  }

  else
  {
    result = [v2 tableView];
    if (result)
    {
      v15 = result;
      v16 = sub_100753064();
      v12 = [v15 dequeueReusableCellWithIdentifier:v16];

      if (!v12)
      {
        v17 = objc_allocWithZone(UITableViewCell);
        v18 = sub_100753064();
        v12 = [v17 initWithStyle:0 reuseIdentifier:v18];
      }

      (*(v5 + 8))(v8, v4);
      return v12;
    }
  }

  __break(1u);
  return result;
}

id sub_1004CE598(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void))
{
  a5(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = a3;
  v9 = a1;
  v10 = NSStringFromClass(ObjCClassFromMetadata);
  if (!v10)
  {
    sub_100753094();
    v10 = sub_100753064();
  }

  v11 = [v8 dequeueReusableHeaderFooterViewWithIdentifier:v10];

  return v11;
}

void sub_1004CE658(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100754724();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = sub_10074C2A4();
    if (v11)
    {
      v12 = v10;
      v13 = v11;
      if (qword_100920DA0 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10093AB28, qword_10093AB40);
      sub_100536120();
      sub_100750564();
      (*(v7 + 8))(v9, v6);
      [a1 layoutMargins];
      [a1 layoutMargins];
      v14 = [v2 tableView];
      if (v14)
      {
        v15 = v14;
        [v14 layoutMargins];

        v16 = [v3 tableView];
        if (v16)
        {
          v17 = v16;
          [v16 layoutMargins];

          [a1 frame];
          CGRectGetWidth(v19);
          sub_1004D10D8(v12, v13, a1);

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
}

void sub_1004CE91C(void *a1, void *a2)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s22SubscribePageExtension10HeaderViewCMa_0();
  v9 = swift_dynamicCastClass();
  if (v9)
  {
    v10 = v9;
    v32 = a2;
    v11 = sub_10074C2A4();
    if (v12)
    {
      v30[1] = v11;
      v31 = v2;
      v13 = qword_100920DA0;
      v14 = v32;
      if (v13 != -1)
      {
        swift_once();
      }

      sub_10000C888(qword_10093AB28, qword_10093AB40);
      sub_100536120();
      sub_100750564();
      v16 = v15;
      (*(v6 + 8))(v8, v5);
      [a1 layoutMargins];
      v18 = v17;
      [a1 layoutMargins];
      [v10 setLayoutMargins:{0.0, v18, v16}];

      v19 = v14;
      v20 = [v10 textLabel];
      if (v20)
      {
        v21 = v20;
        v22 = sub_100753064();

        [v21 setText:v22];
      }

      else
      {
      }

      v26 = [v10 textLabel];

      if (v26)
      {
        v27 = [v31 traitCollection];
        v28 = sub_1007537F4();

        if (v28)
        {
          v29 = 2;
        }

        else
        {
          v29 = 0;
        }

        [v26 setTextAlignment:v29];
      }
    }

    else
    {
      v23 = [v10 textLabel];
      if (v23)
      {
        v24 = v23;
        [v23 setText:0];
      }

      v25 = v32;
    }
  }
}

uint64_t sub_1004CECD8(void *a1, uint64_t a2)
{
  v5 = sub_100747294();
  v70 = *(v5 - 8);
  v71 = v5;
  __chkstk_darwin(v5);
  v68 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v69 = v66 - v8;
  v9 = sub_1007472C4();
  v73 = *(v9 - 8);
  v74 = v9;
  __chkstk_darwin(v9);
  v72 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10000C518(&qword_10093AC30);
  __chkstk_darwin(v11 - 8);
  v13 = v66 - v12;
  v14 = sub_100744B34();
  v15 = *(v14 - 8);
  v79 = v14;
  v80 = v15;
  __chkstk_darwin(v14);
  v67 = v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v75 = v66 - v18;
  v19 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v19 - 8);
  v21 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v66 - v23;
  v25 = sub_100752294();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = (v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v77 = v2;
  v78 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_presenter);
  result = sub_10074C2C4();
  if (result)
  {
    v76 = result;
    v66[1] = a2;
    v30.super.isa = sub_100741704().super.isa;
    v31 = a1;
    isa = v30.super.isa;
    v66[0] = v31;
    v33 = [v31 cellForRowAtIndexPath:v30.super.isa];

    if (v33)
    {
      v34 = v33;
      [v34 bounds];
      LOBYTE(v101[0]) = 1;
      *&v83 = v33;
      *(&v83 + 1) = v35;
      *&v84 = v36;
      *(&v84 + 1) = v37;
      *&v85 = v38;
      BYTE8(v85) = 1;
      __asm { FMOV            V0.2D, #10.0 }

      v86 = _Q0;
      v87 = _Q0;
      v88 = 15;
      sub_100016C60(0, &qword_100926D00);
      *v28 = sub_100753774();
      (*(v26 + 104))(v28, enum case for DispatchPredicate.onQueue(_:), v25);
      v44 = sub_1007522C4();
      result = (*(v26 + 8))(v28, v25);
      if ((v44 & 1) == 0)
      {
        __break(1u);
        return result;
      }

      v91 = xmmword_100931330;
      v92 = xmmword_100931340;
      v93 = xmmword_100931350;
      v89 = xmmword_100931310;
      v90 = xmmword_100931320;
      v97 = v85;
      v98 = v86;
      v99 = v87;
      v95 = v83;
      v96 = v84;
      v101[0] = xmmword_100931310;
      v101[1] = xmmword_100931320;
      v101[3] = xmmword_100931340;
      v101[4] = xmmword_100931350;
      v94 = qword_100931360;
      v100 = v88;
      v102 = qword_100931360;
      v101[2] = xmmword_100931330;
      sub_100173514(&v89, v81);
      xmmword_100931330 = v97;
      xmmword_100931340 = v98;
      xmmword_100931350 = v99;
      qword_100931360 = v100;
      xmmword_100931310 = v95;
      xmmword_100931320 = v96;
      sub_10000C8CC(v101, &unk_1009308C0);
      v45 = *(v77 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph);
      v46 = sub_10000C518(&unk_100923210);
      sub_1001664D8(&v83, v81);
      sub_1007526C4();
      v47 = *(v46 - 8);
      if ((*(v47 + 48))(v24, 1, v46) == 1)
      {
        sub_10000C8CC(v24, &unk_100923960);
      }

      else
      {

        sub_1003C0E00(v53, 1, v45, v24);

        (*(v47 + 8))(v24, v46);
      }

      v81[2] = xmmword_100931330;
      v81[3] = xmmword_100931340;
      v81[4] = xmmword_100931350;
      v82 = qword_100931360;
      v81[0] = xmmword_100931310;
      v81[1] = xmmword_100931320;
      xmmword_100931310 = v89;
      xmmword_100931320 = v90;
      xmmword_100931330 = v91;
      xmmword_100931340 = v92;
      xmmword_100931350 = v93;
      qword_100931360 = v94;
      sub_10000C8CC(v81, &unk_1009308C0);
      sub_100166534(&v83);

      v54 = v79;
      v52 = v80;
    }

    else
    {
      v48 = *(v77 + OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_objectGraph);
      v49 = sub_10000C518(&unk_100923210);
      sub_1007526C4();
      v50 = *(v49 - 8);
      v51 = (*(v50 + 48))(v21, 1, v49);
      v52 = v80;
      if (v51 == 1)
      {
        sub_10000C8CC(v21, &unk_100923960);
      }

      else
      {

        sub_1003C0E00(v55, 1, v48, v21);

        (*(v50 + 8))(v21, v49);
      }

      v54 = v79;
    }

    sub_10074C234();
    if ((*(v52 + 48))(v13, 1, v54) == 1)
    {

      return sub_10000C8CC(v13, &qword_10093AC30);
    }

    v56 = v75;
    (*(v52 + 32))();
    v57 = v67;
    (*(v52 + 16))(v67, v56, v54);
    if ((*(v52 + 88))(v57, v54) != enum case for AccountSection.ContentItem.link(_:))
    {
      v61 = *(v52 + 8);
      v61(v56, v54);

      return (v61)(v57, v54);
    }

    (*(v52 + 96))(v57, v54);
    (*(v73 + 32))(v72, v57, v74);
    sub_1007472A4();
    (*(v70 + 104))(v68, enum case for AccountSectionLink.LinkDisplayType.action(_:), v71);
    sub_1004D1894(&qword_10093AC38, 255, &type metadata accessor for AccountSectionLink.LinkDisplayType);
    sub_100753274();
    sub_100753274();
    if (v101[0] == v95)
    {
      v58 = v71;
      v59 = *(v70 + 8);
      v59(v68, v71);
      v59(v69, v58);
      v56 = v75;

      v60 = v66[0];
    }

    else
    {
      v62 = sub_100754754();
      v63 = v71;
      v64 = *(v70 + 8);
      v64(v68, v71);
      v64(v69, v63);
      v52 = v80;

      v60 = v66[0];
      if ((v62 & 1) == 0)
      {

        goto LABEL_21;
      }
    }

    v65 = sub_100741704().super.isa;
    [v60 deselectRowAtIndexPath:v65 animated:1];

LABEL_21:
    (*(v73 + 8))(v72, v74);
    return (*(v52 + 8))(v56, v54);
  }

  return result;
}

id sub_1004CF84C(void *a1, uint64_t a2)
{
  sub_1004CFC78(a1, a2);
  result = [v2 tableView];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  [result layoutMargins];

  result = [v2 tableView];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = result;
  [result layoutMargins];

  result = sub_10074C2D4();
  if (result)
  {
    [a1 frame];
    CGRectGetWidth(v9);
    v7 = sub_100743E84();
    sub_1004D13FC(v7, v8, a1);
  }

  return result;
}

void sub_1004CF9F4(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for LinkableFooterView();
  v7 = swift_dynamicCastClass();
  if (v7)
  {
    v8 = v7;
    v9 = a2;
    if (sub_10074C2D4())
    {
      v10 = v9;
      [v8 setLayoutMargins:{sub_1004CFC78(a1, a3)}];

      v11 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
      v12 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
      v13 = sub_100743EA4();
      v14 = sub_1001D3738(v13, sub_1000E12F0);

      v15 = sub_100743E94();
      sub_10004DF04(v15, 0, v14);

      v18 = *&v8[v11];
      v16 = [v3 traitCollection];
      LOBYTE(v14) = sub_1007537F4();

      if (v14)
      {
        v17 = 2;
      }

      else
      {
        v17 = 0;
      }

      [v18 setTextAlignment:v17];
    }

    else
    {
      v18 = *&v8[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
      sub_10004E1D8();
    }
  }
}

double sub_1004CFC78(void *a1, uint64_t a2)
{
  v5 = sub_100754724();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10074C264();
  if (__OFSUB__(v9, 1))
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_8;
  }

  if (v9 - 1 == a2)
  {
    v13[1] = 0x4041800000000000;
    sub_1007502D4();
  }

  else
  {
    if (qword_100920D88 != -1)
    {
      swift_once();
    }

    sub_10000C888(qword_10093AAB0, qword_10093AAC8);
    sub_100536120();
  }

  sub_100750564();
  v2 = *(v6 + 8);
  v2(v8, v5);
  if (qword_100920D98 != -1)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_10000C888(qword_10093AB00, qword_10093AB18);
  sub_100536120();
  sub_100750564();
  v11 = v10;
  v2(v8, v5);
  [a1 layoutMargins];
  [a1 layoutMargins];
  return v11;
}

void sub_1004CFEF0()
{
  v1 = v0;
  v2 = [v0 navigationItem];
  sub_10074C2B4();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setTitle:v4];

  v5 = [v1 tableView];
  if (v5)
  {
    v6 = v5;
    [v5 reloadData];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004CFFCC()
{
  v1 = v0;
  v2 = sub_100750FA4();
  __chkstk_darwin(v2 - 8);
  if (sub_10074C264())
  {
    v3 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10074B974();

    v5 = *&v0[v3];
    *&v0[v3] = 0;

    v6 = [v0 view];
    if (v6)
    {
      v7 = v6;
      [v6 bounds];

      sub_10074B964();
      return;
    }

    __break(1u);
  }

  else
  {
    sub_100750F94();
    v8 = objc_allocWithZone(sub_100750FC4());
    v9 = sub_100750FB4();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
    sub_10074B974();

    v12 = *&v1[v10];
    *&v1[v10] = v9;
    v13 = v9;

    v14 = [v1 view];
    if (v14)
    {
      v15 = v14;
      [v14 bounds];

      sub_10074B964();
      return;
    }
  }

  __break(1u);
}

id sub_1004D01C4()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension32GenericAccountPageViewController_overlayViewController];
  sub_10074B974();

  v3 = *&v0[v1];
  *&v0[v1] = 0;

  result = [v0 view];
  if (result)
  {
    v5 = result;
    [result bounds];

    return sub_10074B964();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D0390()
{
  v0 = sub_10000C518(&qword_10092AC90);
  sub_100039C50(v0, qword_10093AB68);
  sub_10000D0FC(v0, qword_10093AB68);
  sub_10000C518(&unk_100923AE0);
  type metadata accessor for NSTextAlignment(0);
  return sub_100743474();
}

char *sub_1004D042C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_100750534();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v10 = sub_10000D0FC(v5, qword_100981A70);
  (*(v6 + 16))(v8, v10, v5);
  v11 = objc_allocWithZone(type metadata accessor for DynamicTypeLinkedLabel());
  *&v3[v9] = sub_10004DA8C(v8, 0, 0);
  if (a2)
  {
    v12 = sub_100753064();
  }

  else
  {
    v12 = 0;
  }

  v13 = type metadata accessor for LinkableFooterView();
  v29.receiver = v3;
  v29.super_class = v13;
  v14 = objc_msgSendSuper2(&v29, "initWithReuseIdentifier:", v12);

  v15 = OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel;
  v16 = *&v14[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
  v17 = qword_100920DB0;
  v18 = v14;
  v19 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v20 = sub_10000C518(&qword_10092AC90);
  sub_10000D0FC(v20, qword_10093AB68);
  v28[0] = v18;
  v21 = v18;
  sub_100743464();

  [v19 setTextAlignment:v28[1]];
  v22 = *&v14[v15];
  v23 = objc_opt_self();
  v24 = v22;
  v25 = [v23 secondaryLabelColor];
  [v24 setTextColor:v25];

  v26 = [v21 contentView];
  [v26 addSubview:*&v14[v15]];

  return v21;
}

id sub_1004D08B4()
{
  v1 = v0;
  v2 = sub_100754724();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LinkableFooterView();
  v15.receiver = v0;
  v15.super_class = v6;
  objc_msgSendSuper2(&v15, "layoutSubviews");
  v7 = *&v0[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
  v8 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v10 = v9;
  v12 = v11;

  [v7 measurementsWithFitting:v1 in:{v10, v12}];
  (*(v3 + 104))(v5, enum case for FloatingPointRoundingRule.up(_:), v2);
  sub_100753B84();
  (*(v3 + 8))(v5, v2);
  sub_1007477B4();
  v13 = [v1 contentView];
  sub_1007477B4();

  sub_100753B24();
  return [v7 setFrame:?];
}

uint64_t sub_1004D0B4C(uint64_t a1)
{
  v2 = v1;
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LinkableFooterView();
  objc_msgSendSuper2(&v12, "traitCollectionDidChange:", a1);
  v4 = [v1 traitCollection];
  v5 = sub_1007537F4();

  if (!a1 || (result = sub_1007537F4(), (result & 1) != (v5 & 1)))
  {
    v7 = *&v2[OBJC_IVAR____TtC22SubscribePageExtensionP33_59D788B89EC47DDFEEBB94FF9EFA27D718LinkableFooterView_linkedLabel];
    if (qword_100920DB0 != -1)
    {
      swift_once();
    }

    v8 = sub_10000C518(&qword_10092AC90);
    sub_10000D0FC(v8, qword_10093AB68);
    v10 = v2;
    v9 = v2;
    sub_100743464();

    return [v7 setTextAlignment:{v11, v10}];
  }

  return result;
}

void sub_1004D0D3C()
{
  v5.receiver = v0;
  v5.super_class = _s22SubscribePageExtension10HeaderViewCMa_0();
  objc_msgSendSuper2(&v5, "layoutSubviews");
  v1 = [v0 textLabel];
  if (v1)
  {
    v2 = v1;
    sub_1007477B4();
    v3 = v2;
    [v3 frame];
    v4 = [v0 contentView];
    sub_100016C60(0, &qword_100922300);
    sub_1007477B4();

    sub_100753B24();
    [v3 setFrame:?];
  }
}

id sub_1004D0FEC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

double sub_1004D10D8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10074CD14();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100016C60(0, &qword_100923AB0);
  if (qword_1009214A8 != -1)
  {
    swift_once();
  }

  v8 = sub_100750534();
  sub_10000D0FC(v8, qword_100981B30);
  v9 = [a3 traitCollection];
  sub_100753C14();

  v10 = sub_10074F3F4();
  v16[3] = v10;
  v16[4] = sub_1004D1894(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v11 = sub_10000D134(v16);
  (*(*(v10 - 8) + 104))(v11, enum case for Feature.measurement_with_labelplaceholder(_:), v10);
  sub_10074FC74();
  sub_10000C620(v16);

  sub_10074CD04();
  sub_100753BA4();
  sub_1004D1894(&unk_10092CB50, 255, &type metadata accessor for LabelPlaceholderCompatibility);
  sub_100750404();
  sub_100753BC4();
  v13 = v12;
  (*(v5 + 8))(v7, v4);
  return v13;
}

double sub_1004D13FC(uint64_t a1, uint64_t a2, void *a3)
{
  v19[1] = a1;
  v19[2] = a2;
  v4 = sub_100754724();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10074CD14();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100753BA4();
  sub_100016C60(0, &qword_100923AB0);
  if (qword_100921468 != -1)
  {
    swift_once();
  }

  v12 = sub_100750534();
  sub_10000D0FC(v12, qword_100981A70);
  v13 = [a3 traitCollection];
  sub_100753C14();

  v14 = sub_10074F3F4();
  v21 = v14;
  v22 = sub_1004D1894(&qword_10092AC70, 255, &type metadata accessor for Feature);
  v15 = sub_10000D134(v20);
  (*(*(v14 - 8) + 104))(v15, enum case for Feature.measurement_with_labelplaceholder(_:), v14);
  sub_10074FC74();
  sub_10000C620(v20);

  sub_10074CD04();
  sub_10074CCE4();
  (*(v9 + 8))(v11, v8);
  sub_10000C888(v20, v21);
  sub_100750414();
  sub_100753BC4();
  (*(v5 + 104))(v7, enum case for FloatingPointRoundingRule.up(_:), v4);
  sub_100753B84();
  v17 = v16;
  (*(v5 + 8))(v7, v4);
  sub_10000C620(v20);
  return v17;
}

uint64_t sub_1004D17E4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1004D1824()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1004D187C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004D1894(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004D18DC(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_100743584();
  v48 = *(v10 - 8);
  v49 = v10;
  __chkstk_darwin(v10);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] = [objc_allocWithZone(type metadata accessor for AppPromotionFormattedDateView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v53.receiver = v4;
  v53.super_class = ObjectType;
  v50 = ObjectType;
  v13 = objc_msgSendSuper2(&v53, "initWithFrame:", a1, a2, a3, a4);
  v14 = OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
  *(*&v13[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_delegate + 8) = &off_100878940;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v47 = v15;
  v17 = [v16 traitCollection];
  v18 = [(NSString *)v17 preferredContentSizeCategory];
  v19 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v20 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100753954())
  {
    v22 = sub_100753964();

    if (v22)
    {
      v23 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v24 = [(NSString *)v17 preferredContentSizeCategory];
  v25 = UIContentSizeCategoryAccessibilityMedium;
  v26 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v27 = sub_100753964();

    if (v27)
    {
      v23 = v25;
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {

    v23 = 0;
    v17 = v25;
  }

LABEL_12:

  v28 = v47;
  [v47 setMaximumContentSizeCategory:v23];

  v29 = [v16 contentView];
  [v29 addSubview:*&v13[v14]];

  v30 = OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer;
  v31 = *&v16[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v32 = type metadata accessor for TodayCardInfoLayerView();
  v52.receiver = v31;
  v52.super_class = v32;
  v33 = v16;
  objc_msgSendSuper2(&v52, "_setContinuousCornerRadius:", 20.0);
  sub_10056880C();
  *&v33[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = 0x402E000000000000;
  v35 = v48;
  v34 = v49;
  (*(v48 + 104))(v12, enum case for CornerStyle.continuous(_:), v49);
  sub_10072118C(v12, 15.0);
  (*(v35 + 8))(v12, v34);
  v36 = *&v33[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v36)
  {
    v37 = v36;
    [v37 _setContinuousCornerRadius:15.0];
    v38 = [v37 layer];
    [v38 setMaskedCorners:sub_1007535E4()];
  }

  v39 = [v33 contentView];
  [v39 _setContinuousCornerRadius:20.0];

  v40 = [v33 contentView];
  v41 = [v40 layer];

  [v41 setMaskedCorners:3];
  v42 = *&v16[v30];
  v43 = *&v42[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType];
  *&v42[OBJC_IVAR____TtC22SubscribePageExtension22TodayCardInfoLayerView_preferredGradientType] = kCAGradientLayerAxial;
  v44 = v42;
  v45 = kCAGradientLayerAxial;

  sub_1004D1E80();
  sub_10000C518(&unk_1009249D0);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1007A5A00;
  *(v46 + 32) = sub_1007519E4();
  *(v46 + 40) = &protocol witness table for UITraitPreferredContentSizeCategory;
  v51[3] = v50;
  v51[0] = v33;
  sub_100753D34();
  swift_unknownObjectRelease();

  sub_10000C620(v51);
  return v33;
}

uint64_t sub_1004D1E80()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v2 = [v0 traitCollection];
  v3 = [(NSString *)v2 preferredContentSizeCategory];
  v4 = UIContentSizeCategoryAccessibilityExtraExtraLarge;
  v5 = UIContentSizeCategoryAccessibilityExtraExtraExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (sub_100753954())
  {
    v7 = sub_100753964();

    if (v7)
    {
      v8 = UIContentSizeCategoryAccessibilityLarge;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v9 = [(NSString *)v2 preferredContentSizeCategory];
  v10 = UIContentSizeCategoryAccessibilityMedium;
  v11 = UIContentSizeCategoryAccessibilityExtraLarge;
  result = sub_100753964();
  if ((result & 1) == 0)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (sub_100753954())
  {
    v12 = sub_100753964();

    if (v12)
    {
      v8 = v10;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {

    v8 = 0;
    v2 = v10;
  }

LABEL_12:

  [v1 setMaximumContentSizeCategory:v8];

  return [v0 setNeedsLayout];
}

double sub_1004D208C()
{
  v1 = v0;
  v2 = sub_10000C518(&unk_100926C40);
  *&v3 = __chkstk_darwin(v2 - 8).n128_u64[0];
  v5 = &v17 - v4;
  v6 = 0.0;
  if (v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v7 = &v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets];
    if ((v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_parentSafeAreaInsets + 32] & 1) != 0 || (v6 = *v7, *v7 <= 0.0) || (v8 = [v0 traitCollection], v9 = sub_1007537D4(), v8, (v9 & 1) == 0))
    {
      v10 = [v1 traitCollection];
      v11 = sub_1007537F4();

      v12 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_pageGrid;
      swift_beginAccess();
      sub_100037990(v1 + v12, v5);
      v13 = [v1 traitCollection];
      sub_1005F6CA0(v5, v13);
      if (v11)
      {
        v6 = v15;
      }

      else
      {
        v6 = v14;
      }

      sub_1000E94F8(v5);
    }
  }

  return v6;
}

id sub_1004D2294()
{
  v1 = v0;
  v2 = [v0 contentView];
  [v2 bounds];
  v4 = v3;

  v5 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded] == 1)
  {
    v6 = v4 + -30.0 + -14.0 + -14.0;
    [*&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] bounds];
    Height = CGRectGetHeight(v37);
  }

  else
  {
    v8 = [v1 contentView];
    [v8 bounds];
    v6 = v9;
    Height = v10;
  }

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1000CBC6C(v36);
  sub_1000CD7E4(v11, v36, v6, Height);
  sub_1000CD59C(v36);

  if (v1[v5] == 1 && ((v12 = [v1 traitCollection], v13 = v12, !v1[v5]) ? (v14 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory) : (v14 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory), sub_10056B184(v12, v1[*v14], v36), v13, v1[v5] == 1))
  {
    v15 = [v1 contentView];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v38.origin.x = v17;
    v38.origin.y = v19;
    v38.size.width = v21;
    v38.size.height = v23;
    CGRectGetMinY(v38);
    MinY = sub_1004D208C();
  }

  else
  {
    v25 = [v1 contentView];
    [v25 bounds];
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;

    v39.origin.x = v27;
    v39.origin.y = v29;
    v39.size.width = v31;
    v39.size.height = v33;
    MinY = CGRectGetMinY(v39);
  }

  v34 = [v1 contentView];
  [v34 bounds];

  sub_100753B24();
  return [v11 setFrame:?];
}

void sub_1004D2560()
{
  if ((*(v0 + OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded) & 1) == 0)
  {
    v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView);
    [v1 frame];
    sub_100753B14();
    [v1 setFrame:?];
    v2 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror);
    if (v2)
    {
      v3 = v2;
      [v3 frame];
      sub_100753B14();
      [v3 setFrame:?];
    }
  }
}

uint64_t sub_1004D2718(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = sub_10074FB54();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v40 = v39 - v15;
  sub_1003171C4(a1, a2, a3, a4);
  v16 = sub_10074FB64();
  sub_1007419C4();
  if (swift_dynamicCastClass())
  {
    v39[1] = v16;
    v17 = sub_1007419A4();
    v18 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_1000C94C4(v17);
    [v5 setNeedsLayout];
    v19 = [v5 backgroundView];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1007419B4();
      [v20 setBackgroundColor:v21];
    }

    v39[0] = v13;
    v22 = *&v5[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v23 = sub_1007419B4();
    [v22 setBackgroundColor:v23];

    v24 = sub_1007419B4();
    v25 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v26 = *&v18[v25];
    if (v26)
    {
      v27 = v26;
      [v27 setBackgroundColor:v24];
    }

    type metadata accessor for AppEventLiveIndicatorAnimationCoordinator();
    sub_100752754();
    v28 = v43;
    v29 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator;
    v30 = *&v18[OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_liveIndicatorAnimationCoordinator];
    v31 = v30;
    sub_1000CAC84(v28);
    v32 = *&v18[v29];
    *&v18[v29] = v28;
    v33 = v28;

    sub_1000CADE8(v30);
    v34 = v40;
    sub_10074FB74();
    v35 = v39[0];
    (*(v11 + 104))(v39[0], enum case for TodayCard.Style.white(_:), v10);
    sub_1000F8684();
    sub_100753274();
    sub_100753274();
    if (v43 == v41 && v44 == v42)
    {
      v36 = 1;
    }

    else if (sub_100754754())
    {
      v36 = 1;
    }

    else
    {
      v36 = 2;
    }

    v38 = *(v11 + 8);
    v38(v35, v10);
    v38(v34, v10);

    [v18 setOverrideUserInterfaceStyle:v36];
    sub_1004D2B04();
    [v5 setNeedsLayout];
  }

  else
  {
  }
}

void sub_1004D2B04()
{
  v1 = v0;
  sub_1005F48BC();
  v2 = [v0 contentView];
  sub_1006787A8();
  if (v3)
  {
    v4 = sub_100753064();
  }

  else
  {
    v4 = 0;
  }

  [v2 setAccessibilityLabel:v4];

  v5 = [v1 contentView];
  v6 = [*(*&v1[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView] + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_textLabel) text];
  if (v6)
  {
    v7 = v6;
    sub_100753094();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v21[0] = v9;
  v10 = 0;
  v21[1] = sub_1006787A8();
  v21[2] = v11;
  v12 = _swiftEmptyArrayStorage;
LABEL_8:
  v13 = &v21[2 * v10];
  while (++v10 != 3)
  {
    v14 = v13 + 2;
    v15 = *v13;
    v13 += 2;
    if (v15)
    {
      v16 = *(v14 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1002554F8(0, *(v12 + 2) + 1, 1, v12);
      }

      v18 = *(v12 + 2);
      v17 = *(v12 + 3);
      if (v18 >= v17 >> 1)
      {
        v12 = sub_1002554F8((v17 > 1), v18 + 1, 1, v12);
      }

      *(v12 + 2) = v18 + 1;
      v19 = &v12[16 * v18];
      *(v19 + 4) = v16;
      *(v19 + 5) = v15;
      goto LABEL_8;
    }
  }

  sub_10000C518(&qword_10092FE70);
  swift_arrayDestroy();
  sub_10000C518(&unk_100928A70);
  sub_10010ABC4();
  sub_100752FF4();

  v20 = sub_100753064();

  [v5 setAccessibilityLabel:v20];
}

void sub_1004D2D88(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  swift_getObjectType();
  sub_10031AF08(a1, a2, a3 & 1);
  v8 = swift_dynamicCastClass();
  if (v8 && (a3 & 1) == 0)
  {
    v9 = v8;
    v10 = a1;
    v11 = [v4 backgroundView];
    if (v11)
    {
      v12 = v11;
      v13 = [v9 backgroundView];
      v14 = [v13 backgroundColor];

      [v12 setBackgroundColor:v14];
    }

    v15 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView];
    v16 = [*&v9[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundView] backgroundColor];
    [v15 setBackgroundColor:v16];

    v17 = OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView;
    v18 = *&v9[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    v19 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_appEventFormattedDatePresenter;
    swift_beginAccess();
    if (*(v18 + v19))
    {
    }

    else
    {
      v20 = _swiftEmptyArrayStorage;
    }

    v21 = *&v4[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
    sub_1000C94C4(v20);
    [v4 setNeedsLayout];
    v22 = *&v9[v17];
    v23 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v24 = *(v22 + v23);
    if (v24)
    {
      v25 = [v24 backgroundColor];
    }

    else
    {
      v25 = 0;
    }

    v26 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
    swift_beginAccess();
    v27 = *&v21[v26];
    if (v27)
    {
      v28 = v27;
      [v28 setBackgroundColor:v25];
    }

    [v21 setOverrideUserInterfaceStyle:{objc_msgSend(*&v9[v17], "overrideUserInterfaceStyle")}];
    v29 = [*&v9[v17] maximumContentSizeCategory];
    [v21 setMaximumContentSizeCategory:v29];

    v30 = [v4 contentView];
    v31 = [v9 contentView];
    v32 = [v31 overrideUserInterfaceStyle];

    [v30 setOverrideUserInterfaceStyle:v32];
  }
}

void sub_1004D3068()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, "prepareForReuse");
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  sub_1000C94C4(_swiftEmptyArrayStorage);
  [v1 setNeedsLayout];
  v3 = OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_backgroundView;
  swift_beginAccess();
  v4 = *(v2 + v3);
  if (v4)
  {
    [v4 setBackgroundColor:0];
  }

  v5 = [v1 contentView];
  [v5 setOverrideUserInterfaceStyle:0];
}

id sub_1004D318C()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031DE90();
  v6 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  if (v1[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = 5;
  }

  else
  {
    v8 = 3;
  }

  v9 = *(v6 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style);
  *(v6 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) = v8;
  sub_1000C95D0(v9);
  if (v1[v7])
  {
    v10 = 0.0;
  }

  else
  {
    v10 = 20.0;
  }

  v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v12 = type metadata accessor for TodayCardInfoLayerView();
  v22.receiver = v11;
  v22.super_class = v12;
  objc_msgSendSuper2(&v22, "_setContinuousCornerRadius:", v10);
  sub_10056880C();
  if (v1[v7])
  {
    v13 = 0.0;
  }

  else
  {
    v13 = 15.0;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v13;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10072118C(v5, v13);
  (*(v3 + 8))(v5, v2);
  v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v14)
  {
    v15 = v14;
    [v15 _setContinuousCornerRadius:v13];
    v16 = [v15 layer];
    [v16 setMaskedCorners:sub_1007535E4()];
  }

  if (v1[v7])
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 20.0;
  }

  v18 = [v1 contentView];
  [v18 _setContinuousCornerRadius:v17];

  v19 = [v1 contentView];
  v20 = [v19 layer];

  [v20 setMaskedCorners:3];
  return [v1 setNeedsLayout];
}

id sub_1004D3468()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10031E18C();
  v6 = OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded;
  v7 = v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded];
  v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell__sizeCategory;
  if (!v0[OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_isExpanded])
  {
    v8 = &OBJC_IVAR____TtC22SubscribePageExtension31BaseTodayCardCollectionViewCell_originalSizeCategory;
  }

  v9 = v0[*v8];
  if (v9 == 4)
  {
    v10 = 16.0;
  }

  else
  {
    v10 = 15.0;
  }

  if (v9 == 4)
  {
    v11 = 4;
  }

  else
  {
    v11 = 3;
  }

  v12 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension35AppEventTodayCardCollectionViewCell_formattedDateView];
  if (v7)
  {
    v13 = 5;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(v12 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style);
  *(v12 + OBJC_IVAR____TtC22SubscribePageExtension29AppPromotionFormattedDateView_style) = v13;
  sub_1000C95D0(v14);
  if (v1[v6])
  {
    v15 = 0.0;
  }

  else
  {
    v15 = 20.0;
  }

  v16 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_infoLayer];
  v17 = type metadata accessor for TodayCardInfoLayerView();
  v23.receiver = v16;
  v23.super_class = v17;
  objc_msgSendSuper2(&v23, "_setContinuousCornerRadius:", v15);
  sub_10056880C();
  if (v1[v6])
  {
    v18 = 0.0;
  }

  else
  {
    v18 = v10;
  }

  *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaCornerRadius] = v18;
  (*(v3 + 104))(v5, enum case for CornerStyle.continuous(_:), v2);
  sub_10072118C(v5, v18);
  (*(v3 + 8))(v5, v2);
  v19 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension27StoryCardCollectionViewCell_mediaBackgroundViewMirror];
  if (v19)
  {
    v20 = v19;
    [v20 _setContinuousCornerRadius:v18];
    v21 = [v20 layer];
    [v21 setMaskedCorners:sub_1007535E4()];
  }

  return [v1 setNeedsLayout];
}

uint64_t type metadata accessor for AppEventTodayCardCollectionViewCell()
{
  result = qword_10093AC90;
  if (!qword_10093AC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004D37E0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100747524();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  sub_100746914();

  v6 = v11[1];
  v7 = sub_1007537D4();

  if (v7)
  {
    (*(v3 + 104))(v5, enum case for ComponentSeparator.Position.bottom(_:), v2);
    sub_100747534();
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = sub_100747564();
  return (*(*(v9 - 8) + 56))(a1, v8, 1, v9);
}

uint64_t sub_1004D396C()
{
  v0 = sub_1007504F4();
  sub_100039C50(v0, qword_100980678);
  sub_10000D0FC(v0, qword_100980678);
  return sub_100750504();
}

uint64_t sub_1004D39C0()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753E74();
  qword_100980690 = result;
  return result;
}

uint64_t sub_1004D3A04()
{
  sub_100016C60(0, &qword_100923500);
  result = sub_100753E34();
  qword_100980698 = result;
  return result;
}

uint64_t sub_1004D3ACC()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_1009806E8);
  sub_10000D0FC(v4, qword_1009806E8);
  if (qword_100920DD0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806A0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004D3CA0()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980700);
  sub_10000D0FC(v4, qword_100980700);
  if (qword_100920DD8 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806B8);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004D3E74()
{
  v0 = sub_100750304();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100750B04();
  sub_100039C50(v4, qword_100980718);
  sub_10000D0FC(v4, qword_100980718);
  if (qword_100920DE0 != -1)
  {
    swift_once();
  }

  v5 = sub_100750534();
  v6 = sub_10000D0FC(v5, qword_1009806D0);
  (*(*(v5 - 8) + 16))(v3, v6, v5);
  (*(v1 + 104))(v3, enum case for FontSource.useCase(_:), v0);
  v10[3] = v0;
  v10[4] = &protocol witness table for FontSource;
  v7 = sub_10000D134(v10);
  (*(v1 + 16))(v7, v3, v0);
  sub_100750B14();
  return (*(v1 + 8))(v3, v0);
}

id sub_1004D4048(uint64_t a1, uint64_t a2)
{
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  if (a2)
  {
    v5 = sub_100753064();
  }

  else
  {
    v5 = 0;
  }

  [v4 setText:v5];

  [v4 setHidden:a2 == 0];
  v6 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if ([v4 isHidden])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  [v6 setNumberOfLines:v7];

  return [v2 setNeedsLayout];
}

void (*sub_1004D412C(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_videoView;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = swift_unknownObjectWeakLoadStrong();
  return sub_1004D4180;
}

void sub_1004D4180(uint64_t a1, char a2)
{
  v2 = *(a1 + 8);
  if (a2)
  {
    v9 = *a1;
    sub_1004D644C();
    swift_unknownObjectWeakAssign();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      v5 = [v2 contentView];
      [v5 addSubview:v4];
    }

    [v2 setNeedsLayout];
  }

  else
  {
    v9 = *a1;
    sub_1004D644C();
    swift_unknownObjectWeakAssign();
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = [v2 contentView];
      [v8 addSubview:v7];
    }

    [v2 setNeedsLayout];
  }
}

id sub_1004D42AC()
{
  v1 = v0;
  v2 = sub_100743584();
  v3 = *(v2 - 8);
  *&v4 = __chkstk_darwin(v2).n128_u64[0];
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v7)
  {
    sub_100746ED4();
    (*(v3 + 104))(v6, enum case for CornerStyle.arc(_:), v2);
    v8 = v7;
    v9 = sub_100746EC4();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v11 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v11)
    {
      [v11 removeFromSuperview];
      v12 = *&v1[v10];
    }

    else
    {
      v12 = 0;
    }

    *&v1[v10] = v9;
    v16 = v9;

    sub_1004D446C();
    v17 = *&v1[v10];
    if (v17)
    {
      v18 = v17;
      [v18 addSubview:v8];
    }
  }

  else
  {
    v13 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView;
    v14 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v14)
    {
      [v14 removeFromSuperview];
      v15 = *&v1[v13];
    }

    else
    {
      v15 = 0;
    }

    *&v1[v13] = 0;

    sub_1004D446C();
  }

  return [v1 setNeedsLayout];
}

id sub_1004D446C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
  if (v1)
  {
    v2 = v1;
    [v2 setClipsToBounds:1];
    if (qword_100920DC8 != -1)
    {
      swift_once();
    }

    [v2 setBackgroundColor:qword_100980698];
    v3 = [v0 contentView];
    [v3 addSubview:v2];

    v4 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
    if (v4)
    {
      v5 = v4;
      v6 = [v0 contentView];
      [v6 addSubview:v5];
    }
  }

  return [v0 setNeedsLayout];
}

id sub_1004D459C()
{
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v1)
  {
    v1[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_showBorder] = 1;
    v2 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension11ArtworkGrid_imageBorderView];
    v3 = v1;
    [v2 setHidden:0];
    v4 = v3;
    [v4 _setCornerRadius:20.0];
    [v4 setNeedsLayout];
    if (qword_100920DC0 != -1)
    {
      swift_once();
    }

    [v4 setBackgroundColor:qword_100980690];

    v5 = [v0 contentView];
    [v5 addSubview:v4];
  }

  return [v0 setNeedsLayout];
}

char *sub_1004D46CC(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v61 = sub_10074AB44();
  v10 = *(v61 - 8);
  __chkstk_darwin(v61);
  v60 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000C518(&unk_100928A40);
  __chkstk_darwin(v12 - 8);
  v14 = &v56 - v13;
  v15 = sub_100743B04();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v16 + 104))(v19, enum case for SystemImage.appstore(_:), v15, v17);
  v21 = sub_100743AE4();
  (*(v16 + 8))(v19, v15);
  v22 = [objc_allocWithZone(UIImageView) initWithImage:v21];

  *&v5[v20] = v22;
  v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView] = 0;
  swift_unknownObjectWeakInit();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid] = 0;
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView] = 0;
  if (qword_100920DD0 != -1)
  {
    swift_once();
  }

  v23 = sub_100750534();
  v24 = sub_10000D0FC(v23, qword_1009806A0);
  v25 = *(v23 - 8);
  v58 = *(v25 + 16);
  v59 = v25 + 16;
  v58(v14, v24, v23);
  v57 = *(v25 + 56);
  v57(v14, 0, 1, v23);
  v26 = enum case for DirectionalTextAlignment.none(_:);
  v27 = *(v10 + 104);
  v27(v60, enum case for DirectionalTextAlignment.none(_:), v61);
  v28 = sub_100745C84();
  v29 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel] = sub_100745C74();
  if (qword_100920DD8 != -1)
  {
    swift_once();
  }

  v30 = sub_10000D0FC(v23, qword_1009806B8);
  v58(v14, v30, v23);
  v57(v14, 0, 1, v23);
  v27(v60, v26, v61);
  v31 = objc_allocWithZone(v28);
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel] = sub_100745C74();
  *&v5[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel] = sub_100745C64();
  v32 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v62.receiver = v5;
  v62.super_class = v32;
  v33 = objc_msgSendSuper2(&v62, "initWithFrame:", a1, a2, a3, a4);
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v37 = v33;
  [v37 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];
  v38 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel;
  v39 = qword_100920DE0;
  v40 = *&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = sub_10000D0FC(v23, qword_1009806D0);
  v58(v14, v41, v23);
  v57(v14, 0, 1, v23);
  sub_100745BA4();

  [*&v37[v38] setLineBreakMode:4];
  v42 = [v37 contentView];
  v43 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel;
  [v42 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel]];

  v44 = [v37 contentView];
  v45 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  [v44 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon]];

  v46 = [v37 contentView];
  [v46 addSubview:*&v37[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel]];

  v47 = [v37 contentView];
  [v47 addSubview:*&v37[v38]];

  v48 = *&v37[v43];
  v49 = [v37 tintColor];
  [v48 setTextColor:v49];

  v50 = *&v37[v38];
  sub_100016C60(0, &qword_100923500);
  v51 = v50;
  v52 = sub_100753DF4();
  [v51 setTextColor:v52];

  v53 = *&v37[v45];
  v54 = [v37 tintColor];

  [v53 setTintColor:v54];
  return v37;
}

void sub_1004D4E64()
{
  v1 = v0;
  v174 = sub_100754724();
  v163 = *(v174 - 8);
  __chkstk_darwin(v174);
  v173 = &v156 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = COERCE_DOUBLE(sub_100750B04());
  v167 = *(*&v181 - 8);
  __chkstk_darwin(*&v181);
  v175 = &v156 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_10000C518(&qword_1009233B8);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v159 = (&v156 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  *&v178 = &v156 - v8;
  __chkstk_darwin(v9);
  v11 = (&v156 - v10);
  __chkstk_darwin(v12);
  v172 = (&v156 - v13);
  __chkstk_darwin(v14);
  v16 = &v156 - v15;
  v17 = type metadata accessor for EditorialSearchResultCollectionViewCell();
  v184.receiver = v0;
  v184.super_class = v17;
  objc_msgSendSuper2(&v184, "layoutSubviews");
  v18 = [v0 contentView];
  sub_100016C60(0, &qword_100922300);
  sub_1007477B4();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;

  sub_10000C518(&qword_1009233B0);
  v27 = *(v5 + 72);
  v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *&v29 = COERCE_DOUBLE(swift_allocObject());
  v168 = v28;
  v176 = *&v29;
  v30 = v29 + v28;
  v31 = *(v4 + 48);
  v160 = v1;
  v32 = *&v1[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialTypeLabel];
  *(v29 + v28) = v32;
  v33 = qword_100920DE8;
  v171 = v32;
  if (v33 != -1)
  {
    swift_once();
  }

  v34 = v181;
  v35 = sub_10000D0FC(*&v181, qword_1009806E8);
  v179 = *(v167 + 16);
  (*&v179)(v30 + v31, v35, *&v34);
  v36 = *(v4 + 48);
  v37 = *&v160[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_titleLabel];
  *(v30 + *&v27) = v37;
  v38 = v4;
  v39 = qword_100920DF0;
  v40 = v37;
  if (v39 != -1)
  {
    swift_once();
  }

  v41 = v181;
  v42 = sub_10000D0FC(*&v181, qword_100980700);
  (*&v179)(v30 + *&v27 + v36, v42, *&v41);
  v180 = v27;
  v43 = (v30 + 2 * *&v27);
  v177 = v38;
  v44 = *(v38 + 48);
  v45 = *&v160[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_subtitleLabel];
  *v43 = v45;
  v46 = qword_100920DF8;
  v47 = v45;
  if (v46 != -1)
  {
    swift_once();
  }

  v48 = v181;
  v49 = sub_10000D0FC(*&v181, qword_100980718);
  (*&v179)(&v43[v44], v49, *&v48);
  *&v179 = v167 + 8;
  v50 = _swiftEmptyArrayStorage;
  v51 = 3;
  v170 = v30;
  v52 = v30;
  do
  {
    sub_100287B64(v52, v16);
    sub_100287B64(v16, v11);
    v54 = *v11;
    v55 = *(v177 + 48);
    v56 = [*v11 isHidden];

    v57 = **&v179;
    (**&v179)(v11 + v55, COERCE_DOUBLE(*&v181));
    if (v56)
    {
      sub_1004D6520(v16);
      v53 = v180;
    }

    else
    {
      sub_100287BD4(v16, *&v178);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v183[0] = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_10001E634(0, v50[2] + 1, 1);
        v50 = v183[0];
      }

      v60 = v50[2];
      v59 = v50[3];
      if (v60 >= v59 >> 1)
      {
        sub_10001E634(v59 > 1, v60 + 1, 1);
        v50 = v183[0];
      }

      v50[2] = v60 + 1;
      v53 = v180;
      sub_100287BD4(*&v178, v168 + v50 + v60 * *&v180);
    }

    v52 += *&v53;
    --v51;
  }

  while (v51);
  swift_setDeallocating();
  v61 = v177;
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v62 = v50[2];
  v63 = v160;
  v165 = v24;
  v166 = v26;
  v176 = v20;
  if (v62)
  {
    v170 = *(v61 + 48);
    v64 = sub_100016C60(0, &qword_1009327F0);
    v164 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon;
    v161 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
    v65 = v168 + v50;
    v168 = (v167 + 32);
    v169 = v64;
    v167 = *&v163 + 8;
    v66 = 0.0;
    v157 = v65;
    v158 = v62;
    v67 = *&v181;
    v68 = v175;
    do
    {
      v69 = v172;
      sub_100287B64(v65, v172);
      v70 = *v69;
      (*v168)(v68, v69 + v170, v67);
      v71 = v70;
      [v71 sizeThatFits:{v24, v26}];
      v74 = v73;
      if (v72 >= v24)
      {
        v72 = v24;
      }

      v178 = v72;
      v75 = [v63 traitCollection];
      v76 = v63;
      v77 = v173;
      sub_1007502D4();
      sub_100750AD4();
      v79 = v78;

      v80 = v77;
      v63 = v76;
      (*v167)(v80, v174);
      v186.origin.x = v20;
      v186.origin.y = v22;
      v186.size.width = v24;
      v186.size.height = v26;
      v81 = v66 + CGRectGetMinY(v186);
      [v71 firstBaselineFromTop];
      v83 = v81 + v79 - v82;
      if ((sub_100753FC4() & 1) != 0 && v76[v164] == 1)
      {
        v84 = *&v76[v161];
        [v84 bounds];
        v85 = v24;
        v87 = v86;
        v89 = v88;
        v20 = v176;
        v187.origin.x = v176;
        v187.origin.y = v22;
        v187.size.width = v85;
        v187.size.height = v166;
        MinX = CGRectGetMinX(v187);
        v163 = v74;
        v90 = v74 * 0.5 + v83;
        v91 = v22;
        v92 = v90 - v89 * 0.5;
        sub_100753B24();
        [v84 setFrame:?];
        v188.origin.y = v92;
        v22 = v91;
        v188.origin.x = MinX;
        v188.size.width = v87;
        v24 = v165;
        v188.size.height = v89;
        v26 = v166;
        CGRectGetMaxX(v188);
      }

      else
      {
        v20 = v176;
        v185.origin.x = v176;
        v185.origin.y = v22;
        v185.size.width = v24;
        v185.size.height = v26;
        CGRectGetMinX(v185);
      }

      sub_100753B24();
      [v71 setFrame:?];

      v68 = v175;
      v67 = *&v181;
      v57(v175, *&v181);
      v66 = v66 + v79;
      v65 += *&v180;
      --v62;
    }

    while (v62);
    if (v158 > v50[2])
    {
      __break(1u);
      return;
    }

    v93 = v159;
    sub_100287B64(v157 + (v158 - 1) * *&v180, v159);

    v94 = *v93;
    v95 = *(v177 + 48);
    [*v93 frame];
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v103 = v102;

    v189.origin.x = v97;
    v189.origin.y = v99;
    v189.size.width = v101;
    v189.size.height = v103;
    v24 = v165;
    v26 = v166;
    MaxY = CGRectGetMaxY(v189);
    v57(v93 + v95, v67);
  }

  else
  {

    MaxY = 0.0;
    v67 = *&v181;
  }

  if (qword_100921708 != -1)
  {
    swift_once();
  }

  sub_10000D0FC(v67, qword_100982098);
  v105 = [v63 traitCollection];
  sub_100751034();
  sub_10000C518(&unk_1009231A0);
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_1007A5CF0;
  *(v106 + 32) = v105;
  v107 = v105;
  v108 = sub_100751044();
  sub_100750544();
  v110 = v109;

  v111 = MaxY + v110;
  v112 = v176;
  v190.origin.x = v176;
  v190.origin.y = v22;
  v190.size.width = v24;
  v190.size.height = v26;
  v181 = CGRectGetMinX(v190);
  v191.origin.x = v112;
  v191.origin.y = v22;
  v191.size.width = v24;
  v191.size.height = v26;
  v113 = CGRectGetMaxY(v191) - (MaxY + v110);
  if (qword_100920DB8 != -1)
  {
    swift_once();
  }

  v114 = sub_1007504F4();
  sub_10000D0FC(v114, qword_100980678);
  sub_1007504B4();
  v116 = v115;
  v192.origin.x = v112;
  v192.origin.y = v22;
  v192.size.width = v24;
  v192.size.height = v26;
  Width = CGRectGetWidth(v192);
  sub_1007504C4();
  if (Width >= v116)
  {
    v119 = v116;
  }

  else
  {
    v119 = Width;
  }

  if (Width >= v116)
  {
    v118 = v113;
  }

  v120 = v119;
  v121 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  v122 = v118;
  if (v121)
  {
    v123 = v121;
    sub_100753B24();
    sub_100743324();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = Strong;
    sub_100753B24();
    [v125 setFrame:?];
  }

  v126 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v126)
  {
    v127 = v126;
    sub_100753B24();
    v129 = v128;
    v131 = v130;
    v132 = v122;
    v134 = v133;
    v136 = v135;
    v137 = type metadata accessor for ArtworkGrid();
    v182.receiver = v127;
    v182.super_class = v137;
    v138 = v134;
    v122 = v132;
    objc_msgSendSuper2(&v182, "setFrame:", v129, v131, v138, v136);
    sub_100602594();
    [v127 setNeedsLayout];
  }

  v139 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v139)
  {
    v140 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView];
    if (v140)
    {
      v141 = v139;
      v142 = v140;
      v63 = v160;
      [v142 setFrame:{v181, v111, v120, v122}];
      [v142 bounds];
      v144 = v143;
      v146 = v145;
      v178 = v122;
      v148 = v147;
      v150 = v149;
      sub_100743394();
      v180 = v111;
      v193.origin.x = v144;
      v193.origin.y = v146;
      v193.size.width = v148;
      v193.size.height = v150;
      CGRectGetMidX(v193);
      v179 = v120;
      v194.origin.x = v144;
      v194.origin.y = v146;
      v194.size.width = v148;
      v122 = v178;
      v194.size.height = v150;
      CGRectGetMidY(v194);
      v120 = v179;
      v111 = v180;
      sub_100753B24();
      sub_100743324();
    }
  }

  v151 = *&v63[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v151)
  {
    v152 = v151;
    sub_1000CBC6C(v183);
    sub_1000CD7E4(v63, v183, v120, v122);
    v179 = v22;
    v180 = v153;
    v154 = v181;
    sub_1000CD59C(v183);
    v195.origin.x = v154;
    v195.origin.y = v111;
    v195.size.width = v120;
    v195.size.height = v122;
    CGRectGetMinX(v195);
    v196.size.height = v122;
    v196.origin.x = v154;
    v196.origin.y = v111;
    v196.size.width = v120;
    CGRectGetMinY(v196);
    v155 = v152;
    sub_100753B24();
    [v155 setFrame:?];
  }
}

id sub_1004D5CFC()
{
  v17.receiver = v0;
  v17.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  objc_msgSendSuper2(&v17, "prepareForReuse");
  v1 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView;
  v2 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView];
  if (v2)
  {
    [v2 removeFromSuperview];
    v3 = *&v0[v1];
  }

  else
  {
    v3 = 0;
  }

  *&v0[v1] = 0;

  [v0 setNeedsLayout];
  sub_1004D644C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = [v0 contentView];
    [v6 addSubview:v5];
  }

  [v0 setNeedsLayout];
  v7 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView;
  v8 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView];
  if (v8)
  {
    [v8 removeFromSuperview];
    v9 = *&v0[v7];
  }

  else
  {
    v9 = 0;
  }

  *&v0[v7] = 0;

  sub_1004D42AC();
  v10 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid;
  v11 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid];
  if (v11)
  {
    [v11 removeFromSuperview];
    v12 = *&v0[v10];
  }

  else
  {
    v12 = 0;
  }

  *&v0[v10] = 0;

  sub_1004D459C();
  v13 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView;
  v14 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView];
  if (v14)
  {
    [v14 removeFromSuperview];
    v15 = *&v0[v13];
  }

  else
  {
    v15 = 0;
  }

  *&v0[v13] = 0;

  return [v0 setNeedsLayout];
}

id sub_1004D5F10()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorialSearchResultCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1004D6044(void *a1)
{
  sub_1004D644C();
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [v1 contentView];
    [v4 addSubview:v3];
  }

  [v1 setNeedsLayout];
}

uint64_t (*sub_1004D60F4(uint64_t **a1))()
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
  v2[4] = sub_1004D412C(v2);
  return sub_1000181A8;
}

void sub_1004D6164()
{
  v1 = *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView);
  if (v1)
  {
    v2 = v1;
    sub_1000C8E14();
  }
}

uint64_t sub_1004D61CC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.getter(a1, WitnessTable);
}

uint64_t sub_1004D6220(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return VideoViewProviding.someVideoView.setter(a1, a2, a3, WitnessTable);
}

uint64_t (*sub_1004D628C(uint64_t *a1))()
{
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
  swift_getWitnessTable();
  *(v3 + 32) = sub_100747DB4();
  return sub_10001BB78;
}

uint64_t sub_1004D6404(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1004D644C()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    sub_1004D6404(&qword_1009230E0, 255, type metadata accessor for VideoView);
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

uint64_t sub_1004D6520(uint64_t a1)
{
  v2 = sub_10000C518(&qword_1009233B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1004D6588()
{
  v1 = sub_100743B04();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialIcon;
  (*(v2 + 104))(v5, enum case for SystemImage.appstore(_:), v1, v3);
  v7 = sub_100743AE4();
  (*(v2 + 8))(v5, v1);
  v8 = [objc_allocWithZone(UIImageView) initWithImage:v7];

  *(v0 + v6) = v8;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_showEditorialIcon) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_editorialArtworkView) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconArtworkView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_iconBackingView) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_artworkGrid) = 0;
  *(v0 + OBJC_IVAR____TtC22SubscribePageExtension39EditorialSearchResultCollectionViewCell_appEventStoryFormattedDateView) = 0;
  sub_100754644();
  __break(1u);
}

id sub_1004D6748(char a1)
{
  *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_isCollapsing) = a1;
  v2 = *(v1 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView);
  *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_isCollapsing) = a1;
  *(*(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_mediaContainerView) + OBJC_IVAR____TtC22SubscribePageExtension30AppPromotionMediaContainerView_isCollapsing) = a1;
  [*(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton) setAlpha:0.0];
  v3 = *(v2 + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_contentView);

  return [v3 setAlpha:0.0];
}

void sub_1004D67F4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v3[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_isCollapsing] = 0;
  v9 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
  v10 = sub_100752614();
  v11 = *(*(v10 - 8) + 56);
  v11(&v4[v9], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics], 1, 1, v10);
  v11(&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics], 1, 1, v10);
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph] = a2;
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_presenter] = a1;
  sub_1007442C4();
  sub_100752764();

  sub_100752D34();
  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_artworkLoader] = v25;

  sub_1007442D4();

  sub_100744284();

  v12 = &v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver];
  *(v12 + 3) = sub_1007427D4();
  *(v12 + 4) = &protocol witness table for BasePresenter;
  *v12 = a1;
  v13 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageView());

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView] = sub_10057D480(a2);
  v14 = objc_allocWithZone(type metadata accessor for AppPromotionDetailPageTransitioningDelegate());
  v15 = a3;
  v16 = sub_10003DF10(a3);

  *&v4[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_containerTransitioningDelegate] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  sub_10074B184();
  v18 = v17;
  sub_100752D34();
  v19 = v25;
  v20 = v18;
  sub_10074B154();

  sub_1004DA624(&qword_10093ADC8, type metadata accessor for AppPromotionDetailPageViewController);
  sub_1007427C4();
  v21 = [v20 view];

  if (!v21)
  {
    __break(1u);
    goto LABEL_6;
  }

  [v21 setLayoutMargins:{UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right}];

  v22 = [v20 view];
  if (!v22)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  [v22 setClipsToBounds:0];

  v23 = [v20 view];
  if (v23)
  {
    [v23 addSubview:*&v20[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView]];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1004D6CC0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "viewDidLoad", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didLoad(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  *(*&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView] + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_delegate + 8) = &off_100878980;
  swift_unknownObjectWeakAssign();
  return sub_100744314();
}

void sub_1004D6E8C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewWillAppear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.willAppear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004DA624(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_1004DA624(&qword_10093EF20, type metadata accessor for AppPromotionDetailPageView);
  sub_10074B164();
}

void sub_1004D714C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16.receiver = v2;
  v16.super_class = ObjectType;
  objc_msgSendSuper2(&v16, "viewDidAppear:", a1 & 1, v11);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  if (sub_1007442E4())
  {
    sub_100741444();
    sub_100741424();
    (*(v6 + 8))(v8, v5);
    sub_100746C04();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v14 = v15[1];
  sub_10074B104();
  sub_100580030();
}

uint64_t sub_1004D748C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100741454();
  v19 = *(v5 - 8);
  v20 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100752BC4();
  __chkstk_darwin(v8 - 8);
  v9 = sub_10000C518(&qword_100930220);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = sub_100742964();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.receiver = v2;
  v21.super_class = ObjectType;
  objc_msgSendSuper2(&v21, "viewWillDisappear:", a1 & 1, v14);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v13 + 104))(v16, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v12);
  sub_100742974();
  (*(v13 + 8))(v16, v12);
  if (sub_1007442E4())
  {
    sub_100752BB4();
    sub_100741444();
    sub_100741424();
    (*(v19 + 8))(v7, v20);
    sub_100746C24();
    v17 = sub_100746C34();
    (*(*(v17 - 8) + 56))(v11, 0, 1, v17);
    sub_100746C14();
  }

  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_1004D785C(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_100742964();
  v6 = *(v5 - 8);
  *&v7 = __chkstk_darwin(v5).n128_u64[0];
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.receiver = v2;
  v13.super_class = ObjectType;
  objc_msgSendSuper2(&v13, "viewDidDisappear:", a1 & 1, v7);
  sub_10000C888(&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v6 + 104))(v9, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v5);
  sub_100742974();
  (*(v6 + 8))(v9, v5);
  sub_1001A0764();
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v10 = v12[1];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1004DA624(&qword_1009230E0, type metadata accessor for VideoView);
  }

  sub_1004DA624(&qword_10093EF20, type metadata accessor for AppPromotionDetailPageView);
  sub_10074B124();
}

uint64_t sub_1004D7BD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewDidBecomeFullyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.didAppear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

uint64_t sub_1004D7DD0()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_100742964();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  objc_msgSendSuper2(&v9, "as_viewWillBecomePartiallyVisible", v5);
  sub_10000C888(&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v1[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  sub_100752BB4();
  (*(v4 + 104))(v7, enum case for StoreViewControllerLifecycleEvent.willDisappear(_:), v3);
  sub_100742974();
  (*(v4 + 8))(v7, v3);
  sub_100744254();
  sub_100745584();
  sub_100745564();
  sub_100745544();

  sub_100745564();
  sub_1007454E4();
}

void sub_1004D7FEC(SEL *a1, unsigned int *a2, void (*a3)(uint64_t))
{
  v7 = v3;
  ObjectType = swift_getObjectType();
  v9 = sub_100742964();
  v10 = *(v9 - 8);
  *&v11 = __chkstk_darwin(v9).n128_u64[0];
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v7;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, *a1, v11);
  sub_10000C888(&v7[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver], *&v7[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24]);
  (*(v10 + 104))(v13, *a2, v9);
  sub_100742974();
  (*(v10 + 8))(v13, v9);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v15 = v16[1];
  a3(v14);
}

id sub_1004D8204()
{
  v16.receiver = v0;
  v16.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView];
  result = [v0 view];
  if (result)
  {
    v3 = result;
    [result bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = sub_1004C4774([v1 setFrame:{v5, v7, v9, v11}]);
    v13 = OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin;
    *&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_defaultPageMargin] = v12;
    v14 = [v1 traitCollection];
    LOBYTE(v3) = sub_1007537F4();

    if (v3)
    {
      v15 = -*&v1[v13];
    }

    else
    {
      v15 = 0.0;
    }

    return [*&v1[OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_pageScrollView] setScrollIndicatorInsets:{0.0, v15}];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1004D8388(void *a1)
{
  v2 = v1;
  v17.receiver = v1;
  v17.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v17, "traitCollectionDidChange:", a1);
  if (a1)
  {
    v4 = sub_100753804() & 1;
  }

  else
  {
    v4 = 2;
  }

  v5 = [v1 traitCollection];
  v6 = sub_100753804();

  if (v4 == 2 || ((v6 ^ v4) & 1) != 0)
  {
    goto LABEL_12;
  }

  v7 = [v2 traitCollection];
  v8 = [v7 preferredContentSizeCategory];

  if (!a1)
  {

LABEL_12:
    sub_1007427B4();
    goto LABEL_13;
  }

  v9 = [a1 preferredContentSizeCategory];
  v10 = sub_100753094();
  v12 = v11;
  if (v10 == sub_100753094() && v12 == v13)
  {

    goto LABEL_13;
  }

  v14 = sub_100754754();

  if ((v14 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_13:
  v15 = [v2 view];
  if (v15)
  {
    v16 = v15;
    [v15 setNeedsLayout];
  }

  else
  {
    __break(1u);
  }
}

void sub_1004D862C()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000C888((v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver), *(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_lifecycleObserver + 24));
  (*(v2 + 104))(v4, enum case for StoreViewControllerLifecycleEvent.appEnteredWhileAppeared(_:), v1);
  sub_100742974();
  (*(v2 + 8))(v4, v1);
  sub_10074B184();
  sub_100752764();

  sub_100752D34();

  v5 = v6[1];
  sub_10074B0E4();
}

id sub_1004D8920(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v4 - 8);
  v6 = &v18 - v5;
  sub_10074B384();
  if (swift_dynamicCastClass())
  {

    sub_10074B324();
    v7 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v7]);
    swift_endAccess();
    sub_10074B334();
    v8 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v8]);
    swift_endAccess();
    sub_10074B354();
  }

  else
  {
    sub_1007482D4();
    if (!swift_dynamicCastClass())
    {
      goto LABEL_6;
    }

    sub_100748274();
    v9 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_learnMoreActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v9]);
    swift_endAccess();
    sub_100748284();
    v10 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_backButtonActionMetrics;
    swift_beginAccess();
    sub_1004D9AF4(v6, &v1[v10]);
    swift_endAccess();
    sub_1007482A4();
  }

  v11 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_1004D9AF4(v6, &v2[v11]);
  swift_endAccess();
LABEL_6:
  v12 = [v2 traitCollection];
  if (v12)
  {
    v13 = v12;
    if (sub_1007537D4())
    {
      sub_100753804();
    }
  }

  result = [v2 view];
  if (result)
  {
    v15 = result;
    [result bounds];

    v16 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_artworkLoader];
    v17 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph];

    sub_1001A164C(a1, v16, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1004D8BE4(uint64_t a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph;
  v7 = sub_10000C518(&unk_100923210);

  sub_1007526C4();

  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v5, 1, v7) == 1)
  {
    return sub_10000C8CC(v5, &unk_100923960);
  }

  v10 = *(v1 + v6);

  sub_1003C0E00(a1, 1, v10, v5);

  return (*(v8 + 8))(v5, v7);
}

uint64_t sub_1004D8D6C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v13 - v4;
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();

  sub_100745524();

  v6 = sub_1007427A4();
  if (v6)
  {
    v7 = v6;
    v8 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_objectGraph;
    v9 = sub_10000C518(&unk_100923210);

    sub_1007526C4();

    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v5, 1, v9) == 1)
    {
      sub_10000C8CC(v5, &unk_100923960);
    }

    else
    {
      v12 = *(a2 + v8);

      sub_1003C0E00(v7, 1, v12, v5);

      (*(v10 + 8))(v5, v9);
    }

    sub_100745564();
    sub_100745524();
  }

  else
  {
  }
}

uint64_t sub_1004D8FC4()
{
  v0 = sub_100752314();
  v17 = *(v0 - 8);
  v18 = v0;
  __chkstk_darwin(v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100752B34();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v16 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = v13 - v7;
  sub_10000C518(&qword_1009366A8);

  sub_100752754();

  v14 = v22;
  v15 = v21;
  sub_100745584();
  sub_100745564();
  sub_100745514();

  sub_100745564();
  v13[3] = sub_100745574();

  sub_100745564();
  sub_100745554();

  v9 = sub_10074CE34();

  sub_100752754();

  if (v19[0])
  {
    v10 = &protocol witness table for SearchGhostHintMetricsTracker;
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v19[1] = 0;
    v19[2] = 0;
  }

  v19[3] = v9;
  v19[4] = v10;
  sub_100745564();
  sub_100745504();

  sub_10000C518(&qword_1009366B0);

  sub_100752754();

  sub_100752B24();
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  sub_10000C8CC(v20, &qword_100935468);
  sub_10000C8CC(v19, &qword_100935460);
  (*(v4 + 16))(v16, v8, v3);

  sub_1007522F4();
  v11 = sub_100752724();

  (*(v17 + 8))(v2, v18);
  (*(v4 + 8))(v8, v3);
  return v11;
}

uint64_t type metadata accessor for AppPromotionDetailPageViewController()
{
  result = qword_10093ADA0;
  if (!qword_10093ADA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1004D9690()
{
  sub_1004D975C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1004D975C()
{
  if (!qword_10093ADB0)
  {
    sub_100752614();
    v0 = sub_100754284();
    if (!v1)
    {
      atomic_store(v0, &qword_10093ADB0);
    }
  }
}

CGFloat sub_1004D9828()
{
  v1 = *(*v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView);
  [v1 bounds];
  v2 = CGRectGetWidth(v4) * 0.5;
  [v1 bounds];
  CGRectGetHeight(v5);
  return v2;
}

void *sub_1004D9890()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_detailPageView) + OBJC_IVAR____TtC22SubscribePageExtension26AppPromotionDetailPageView_closeButton);
  v2 = v1;
  return v1;
}

uint64_t sub_1004D98D4()
{
  sub_100745584();
  sub_100745564();
  sub_100744324();
  sub_100745544();
}

id sub_1004D9948()
{
  v1 = sub_100742964();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v1, v3);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_100748C64();
  (*(v2 + 8))(v5, v1);
  return [v0 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1004D9AF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000C518(&qword_100927E40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1004D9B64()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100745584();
  sub_100745564();
  v6 = sub_100745514();

  (*(v3 + 104))(v5, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_100748C64();
  (*(v3 + 8))(v5, v2);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v0;
  aBlock[4] = sub_1004DA604;
  aBlock[5] = v7;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000CF7B0;
  aBlock[3] = &unk_100878A40;
  v8 = _Block_copy(aBlock);
  v9 = v1;

  [v9 dismissViewControllerAnimated:1 completion:v8];
  _Block_release(v8);
}

id sub_1004D9D8C()
{
  v1 = v0;
  v2 = sub_100742964();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v5 - 8);
  v7 = &v25 - v6;
  v8 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_100752614();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v25 - v16;
  v18 = OBJC_IVAR____TtC22SubscribePageExtension36AppPromotionDetailPageViewController_closeButtonActionMetrics;
  swift_beginAccess();
  sub_10032A6EC(v1 + v18, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_10000C8CC(v10, &qword_100927E40);
  }

  else
  {
    v26 = v3;
    (*(v12 + 32))(v17, v10, v11);
    v19 = sub_10000C518(&unk_100923210);

    sub_1007526C4();

    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v7, 1, v19) == 1)
    {
      (*(v12 + 8))(v17, v11);
      sub_10000C8CC(v7, &unk_100923960);
    }

    else
    {
      sub_1007433F4();
      (*(v12 + 16))(v14, v17, v11);
      v21 = sub_1007433D4();
      v22 = sub_1004D8FC4();
      sub_1003C13F0(v21, 1, v22, v7);
      v25 = v2;

      v2 = v25;

      (*(v12 + 8))(v17, v11);
      (*(v20 + 8))(v7, v19);
    }

    v3 = v26;
  }

  v23 = v27;
  (*(v3 + 104))(v27, enum case for StoreViewControllerLifecycleEvent.didDisappear(_:), v2);
  sub_1007427D4();
  sub_1004DA624(&qword_10093ADC0, &type metadata accessor for AppPromotionDetailPagePresenter);
  sub_100748C64();
  (*(v3 + 8))(v23, v2);
  return [v1 dismissViewControllerAnimated:1 completion:0];
}

uint64_t sub_1004DA258(uint64_t *a1)
{
  v3 = sub_10000C518(&unk_100923960);
  __chkstk_darwin(v3 - 8);
  v5 = &v24 - v4;
  v6 = sub_10000C518(&qword_100927E40);
  __chkstk_darwin(v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_100752614();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v24 - v14;
  v16 = *a1;
  swift_beginAccess();
  sub_10032A6EC(v1 + v16, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    v17 = &qword_100927E40;
    v18 = v8;
    return sub_10000C8CC(v18, v17);
  }

  (*(v10 + 32))(v15, v8, v9);
  v19 = sub_10000C518(&unk_100923210);

  sub_1007526C4();

  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    (*(v10 + 8))(v15, v9);
    v17 = &unk_100923960;
    v18 = v5;
    return sub_10000C8CC(v18, v17);
  }

  sub_1007433F4();
  (*(v10 + 16))(v12, v15, v9);
  v22 = sub_1007433D4();
  v23 = sub_1004D8FC4();
  sub_1003C13F0(v22, 1, v23, v5);

  (*(v10 + 8))(v15, v9);
  return (*(v20 + 8))(v5, v19);
}

uint64_t sub_1004DA5C4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1004DA60C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1004DA624(unint64_t *a1, void (*a2)(uint64_t))
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

double sub_1004DA6BC()
{
  v54 = sub_100744D64();
  v53 = *(v54 - 8);
  __chkstk_darwin(v54);
  v55 = &v41 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100744D84();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_10074CD14();
  v47 = *(v48 - 8);
  __chkstk_darwin(v48);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_10000C518(&qword_10092FA68);
  v56 = *(v57 - 8);
  __chkstk_darwin(v57);
  v42 = &v41 - v3;
  v49 = sub_10074F704();
  v45 = *(v49 - 8);
  __chkstk_darwin(v49);
  v43 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_100749A94();
  v51 = *(v52 - 8);
  __chkstk_darwin(v52);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_10000C518(&qword_100925340);
  v61 = *(v62 - 8);
  __chkstk_darwin(v62);
  v44 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v41 - v9;
  v11 = sub_10000C518(&unk_10092E450);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v41 - v13;
  v15 = sub_10000C518(&unk_100930810);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v41 - v17;
  sub_100746944();
  sub_1007525C4();
  (*(v16 + 8))(v18, v15);
  swift_getKeyPath();
  sub_100746914();

  swift_getKeyPath();
  sub_1007525B4();

  v19 = v42;
  (*(v12 + 8))(v14, v11);

  sub_100746964();
  v50 = v6;
  sub_1007468A4();
  swift_getKeyPath();
  v20 = v43;
  sub_100746914();

  sub_10074F674();
  (*(v45 + 8))(v20, v49);
  v21 = sub_10007DC04();
  sub_10000C824(v69, v68);
  sub_10000C518(&qword_1009242A0);
  sub_10074F524();
  swift_dynamicCast();
  v22 = *(v61 + 16);
  v49 = v10;
  v22(v44, v10, v62);
  sub_100752DF4();
  v23 = v19;
  sub_100752EB4();
  sub_10074F514();
  v24 = sub_10074F504();
  sub_100038D38();
  if (qword_100920FE0 != -1)
  {
    swift_once();
  }

  v25 = sub_100750534();
  sub_10000D0FC(v25, qword_100980CD8);
  v26 = [v21 traitCollection];
  v27 = sub_100753C14();

  v28 = sub_10074F3F4();
  v68[3] = v28;
  v68[4] = sub_1004DB234(&qword_10092AC70, &type metadata accessor for Feature);
  v29 = sub_10000D134(v68);
  (*(*(v28 - 8) + 104))(v29, enum case for Feature.measurement_with_labelplaceholder(_:), v28);
  v30 = v27;
  sub_10074FC74();
  sub_10000C620(v68);
  v31 = v46;
  sub_10074CD04();
  sub_10074CCE4();
  (*(v47 + 8))(v31, v48);
  if ((v24 & 2) != 0)
  {
    if (qword_100920318 != -1)
    {
      swift_once();
    }

    [qword_10097DC60 size];
    v32 = sub_100750F34();
    swift_allocObject();
    v33 = sub_100750F14();
    *(&v66 + 1) = v32;
    v67 = &protocol witness table for LayoutViewPlaceholder;
    *&v65 = v33;
  }

  else
  {
    v67 = 0;
    v66 = 0u;
    v65 = 0u;
  }

  if (qword_100920300 != -1)
  {
    swift_once();
  }

  v34 = v54;
  v35 = sub_10000D0FC(v54, qword_10097DC48);
  (*(v53 + 16))(v55, v35, v34);
  sub_10000C824(v68, v64);
  sub_1000CD5F0(&v65, v63);
  v36 = v58;
  sub_100744D74();
  [v21 pageMarginInsets];
  sub_100753BA4();
  sub_1004DB234(&qword_1009296E8, &type metadata accessor for FootnoteLayout);
  v37 = v60;
  sub_100750404();
  sub_100753BC4();
  v39 = v38;

  swift_unknownObjectRelease();
  (*(v59 + 8))(v36, v37);
  sub_10000C620(v68);
  (*(v56 + 8))(v23, v57);
  (*(v51 + 8))(v50, v52);
  (*(v61 + 8))(v49, v62);
  sub_10000C620(v69);
  sub_1002C9F48(&v65);

  return v39;
}

uint64_t sub_1004DB234(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ProductPageLayoutSectionProvider()
{
  result = qword_10093ADD8;
  if (!qword_10093ADD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DB308(uint64_t a1, uint64_t (*a2)(void), void *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v141 = a8;
  v133 = a7;
  v135 = a6;
  v136 = a5;
  v134 = a4;
  v138 = a3;
  v142 = a10;
  v143 = a2;
  v140 = a9;
  v11 = sub_10000C518(&qword_100942730);
  __chkstk_darwin(v11 - 8);
  v122 = &v121 - v12;
  v130 = sub_10074F704();
  v132 = *(v130 - 8);
  __chkstk_darwin(v130);
  v129 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = sub_100746854();
  v128 = *(v131 - 1);
  __chkstk_darwin(v131);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1007469A4();
  v139 = *(v15 - 8);
  __chkstk_darwin(v15);
  v17 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10074E984();
  v19 = *(v18 - 8);
  __chkstk_darwin(v18);
  v124 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v23 = &v121 - v22;
  v24 = sub_10000C518(&unk_10092E450);
  v25 = *(v24 - 8);
  __chkstk_darwin(v24);
  v123 = &v121 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v121 - v28;
  v137 = a1;
  sub_100747C04();
  swift_getKeyPath();
  sub_1007525B4();

  v30 = *(v25 + 8);
  v30(v29, v24);
  v126 = v19;
  v31 = *(v19 + 88);
  v125 = v23;
  v32 = v23;
  v33 = v18;
  v34 = v31(v32, v18);
  if (v34 != enum case for Shelf.ContentType.productBadge(_:))
  {
    v139 = &v121;
    __chkstk_darwin(v34);
    __chkstk_darwin(v41);
    sub_10074CBA4();
    v42 = sub_10074CBB4();
    v132 = v42(v137, sub_1000FA880, &v121 - 4, v134, v136, v135, v133, v141, v140, v142);
    v43 = v123;
    sub_100747C04();
    swift_getKeyPath();
    v44 = v124;
    sub_1007525B4();

    v30(v43, v24);
    v45 = v31(v44, v33);
    if (v45 == enum case for Shelf.ContentType.ribbonBar(_:))
    {
      v46 = v143();
      v47 = sub_1003EFB6C(v137, v46, v134, v136, v135, v133, v141, v140, v142);
    }

    else
    {
      v48 = v44;
      v47 = v132;
      v49 = v137;
      v50 = v142;
      v51 = v141;
      v52 = v135;
      v53 = v133;
      v54 = v136;
      v55 = v134;
      if (v45 == enum case for Shelf.ContentType.ribbonFlow(_:))
      {
        v56 = v143();
        v57 = sub_1003F0EB0(v49, v56, v55, v54, v52, v53, v51, v140, v50);

        v47 = v57;
      }

      else
      {
        if (v45 != enum case for Shelf.ContentType.smallContactCard(_:))
        {
          v100 = v126;
          (*(v126 + 8))(v48, v33);
          goto LABEL_30;
        }

        [v132 setOrthogonalScrollingBehavior:2];
      }
    }

    v100 = v126;
LABEL_30:
    (*(v100 + 8))(v125, v33);
    return v47;
  }

  v35 = v143();
  aBlock[0] = _swiftEmptyArrayStorage;
  v36 = *(v35 + 16);
  v126 = v35;
  v125 = v36;
  if (v36)
  {
    v37 = v35;
    sub_10074E8B4();
    v143 = v139[2];
    v38 = v37 + ((*(v139 + 80) + 32) & ~*(v139 + 80));
    v39 = v139[9];
    v40 = (v139 + 1);
    v138 = _swiftEmptyArrayStorage;
    (v143)(v17, v38, v15);
    while (1)
    {
      sub_1004DE2E8(&qword_1009309E0, &type metadata accessor for Badge);
      sub_1007468B4();
      (*v40)(v17, v15);
      if (v146)
      {
        sub_100753284();
        if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v138 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100753304();
        }

        sub_100753344();
        v138 = aBlock[0];
      }

      v38 += v39;
      if (!--v36)
      {
        break;
      }

      (v143)(v17, v38, v15);
    }
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
  }

  v58 = v128;
  v59 = v127;
  (*(v128 + 104))(v127, enum case for InformationRibbon.Alignment.justified(_:), v131);
  v60 = v129;
  v61 = v137;
  sub_100747B84();
  sub_10074F674();
  v63 = v62;
  v65 = v64;
  v66 = v132 + 8;
  v67 = *(v132 + 1);
  v68 = v130;
  v67(v60, v130);
  sub_100747B84();
  sub_10074F5C4();
  v70 = v69;
  v67(v60, v68);
  v71 = sub_100747B94();
  v72 = type metadata accessor for SnapshotPageTraitEnvironment();
  v73 = objc_allocWithZone(v72);
  v74 = &v73[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_pageContainerSize];
  *v74 = v70;
  *(v74 + 1) = 0x7FEFFFFFFFFFFFFFLL;
  *&v73[OBJC_IVAR____TtC22SubscribePageExtension28SnapshotPageTraitEnvironment_traitCollection] = v71;
  v145.receiver = v73;
  v145.super_class = v72;
  v75 = objc_msgSendSuper2(&v145, "init");
  sub_1004DC488(v138, v59, v75, v63, v65);
  v77 = v76;

  (*(v58 + 8))(v59, v131);
  if (!*(v77 + 16))
  {

    sub_100016C60(0, &unk_10093FE00);
    v97 = sub_100747C14();
    v98 = *(v97 - 8);
    v99 = v122;
    (*(v98 + 16))(v122, v61, v97);
    (*(v98 + 56))(v99, 0, 1, v97);
    v47 = sub_100753A44();
    sub_10000C8CC(v99, &qword_100942730);

    return v47;
  }

  sub_100747B84();
  sub_10074F674();
  v131 = v67;
  v67(v60, v68);
  if (qword_100920A78 != -1)
  {
    swift_once();
  }

  v78 = sub_100749104();
  sub_10000D0FC(v78, qword_10097FD50);
  v79 = sub_100747B94();
  sub_100749044();
  v81 = v80;

  v146 = _swiftEmptyArrayStorage;
  v82 = v136;
  v143 = *(v77 + 16);
  v132 = v66;
  if (!v143)
  {
    v88 = 0.0;
LABEL_32:

    v101 = objc_opt_self();
    v102 = objc_opt_self();
    v103 = [v102 absoluteDimension:v88];
    v104 = [v102 absoluteDimension:v81];
    v105 = [objc_opt_self() sizeWithWidthDimension:v103 heightDimension:v104];

    sub_100016C60(0, &qword_100923478);
    isa = sub_100753294().super.isa;

    v107 = [v101 horizontalGroupWithLayoutSize:v105 subitems:isa];

    v47 = [objc_opt_self() sectionWithGroup:v107];
    swift_getObjectType();
    sub_10074BE74();
    sub_100016C60(0, &qword_10092E460);
    v108 = sub_100753294().super.isa;

    [v47 setBoundarySupplementaryItems:v108];

    sub_10074BE64();
    sub_100016C60(0, &qword_10092E468);
    v109 = sub_100753294().super.isa;

    [v47 setDecorationItems:v109];

    v110 = v129;
    sub_100747B84();
    sub_10074F694();
    v112 = v111;
    v114 = v113;
    v131(v110, v130);
    sub_10000C888(v82, v82[3]);
    sub_10074BE34();
    v116 = v115;
    sub_10000C888(v82, v82[3]);
    sub_10074BE54();
    [v47 setContentInsets:{v116, v112, v117, v114}];
    [v47 setOrthogonalScrollingBehavior:1];
    sub_10074CB94();
    v118 = sub_1007532C4();
    v120 = v119;

    if (v118)
    {
      aBlock[4] = v118;
      aBlock[5] = v120;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1005D5E28;
      aBlock[3] = &unk_100878A68;
      v118 = _Block_copy(aBlock);
    }

    [v47 setVisibleItemsInvalidationHandler:v118];
    _Block_release(v118);

    return v47;
  }

  v83 = objc_opt_self();
  v138 = objc_opt_self();
  result = objc_opt_self();
  if (v125)
  {
    v85 = result;
    result = v141;
    if (v143 <= v125)
    {
      swift_getObjectType();
      v86 = 0;
      v128 = v77;
      v87 = v77 + 32;
      v88 = 0.0;
      do
      {
        v89 = *(v87 + 8 * v86);
        v90 = [v83 absoluteDimension:v89];
        v91 = [v83 absoluteDimension:v81];
        v92 = [v138 sizeWithWidthDimension:v90 heightDimension:v91];

        sub_10074B564();
        sub_100016C60(0, &unk_10092E470);
        v93 = v92;
        v94 = sub_100753294().super.isa;

        v95 = [v85 itemWithLayoutSize:v93 supplementaryItems:v94];

        v96 = v95;
        sub_100753284();
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_100753304();
        }

        v86 = (v86 + 1);
        sub_100753344();

        v88 = v88 + v89;
      }

      while (v143 != v86);
      v82 = v136;
      goto LABEL_32;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1004DC488(unint64_t a1, char *a2, void *a3, double a4, double a5)
{
  v10 = sub_100746854();
  v11 = *(v10 - 8);
  *&v12 = __chkstk_darwin(v10).n128_u64[0];
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_72;
  }

  v16 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (!v16)
  {
    return;
  }

  v17 = [a3 traitCollection];
  v18 = sub_100753804();

  if (v18)
  {
    if (!v15)
    {
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_11;
    }

    v20 = sub_100754664();
    if ((v20 & 0x8000000000000000) == 0)
    {
LABEL_11:
      if (v20)
      {
        v22 = sub_100753324();
        *(v22 + 16) = v20;
        memset_pattern16((v22 + 32), &unk_1007B5300, 8 * v20);
      }

      return;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (v15)
  {
    v21 = sub_100754664();
  }

  else
  {
    v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  *&v19 = floor(a4 / v21);
  if (*&v19 <= 136.0)
  {
    if (v21 < 0)
    {
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (!v21)
    {
      a2 = _swiftEmptyArrayStorage;
      if (a4 > 0.0)
      {
        v10 = _swiftEmptyArrayStorage[2];
        if (!v10)
        {
LABEL_62:

          return;
        }

        goto LABEL_45;
      }

      return;
    }

    v27 = 0;
    a2 = _swiftEmptyArrayStorage;
    v28 = 0.0;
    v11 = 0x4061000000000000;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v29 = sub_100754574();
      }

      else
      {
        v29 = *(a1 + 8 * v27 + 32);
      }

      v30 = sub_1004DCAC8(v29, v27, 0, v21, a3, a4, a5);

      if (v30 >= 105.0)
      {
        if (v30 >= 136.0)
        {
          v31 = 136.0;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            goto LABEL_28;
          }

LABEL_34:
          a2 = sub_100254EA4(0, *(a2 + 2) + 1, 1, a2);
          goto LABEL_28;
        }

        v31 = floor(v30);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        v31 = 105.0;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_34;
        }
      }

LABEL_28:
      v15 = *(a2 + 2);
      v32 = *(a2 + 3);
      v10 = v15 + 1;
      if (v15 >= v32 >> 1)
      {
        a2 = sub_100254EA4((v32 > 1), v15 + 1, 1, a2);
      }

      ++v27;
      *(a2 + 2) = v10;
      *&a2[8 * v15 + 32] = v31;
      v28 = v28 + v31;
      if (v21 == v27)
      {
        a4 = a4 - v28;
        if (a4 <= 0.0)
        {
          return;
        }

LABEL_45:
        v14 = a2 + 32;
        v52 = _swiftEmptyArrayStorage;
        sub_10001E46C(0, v10, 0);
        v34 = 0;
        v35 = v52;
        a3 = v52[2];
        do
        {
          v36 = *&v14[8 * v34];
          v52 = v35;
          v37 = v35[3];
          if (a3 + v34 >= v37 >> 1)
          {
            sub_10001E46C((v37 > 1), a3 + v34 + 1, 1);
            v35 = v52;
          }

          v38 = v34 + 1;
          v35[2] = a3 + v34 + 1;
          *&v35[a3 + 4 + v34] = 136.0 - v36;
          v34 = v38;
        }

        while (v10 != v38);
        v39 = a3 + v38;
        if (a3 + v38 - 1 <= 2)
        {
          v40 = 0;
          a5 = 0.0;
          goto LABEL_54;
        }

        v40 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        v41 = (v35 + 6);
        a5 = 0.0;
        v42 = v39 & 0x7FFFFFFFFFFFFFFCLL;
        do
        {
          a5 = a5 + *(v41 - 2) + *(v41 - 1) + *v41 + v41[1];
          v41 += 4;
          v42 -= 4;
        }

        while (v42);
        if (v39 != v40)
        {
LABEL_54:
          v43 = a3 + v38 - v40;
          v44 = &v35[v40 + 4];
          do
          {
            v45 = *v44++;
            a5 = a5 + v45;
            --v43;
          }

          while (v43);
        }

        if (v10 <= v39)
        {
          a1 = 4;
          while (1)
          {
            v46 = *&v35[a1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              a2 = sub_10025DA94(a2);
            }

            if (a1 - 4 >= *(a2 + 2))
            {
              break;
            }

            *&a2[8 * a1] = floor(a4 * (v46 / a5)) + *&a2[8 * a1];
            ++a1;
            if (!--v10)
            {
              goto LABEL_62;
            }
          }

          __break(1u);
LABEL_72:
          v16 = sub_100754664();
          goto LABEL_3;
        }

LABEL_77:
        __break(1u);
        return;
      }
    }
  }

  v51 = v19;
  (*(v11 + 16))(v14, a2, v10);
  if ((*(v11 + 88))(v14, v10) == enum case for InformationRibbon.Alignment.justified(_:))
  {
    if (v21 < 0)
    {
LABEL_75:
      __break(1u);
      goto LABEL_76;
    }

    if (!v21)
    {
      return;
    }

    v23 = sub_100753324();
    *(v23 + 16) = v21;
    v24 = (v23 + 32);
    if (v21 < 4)
    {
      v25 = 0;
      v26 = v51;
LABEL_67:
      v50 = v21 - v25;
      do
      {
        *v24++ = v26;
        --v50;
      }

      while (v50);
      return;
    }

    v25 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    v24 += v21 & 0x7FFFFFFFFFFFFFFCLL;
    v26 = v51;
    v47 = vdupq_lane_s64(v51, 0);
    v48 = (v23 + 48);
    v49 = v21 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v48[-1] = v47;
      *v48 = v47;
      v48 += 2;
      v49 -= 4;
    }

    while (v49);
    if (v21 != v25)
    {
      goto LABEL_67;
    }
  }

  else
  {
    if (v21 < 0)
    {
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (v21)
    {
      v33 = sub_100753324();
      *(v33 + 16) = v21;
      memset_pattern16((v33 + 32), &unk_1007B52F0, 8 * v21);
    }

    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1004DCAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

double sub_1004DCAC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5, double a6, double a7)
{
  v139 = a5;
  v123 = a4;
  v131 = a3;
  v120 = sub_10074CD14();
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v118 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_100745B34();
  v129 = *(v130 - 8);
  __chkstk_darwin(v130);
  v13 = v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v127 = v117 - v15;
  v138 = sub_100749104();
  v132 = *(v138 - 8);
  __chkstk_darwin(v138);
  v17 = v117 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_10000C518(&qword_1009273F8);
  __chkstk_darwin(v18 - 8);
  v122 = v117 - v19;
  v134 = sub_10074A214();
  v142 = *(v134 - 8);
  __chkstk_darwin(v134);
  v126 = v117 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v141 = v117 - v22;
  v135 = sub_100750534();
  v121 = *(v135 - 8);
  __chkstk_darwin(v135);
  v24 = v117 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_100743B04();
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = v117 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_10074F7D4();
  v137 = *(v143 - 8);
  __chkstk_darwin(v143);
  v125 = v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v124 = v117 - v31;
  __chkstk_darwin(v32);
  v34 = v117 - v33;
  v140 = a1;
  sub_1003973E8();
  v133 = a2;
  v128 = v13;
  if (v35)
  {
    if (qword_100921028 != -1)
    {
      swift_once();
    }

    sub_10000D0FC(v135, qword_100980DB0);
    v36 = sub_10074F3F4();
    v147 = v36;
    v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
    v37 = sub_10000D134(v146);
    (*(*(v36 - 8) + 104))(v37, enum case for Feature.measurement_with_labelplaceholder(_:), v36);
    sub_10074FC74();
    sub_10000C620(v146);
    sub_10074CCB4();
  }

  sub_10074E854();
  v136 = *(v137 + 88);
  v38 = v136(v34, v143);
  v39 = enum case for BadgeType.rating(_:);
  if (v38 != enum case for BadgeType.rating(_:))
  {
    if (v38 == enum case for BadgeType.contentRating(_:))
    {
      v47 = sub_10074E894();
      v48 = sub_1007419D4();
      v45 = v132;
      v46 = v134;
      if (!*(v47 + 16))
      {

        goto LABEL_38;
      }

      v50 = sub_1003861D0(v48, v49);
      v52 = v51;

      if (v52)
      {
        sub_10000C5B4(*(v47 + 56) + 32 * v50, v146);

        if (swift_dynamicCast())
        {
          v53 = sub_10056003C(v144, v145, 0);

          [v53 size];
        }

        goto LABEL_38;
      }

LABEL_37:

      goto LABEL_38;
    }

    v46 = v134;
    if (v38 == enum case for BadgeType.chartPosition(_:))
    {
      LODWORD(v45) = enum case for BadgeType.rating(_:);
      v149._object = 0x8000000100779C20;
      v149._countAndFlagsBits = 0xD000000000000020;
      v150._countAndFlagsBits = 0;
      v150._object = 0xE000000000000000;
      v117[1] = sub_1007458B4(v149, v150);
      if (qword_100921030 != -1)
      {
        goto LABEL_74;
      }

      goto LABEL_14;
    }

    v45 = v132;
    if (v38 == enum case for BadgeType.editorsChoice(_:))
    {
      sub_1004DE330(0, v139);
      goto LABEL_38;
    }

    v66 = v139;
    v67 = v143;
    if (v38 == enum case for BadgeType.artwork(_:))
    {
      if (qword_100920A78 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v138, qword_10097FD50);
      sub_1007490A4();
      v68 = [v66 traitCollection];
      _UIAccessibilityContentSizeCategoryImageAdjustingScaleFactorForTraitCollection();

      sub_100753B64();
      goto LABEL_39;
    }

    if (v38 == enum case for BadgeType.paragraph(_:))
    {
      sub_1003975A4();
      if (qword_100921020 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v135, qword_100980D98);
      v71 = sub_10074F3F4();
      v147 = v71;
      v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
      v72 = sub_10000D134(v146);
      (*(*(v71 - 8) + 104))(v72, enum case for Feature.measurement_with_labelplaceholder(_:), v71);
      sub_10074FC74();
      sub_10000C620(v146);
      sub_10074CCB4();
      v74 = v73;

      v75 = [v66 traitCollection];
      sub_100539784(v74, a6);
    }

    else
    {
      if (v38 != enum case for BadgeType.friendsPlaying(_:))
      {
        (*(v137 + 8))(v34, v143);
        goto LABEL_39;
      }

      v76 = sub_10074E894();
      v77 = sub_100741BF4();
      if (!*(v76 + 16))
      {

        goto LABEL_39;
      }

      v79 = sub_1003861D0(v77, v78);
      v81 = v80;

      if ((v81 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_10000C5B4(*(v76 + 56) + 32 * v79, v146);

      sub_100016C60(0, &qword_100922300);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v75 = v144;
      [v144 sizeThatFits:{a6, a7}];
    }

    goto LABEL_38;
  }

  v40 = [v139 traitCollection];
  v41 = [objc_opt_self() configurationWithTextStyle:UIFontTextStyleCaption2 scale:2];
  (*(v26 + 104))(v28, enum case for SystemImage.star(_:), v25);
  v42 = v39;
  v43 = [v41 configurationWithTraitCollection:v40];
  v44 = sub_100743AE4();

  v39 = v42;
  (*(v26 + 8))(v28, v25);
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];
  [v44 contentInsets];
  [v44 contentInsets];
  [v44 size];

  v45 = v132;
  v46 = v134;
  while (1)
  {
LABEL_38:
    v67 = v143;
LABEL_39:
    v82 = v124;
    sub_10074E854();
    if (v136(v82, v67) == v39)
    {
      v83 = sub_100397864();
      [v83 frame];
      CGRectGetWidth(v151);

      v84 = v139;
    }

    else
    {
      (*(v137 + 8))(v82, v67);
      if (v123 >= 4)
      {
        sub_10074E7A4();
        if (v85)
        {
          v84 = v139;
LABEL_45:
          if (qword_100921040 != -1)
          {
            swift_once();
          }

          sub_10000D0FC(v135, qword_100980DF8);
          v87 = sub_10074F3F4();
          v147 = v87;
          v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
          v88 = sub_10000D134(v146);
          (*(*(v87 - 8) + 104))(v88, enum case for Feature.measurement_with_labelplaceholder(_:), v87);
          sub_10074FC74();
          sub_10000C620(v146);
          sub_10074CCB4();

          v67 = v143;
          goto LABEL_48;
        }
      }

      sub_10074E884();
      v84 = v139;
      if (v86)
      {
        goto LABEL_45;
      }
    }

LABEL_48:
    (*(v142 + 104))(v141, enum case for BadgeCaptionCappingType.none(_:), v46);
    v89 = sub_10074E8A4();
    if (v90)
    {
      v91 = v46;
      v146[0] = v89;
      v146[1] = v90;
      v92 = v122;
      sub_100741544();
      v93 = sub_100741574();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      sub_1000D5C0C();
      sub_1007542B4();
      sub_10000C8CC(v92, &qword_1009273F8);

      if (qword_100921048 != -1)
      {
        swift_once();
      }

      sub_10000D0FC(v135, qword_100980E10);
      v94 = sub_10074F3F4();
      v147 = v94;
      v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
      v95 = sub_10000D134(v146);
      (*(*(v94 - 8) + 104))(v95, enum case for Feature.measurement_with_labelplaceholder(_:), v94);
      sub_10074FC74();
      sub_10000C620(v146);
      sub_10074CCB4();

      v67 = v143;
      v46 = v91;
    }

    v96 = v130;
    if (qword_100920A78 != -1)
    {
      swift_once();
    }

    v97 = v138;
    v98 = sub_10000D0FC(v138, qword_10097FD50);
    (*(v45 + 16))(v17, v98, v97);
    v24 = v46;
    (*(v142 + 16))(v126, v141, v46);
    sub_1007490C4();
    v99 = v125;
    sub_10074E854();
    if (v136(v99, v67) == enum case for BadgeType.chartPosition(_:))
    {
      v100 = v128;
      *v128 = 0;
      v101 = v129;
      (*(v129 + 104))(v100, enum case for BadgeViewSpacing.spacing(_:), v96);
    }

    else
    {
      v101 = v129;
      v100 = v128;
      (*(v129 + 104))(v128, enum case for BadgeViewSpacing.standard(_:), v96);
      (*(v137 + 8))(v99, v67);
    }

    v102 = v133;
    (*(v101 + 32))(v127, v100, v96);
    sub_100749084();
    v46 = v24;
    if (v131)
    {
      goto LABEL_69;
    }

    v103 = [v84 traitCollection];
    v104 = sub_1007537F4();
    v105 = v104;
    if (!v102 && (v104 & 1) == 0)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v123, 1))
    {
      __break(1u);
      goto LABEL_73;
    }

    if (((v123 - 1 == v102) & v104) == 1)
    {
LABEL_62:
      v106 = sub_100749054();
      *(v107 + 8) = 0;
      v106(v146, 0);
      v108 = sub_100749074();
      *(v109 + 8) = 0;
      v108(v146, 0);
      v46 = v134;
    }

    if (!v102 && ((v105 ^ 1) & 1) == 0)
    {
      goto LABEL_67;
    }

    if (!__OFSUB__(v123, 1))
    {
      break;
    }

LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
LABEL_14:
    v54 = v135;
    v55 = sub_10000D0FC(v135, qword_100980DC8);
    (*(v121 + 16))(v24, v55, v54);
    v56.super.isa = [v139 traitCollection];
    isa = v56.super.isa;
    v58 = sub_100750514(v56).super.isa;
    v59 = [(objc_class *)v58 fontDescriptorWithDesign:UIFontDescriptorSystemDesignRounded];

    if (v59)
    {
      v60 = [objc_opt_self() fontWithDescriptor:v59 size:0.0];

      v39 = v45;
      if (v60)
      {
        v61 = sub_10074F3F4();
        v147 = v61;
        v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
        v62 = sub_10000D134(v146);
        (*(*(v61 - 8) + 104))(v62, enum case for Feature.measurement_with_labelplaceholder(_:), v61);
        v63 = v60;
        sub_10074FC74();
        sub_10000C620(v146);
        v64 = v118;
        sub_10074CD04();
        sub_1004DE2E8(&unk_10092CB50, &type metadata accessor for LabelPlaceholderCompatibility);
        v65 = v120;
        sub_100750404();

        (*(v119 + 8))(v64, v65);
        goto LABEL_26;
      }
    }

    else
    {

      v39 = v45;
    }

    v69 = sub_10074F3F4();
    v147 = v69;
    v148 = sub_1004DE2E8(&qword_10092AC70, &type metadata accessor for Feature);
    v70 = sub_10000D134(v146);
    (*(*(v69 - 8) + 104))(v70, enum case for Feature.measurement_with_labelplaceholder(_:), v69);
    sub_10074FC74();
    sub_10000C620(v146);
    sub_10074CCB4();

LABEL_26:
    (*(v121 + 8))(v24, v135);
    v45 = v132;
  }

  if ((v123 - 1 != v102) | v105 & 1)
  {
    goto LABEL_68;
  }

LABEL_67:
  v110 = sub_100749054();
  *(v111 + 24) = 0;
  v110(v146, 0);
  v112 = sub_100749074();
  *(v113 + 24) = 0;
  v112(v146, 0);
LABEL_68:

LABEL_69:
  sub_100749024();
  v115 = v114;
  (*(v45 + 8))(v17, v138);
  (*(v142 + 8))(v141, v46);
  return v115;
}

uint64_t sub_1004DE2E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1004DE330(uint64_t a1, void *a2)
{
  v7._object = 0x80000001007681D0;
  v8._countAndFlagsBits = 0xD000000000000050;
  v8._object = 0x80000001007681F0;
  v7._countAndFlagsBits = 0xD000000000000017;
  sub_1007458B4(v7, v8);
  v3 = sub_100753194();

  v4 = v3 < 19;
  v5 = sub_1006BA340(v3 < 19);
  v6 = sub_1006BA60C(v4);
  [v5 size];
  [v6 size];

  sub_1006BD454(1, v4, 0, 2, a2);
}

uint64_t sub_1004DE490()
{
  v0 = sub_100752E24();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100752E44();
  sub_100039C50(v4, qword_10093AE28);
  sub_10000D0FC(v4, qword_10093AE28);
  if (qword_100921EC8 != -1)
  {
    swift_once();
  }

  v5 = sub_10000D0FC(v0, qword_1009832D0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_100752E34();
}

id sub_1004DE5E4()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(ADTrackingTransparency) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

BOOL sub_1004DE650()
{
  v0 = sub_100741574();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v18[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((sub_100744A14() & 1) == 0 || (sub_100744A94() & 1) == 0)
  {
    return 0;
  }

  v4 = sub_100744A74();
  sub_100741564();
  v5 = sub_1007414B4();
  v7 = v6;
  v8 = *(v1 + 8);
  v9 = v8(v3, v0);
  if (!v7)
  {
    goto LABEL_8;
  }

  v19 = v5;
  v20 = v7;
  __chkstk_darwin(v9);
  *&v18[-16] = &v19;
  v10 = sub_100073B4C(sub_1004DF4A4, &v18[-32], v4);

  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = sub_100744AA4();
  sub_100741564();
  v12 = sub_1007414B4();
  v14 = v13;
  v15 = v8(v3, v0);
  if (!v14)
  {
LABEL_8:

    return 0;
  }

  v19 = v12;
  v20 = v14;
  __chkstk_darwin(v15);
  *&v18[-16] = &v19;
  v16 = sub_100073B4C(sub_1004DF4A4, &v18[-32], v11);

  return (v16 & 1) != 0;
}

uint64_t sub_1004DE88C()
{
  v1 = sub_100741574();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v18[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (sub_10074C474())
  {
    if (qword_100920E00 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  if ([objc_opt_self() ams_shieldSignInOrCreateFlows])
  {
    if (qword_100920E00 == -1)
    {
LABEL_6:
      v5 = sub_100752E44();
      sub_10000D0FC(v5, qword_10093AE28);
      sub_10000C518(&qword_100923930);
      sub_100752454();
      *(swift_allocObject() + 16) = xmmword_1007A5A00;
      sub_1007523A4();
      sub_100752CE4();
LABEL_7:

      return 0;
    }

LABEL_18:
    swift_once();
    goto LABEL_6;
  }

  v7 = sub_1004DE5E4();
  v8 = [v7 shouldPresentPersonalizedAdsOnboarding];

  if (!v8)
  {
    if (qword_100920E00 != -1)
    {
      swift_once();
    }

    v16 = sub_100752E44();
    sub_10000D0FC(v16, qword_10093AE28);
    sub_10000C518(&qword_100923930);
    sub_100752454();
    *(swift_allocObject() + 16) = xmmword_1007A6580;
    sub_1007523A4();
    v17 = [*(v0 + 24) shouldPresentPersonalizedAdsOnboarding];
    v19[3] = &type metadata for Bool;
    LOBYTE(v19[0]) = v17;
    sub_100752424();
    sub_1000277BC(v19);
    sub_100752CE4();
    goto LABEL_7;
  }

  v9 = sub_100744A14();
  v10 = sub_100744A74();
  sub_100741564();
  v11 = sub_1007414B4();
  v13 = v12;
  v14 = (*(v2 + 8))(v4, v1);
  if (!v13)
  {

    if (v9)
    {
      return 1;
    }

LABEL_16:
    if (qword_100920E00 == -1)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  v19[0] = v11;
  v19[1] = v13;
  __chkstk_darwin(v14);
  *&v18[-16] = v19;
  v15 = sub_100073B4C(sub_1004DF3F0, &v18[-32], v10);

  if (((v9 | v15) & 1) == 0)
  {
    goto LABEL_16;
  }

  return 1;
}

uint64_t sub_1004DEEB4()
{
  v1 = sub_1004DE5E4();
  v2 = [v1 latestVersionForPersonalizedAdsConsent];

  [*(v0 + 24) setAcknowledgedVersionForPersonalizedAds:v2];
  if (qword_100920E00 != -1)
  {
    swift_once();
  }

  v3 = sub_100752E44();
  sub_10000D0FC(v3, qword_10093AE28);
  sub_10000C518(&qword_100923930);
  sub_100752454();
  *(swift_allocObject() + 16) = xmmword_1007A6580;
  sub_1007523A4();
  v4 = [*(v0 + 24) acknowledgedVersionForPersonalizedAds];
  v6[3] = &type metadata for Int;
  v6[0] = v4;
  sub_100752424();
  sub_1000277BC(v6);
  sub_100752CE4();
}

uint64_t sub_1004DF068()
{

  sub_100016994(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1004DF0E8()
{
  result = qword_10093AEF0;
  if (!qword_10093AEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10093AEF0);
  }

  return result;
}

Swift::Int sub_1004DF198()
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_1004DF1FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1004DF40C(&qword_100922F70);

  return OnboardingStep.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1004DF264()
{
  sub_100754834();
  sub_100752FB4();
  return sub_100754884();
}

uint64_t sub_1004DF2C4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1004DF40C(&qword_100922F70);

  return static OnboardingStep.== infix(_:_:)(a1, a2, v2, v5);
}

uint64_t sub_1004DF398(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_100754754() & 1;
  }
}

uint64_t sub_1004DF40C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AdPrivacyOnboardingStep();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004DF44C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100754754() & 1;
  }
}

uint64_t sub_1004DF508()
{
  v1 = v0;
  v2 = sub_1007417F4();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100741764();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    type metadata accessor for InteractiveProductReviewsShelfHeaderView();
    sub_1007539C4();
    v8 = sub_100753064();

    isa = sub_100741704().super.isa;
    v10 = [v7 _visibleSupplementaryViewOfKind:v8 atIndexPath:isa];

    if (v10)
    {
      v11 = swift_dynamicCastClass();
      if (v11)
      {
        v12 = v1 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
        if ((*(v1 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40) & 1) == 0)
        {
          v13 = *v12;
          v14 = *(v12 + 16);
          v15 = *(v12 + 24);
          v16 = &v11[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState];
          if ((v11[OBJC_IVAR____TtC22SubscribePageExtension40InteractiveProductReviewsShelfHeaderView_currentState + 40] & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v16, v13), vceqq_f64(*(v16 + 24), v15)))) & 1) == 0 || *(v16 + 2) != v14)
          {
            *v16 = v13;
            *(v16 + 2) = v14;
            *(v16 + 24) = v15;
            v16[40] = 0;
            [v11 setNeedsLayout];
          }
        }
      }
    }
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1004DF70C()
{
  v1 = OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v2 = sub_100747C14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectWeakDestroy();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for InteractiveProductReviewsShelfScrollObserver()
{
  result = qword_10093AF40;
  if (!qword_10093AF40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1004DF81C()
{
  result = sub_100747C14();
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

uint64_t sub_1004DF8CC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1004DF8EC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1004DF944()
{
  result = qword_10093B040[0];
  if (!qword_10093B040[0])
  {
    type metadata accessor for InteractiveProductReviewsShelfScrollObserver();
    result = swift_getWitnessTable();
    atomic_store(result, qword_10093B040);
  }

  return result;
}

uint64_t sub_1004DF99C(unint64_t a1, __n128 a2, __n128 a3)
{
  v59 = a3;
  v60 = a2;
  v5 = sub_10074F704();
  *&v58 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v49 - v9;
  v11 = sub_100747C14();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v49 - v15;
  v17 = sub_1007417F4();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v21 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    *&v51 = v19;
    result = sub_100754664();
    v19 = v51;
  }

  else
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v56 = v11;
  v57 = v7;
  v54 = v10;
  v55 = v5;
  if (result)
  {
    *&v51 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v23 = v3;
      v24 = sub_100754574();
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v23 = v3;
      v24 = *(a1 + 32);
      swift_unknownObjectRetain();
    }

    v25 = [v24 indexPath];
    swift_unknownObjectRelease();
    sub_100741744();

    v52 = sub_100741784();
    (*(v18 + 8))(v21, v51);
  }

  else
  {
    v23 = v3;
    v52 = 0;
  }

  v26 = OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v50 = *(v12 + 16);
  v27 = v23;
  v28 = v23 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_shelfLayoutContext;
  v29 = v56;
  v50(v16, v28, v56);
  v30 = v54;
  sub_100747B84();
  v31 = *(v12 + 8);
  v31(v16, v29);
  sub_10074F5A4();
  v51 = v32;
  v33 = *(v58 + 8);
  v34 = v30;
  v35 = v55;
  v33(v34, v55);
  v36 = v53;
  v50(v53, v27 + v26, v29);
  v37 = v57;
  sub_100747B84();
  v31(v36, v29);
  sub_10074F634();
  v58 = v38;
  result = (v33)(v37, v35);
  v40 = *&v58;
  v39 = v59.n128_u64[0];
  *&v41.f64[0] = v51;
  *&v42.f64[0] = v60.n128_u64[0];
  v61 = v60.n128_u64[0];
  v62 = v59.n128_u64[0];
  v43 = v52;
  v63 = v52;
  v64 = v51;
  v65 = v58;
  v44 = v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState;
  v45 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState);
  v46 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 16);
  v47 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 24);
  v48 = *(v27 + OBJC_IVAR____TtC22SubscribePageExtension44InteractiveProductReviewsShelfScrollObserver_currentState + 40);
  *v44 = v60.n128_u64[0];
  *(v44 + 8) = v39;
  *(v44 + 16) = v43;
  *(v44 + 24) = v41.f64[0];
  *(v44 + 32) = v40;
  *(v44 + 40) = 0;
  if (v48)
  {
    return sub_1004DF508();
  }

  *&v42.f64[1] = v39;
  v41.f64[1] = v40;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v42, v45), vceqq_f64(v41, v47)))) & 1) == 0 || v43 != v46)
  {
    return sub_1004DF508();
  }

  return result;
}

uint64_t sub_1004DFE70()
{
  v0 = sub_1007417F4();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1007417A4();
  sub_1007417C4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1004DFF54()
{
  v0 = sub_10000C518(&qword_100930BC0);
  __chkstk_darwin(v0 - 8);
  sub_1007544E4();
  sub_100752EE4();

  sub_10000C518(&qword_100925350);
  sub_10002DDC8(&qword_100925358, &qword_100925350);
  return sub_100752944();
}

void sub_1004E00D8(uint64_t a1@<X8>)
{
  v3 = sub_1007417F4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 32) == 1)
  {
    sub_100741764();
    sub_100745144();
    (*(v4 + 8))(v6, v3);
    sub_10000C518(&qword_1009242A0);
    sub_10000C518(&qword_100927538);
    if (swift_dynamicCast())
    {
      sub_100012160(v8, v10);
      v7 = v10[1];
      *a1 = v10[0];
      *(a1 + 16) = v7;
      *(a1 + 32) = v11;
    }

    else
    {
      v9 = 0;
      memset(v8, 0, sizeof(v8));
      sub_1004E0D64(v8);
      sub_100754644();
      __break(1u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }
}