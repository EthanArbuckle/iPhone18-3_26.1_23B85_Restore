uint64_t sub_100001950()
{
  v0 = sub_10001C854();
  sub_100002CE4(v0, qword_10002D158);
  sub_100002CAC(v0, qword_10002D158);
  return sub_10001C844();
}

uint64_t sub_1000019BC(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_10001C724();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = *(*(sub_100002394(&qword_10002C288, &qword_10001E390) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v6 = sub_10001C884();
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v9 = sub_10001C834();
  v1[13] = v9;
  v10 = *(v9 - 8);
  v1[14] = v10;
  v11 = *(v10 + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();

  return _swift_task_switch(sub_100001B9C, 0, 0);
}

uint64_t sub_100001B9C()
{
  sub_100002AB4();
  v1 = [objc_allocWithZone(PKPeerPaymentService) init];
  v2 = [v1 account];

  if (v2 && [v2 supportsDeviceTap])
  {
    v4 = v0 + 16;
    v3 = v0[16];
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[7];
    sub_10001C824();
    sub_10001D524();
    sub_10001C814();
    sub_10001D524();
    sub_10001C7F4();
    v54._countAndFlagsBits = sub_10001D524();
    sub_10001D554(v54);

    sub_10001C804();
    sub_10001C7E4();
    if ((*(v6 + 48))(v7, 1, v5) == 1)
    {
      v8 = v0[7];
LABEL_7:
      sub_100002BFC(v8);
      sub_10001C674();
      sub_100002C64(&qword_10002C290, &type metadata accessor for AppIntentError);
      swift_allocError();
      sub_10001C664();
      swift_willThrow();

      v13 = *v4;
      v15 = v0[15];
      v14 = v0[16];
      v17 = v0[11];
      v16 = v0[12];
      v18 = v0[10];
      v20 = v0[6];
      v19 = v0[7];
      v21 = v0[5];
      (*(v0[14] + 8))(v13, v0[13]);

      v22 = v0[1];
      goto LABEL_11;
    }

    v25 = v0 + 12;
    v31 = v0[12];
    v32 = v0[11];
    v33 = v0[8];
    v34 = v0[9];
    v35 = v0[5];
    v36 = v0[2];
    v51 = v0[3];
    (*(v34 + 32))(v31, v0[7], v33);
    (*(v34 + 16))(v32, v31, v33);
  }

  else
  {
    v4 = v0 + 15;
    v9 = v0[15];
    v10 = v0[8];
    v11 = v0[9];
    v12 = v0[6];
    sub_10001C824();
    sub_10001D524();
    sub_10001C814();
    sub_10001C7E4();
    if ((*(v11 + 48))(v12, 1, v10) == 1)
    {
      v8 = v0[6];
      goto LABEL_7;
    }

    v23 = v0[10];
    v24 = v0[11];
    v25 = v0 + 10;
    v26 = v2;
    v28 = v0[8];
    v27 = v0[9];
    v29 = v0[5];
    v30 = v0[2];
    v50 = v0[3];
    (*(v27 + 32))(v23, v0[6], v28);
    (*(v27 + 16))(v24, v23, v28);
    v2 = v26;
  }

  sub_10001C734();
  sub_100002C64(&qword_10002C298, &type metadata accessor for OpenURLIntent);
  sub_10001C704();

  v37 = *v4;
  v38 = *v25;
  v40 = v0[15];
  v39 = v0[16];
  v41 = v0[13];
  v42 = v0[14];
  v46 = v0[12];
  v47 = v0[11];
  v43 = v0[9];
  v44 = v0[8];
  v48 = v0[10];
  v49 = v0[7];
  v52 = v0[6];
  (*(v0[4] + 8))(v0[5], v0[3]);
  (*(v43 + 8))(v38, v44);
  (*(v42 + 8))(v37, v41);

  v22 = v0[1];
LABEL_11:

  return v22();
}

uint64_t sub_100002024@<X0>(uint64_t a1@<X8>)
{
  if (qword_10002C210 != -1)
  {
    swift_once();
  }

  v2 = sub_10001C854();
  v3 = sub_100002CAC(v2, qword_10002D158);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1000020E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100002180;

  return sub_1000019BC(a1);
}

uint64_t sub_100002180()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100002278(uint64_t a1)
{
  v2 = sub_100002558();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_1000022B4(__int128 *a1)
{
  v2 = *a1;
  if (sub_10001C16C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeMetadata2();
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100002328(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (sub_10001C16C(2, 17, 0, 0))
  {
    return swift_getOpaqueTypeConformance2();
  }

  return v1;
}

uint64_t sub_100002394(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_1000023DC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100002428()
{
  result = qword_10002C258;
  if (!qword_10002C258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C258);
  }

  return result;
}

unint64_t sub_100002480()
{
  result = qword_10002C260;
  if (!qword_10002C260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C260);
  }

  return result;
}

unint64_t sub_100002558()
{
  result = qword_10002C268;
  if (!qword_10002C268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C268);
  }

  return result;
}

__n128 sub_1000025AC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1000025BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000025DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_10000266C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000023DC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000026BC(uint64_t a1, id *a2)
{
  result = sub_10001D504();
  *a2 = 0;
  return result;
}

uint64_t sub_100002734(uint64_t a1, id *a2)
{
  v3 = sub_10001D514();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1000027B4@<X0>(void *a1@<X8>)
{
  sub_10001D524();
  v2 = sub_10001D4F4();

  *a1 = v2;
  return result;
}

uint64_t sub_1000027F8()
{
  v1 = *v0;
  sub_10001D524();
  v2 = sub_10001D564();

  return v2;
}

uint64_t sub_100002834()
{
  v1 = *v0;
  sub_10001D524();
  sub_10001D544();
}

Swift::Int sub_100002888()
{
  v1 = *v0;
  sub_10001D524();
  sub_10001D5F4();
  sub_10001D544();
  v2 = sub_10001D614();

  return v2;
}

uint64_t sub_1000028FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_10001D524();
  v6 = v5;
  if (v4 == sub_10001D524() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_10001D5E4();
  }

  return v9 & 1;
}

uint64_t sub_100002984@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_10001D4F4();

  *a2 = v5;
  return result;
}

uint64_t sub_1000029CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_10001D524();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_1000029F8(uint64_t a1)
{
  v2 = sub_100002C64(&qword_10002C2D0, type metadata accessor for PKAnalyticsKey);
  v3 = sub_100002C64(&qword_10002C2D8, type metadata accessor for PKAnalyticsKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100002AB4()
{
  [objc_opt_self() beginSubjectReporting:PKAnalyticsSubjectAppleCash];
  sub_100002394(&qword_10002C2A0, &qword_10001DCC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DB20;
  v1 = PKAnalyticsReportPageTagKey;
  *(inited + 32) = PKAnalyticsReportPageTagKey;
  *(inited + 40) = sub_10001D524();
  *(inited + 48) = v2;
  v3 = PKAnalyticsReportButtonTagKey;
  *(inited + 56) = PKAnalyticsReportButtonTagKey;
  *(inited + 64) = sub_10001D524();
  *(inited + 72) = v4;
  v5 = PKAnalyticsReportPeerPaymentP2PSideKey;
  *(inited + 80) = PKAnalyticsReportPeerPaymentP2PSideKey;
  *(inited + 88) = sub_10001D524();
  *(inited + 96) = v6;
  v7 = v1;
  v8 = v3;
  v9 = v5;
  sub_10001689C(inited);
  swift_setDeallocating();
  sub_100002394(&qword_10002C2A8, &qword_10001DCC8);
  swift_arrayDestroy();
  sub_10001D2D4();
}

uint64_t sub_100002BFC(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002C288, &qword_10001E390);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100002C64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100002CAC(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_100002CE4(uint64_t a1, uint64_t *a2)
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

void sub_100002D5C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_100002EAC(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = *(*(sub_10001D304() - 8) + 64);
  __chkstk_darwin();
  v30 = sub_100002394(&qword_10002C2F0, &qword_10001DEA8);
  v32 = *(v30 - 8);
  v2 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v4 = &v25 - v3;
  v5 = sub_100002394(&qword_10002C2F8, &qword_10001DEB0);
  v31 = *(v5 - 8);
  v6 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v25 - v7;
  v9 = sub_100002394(&qword_10002C300, &qword_10001DEB8);
  v26 = *(v9 - 8);
  v27 = v9;
  v10 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v33 = &v25 - v11;
  v29 = qword_10002C2E0;

  v12 = sub_10001D4F4();
  v13 = PKLocalizedString(v12);

  v34 = v5;
  if (v13)
  {
    sub_10001D524();
  }

  sub_10001D2F4();
  sub_100002394(&qword_10002C308, &unk_10001DEC0);
  sub_100003494();
  sub_10000266C(&qword_10002C318, &qword_10002C308, &unk_10001DEC0);
  sub_10001D314();
  v14 = sub_10000266C(&qword_10002C320, &qword_10002C2F0, &qword_10001DEA8);
  v15 = v30;
  sub_10001CD34();
  (*(v32 + 8))(v4, v15);
  v37 = v15;
  v38 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = v33;
  v17 = v34;
  sub_10001CD44();
  (*(v31 + 8))(v8, v17);
  v19 = sub_10001D4F4();
  v20 = PKLocalizedString(v19);

  if (v20)
  {
    v21 = sub_10001D524();
    v23 = v22;

    v37 = v21;
    v38 = v23;
    v35 = v17;
    v36 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1000034E8();
    v24 = v27;
    sub_10001CD14();

    (*(v26 + 8))(v18, v24);
  }

  else
  {
    __break(1u);
  }
}

void sub_1000033A8(uint64_t a1@<X8>)
{
  v2 = sub_10001D4F4();
  v3 = PKLocalizedString(v2);

  if (v3)
  {
    sub_10001D524();

    sub_1000034E8();
    *a1 = sub_10001CF74();
    *(a1 + 8) = v4;
    *(a1 + 16) = v5 & 1;
    *(a1 + 24) = v6;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000344C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D0C4();
  *a1 = result;
  return result;
}

unint64_t sub_100003494()
{
  result = qword_10002C310;
  if (!qword_10002C310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C310);
  }

  return result;
}

unint64_t sub_1000034E8()
{
  result = qword_10002C328;
  if (!qword_10002C328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C328);
  }

  return result;
}

uint64_t sub_10000353C()
{
  sub_1000023DC(&qword_10002C300, &qword_10001DEB8);
  sub_1000023DC(&qword_10002C2F8, &qword_10001DEB0);
  sub_1000023DC(&qword_10002C2F0, &qword_10001DEA8);
  sub_10000266C(&qword_10002C320, &qword_10002C2F0, &qword_10001DEA8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1000034E8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10000367C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001CA14();
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

uint64_t sub_10000374C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10001CA14();
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

uint64_t type metadata accessor for EventLiveActivityView()
{
  result = qword_10002C388;
  if (!qword_10002C388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100003850()
{
  result = sub_10001CA14();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for WidgetPassImagesProvider();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000038F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100002394(&qword_10002C3C0, &qword_10001DF68);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v21 - v5;
  v7 = *(sub_10001C954() + 16);

  v8 = 0x402C000000000000;
  if (v7 >= 3 && (sub_10001C9E4() & 1) == 0)
  {
    v8 = 0x4020000000000000;
  }

  *v6 = sub_10001CCB4();
  *(v6 + 1) = v8;
  v6[16] = 0;
  v9 = sub_100002394(&qword_10002C3C8, &qword_10001DF70);
  sub_100003A40(v1, &v6[*(v9 + 44)]);
  v10 = sub_10001CE04();
  sub_10001CAC4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1000078A8(v6, a1, &qword_10002C3C0, &qword_10001DF68);
  result = sub_100002394(&qword_10002C3D0, &qword_10001DF78);
  v20 = a1 + *(result + 36);
  *v20 = v10;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
  return result;
}

uint64_t sub_100003A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100002394(&qword_10002C3D8, &qword_10001DF80);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  *v10 = sub_10001CC94();
  *(v10 + 1) = 0x4028000000000000;
  v10[16] = 0;
  v11 = sub_100002394(&qword_10002C3E0, &qword_10001DF88);
  sub_100003BB4(a1, &v10[*(v11 + 44)]);
  v12 = sub_10001C944();
  v14 = v13;
  if (v13)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  sub_100007B4C(v10, v8, &qword_10002C3D8, &qword_10001DF80);
  sub_100007B4C(v8, a2, &qword_10002C3D8, &qword_10001DF80);
  v16 = (a2 + *(sub_100002394(&qword_10002C3E8, &qword_10001DF90) + 48));
  *v16 = v15;
  v16[1] = v14;

  sub_100007AEC(v10, &qword_10002C3D8, &qword_10001DF80);

  return sub_100007AEC(v8, &qword_10002C3D8, &qword_10001DF80);
}

uint64_t sub_100003BB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = sub_100002394(&qword_10002C3F0, &qword_10001DF98);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v92 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v90 = &v81 - v7;
  v8 = sub_10001D254();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v83 = *(v84 - 8);
  v13 = *(v83 + 64);
  __chkstk_darwin(v84);
  v15 = &v81 - v14;
  v82 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  v16 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82);
  v18 = &v81 - v17;
  v86 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  v19 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v88 = &v81 - v20;
  v85 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v21 = *(*(v85 - 8) + 64);
  v22 = __chkstk_darwin(v85);
  v89 = &v81 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v87 = &v81 - v25;
  __chkstk_darwin(v24);
  v93 = &v81 - v26;
  v27 = sub_10001C9D4();
  v29 = v28;
  v30 = *(sub_10001C954() + 16);

  if (v30 < 3 || (sub_10001C9E4() & 1) != 0)
  {
    PKFloatCeilToPixel();
    PKFloatFloorToPixel();
  }

  else
  {
    PKFloatCeilToPixel();
    PKFloatCeilToPixel();
  }

  v31 = *(a1 + *(type metadata accessor for EventLiveActivityView() + 20));
  v32 = sub_100016FC4(v27, v29);

  sub_10001D134();
  sub_10001CB04();
  v94 = v32;
  v95 = v100;
  v96 = v101;
  v97 = v102;
  v98 = v103;
  v99 = v104;
  (*(v9 + 104))(v12, enum case for LightenForegroundModifier.Style.normal(_:), v8);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v9 + 8))(v12, v8);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v81 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v32) = sub_10001CE14();
  *(inited + 32) = v32;
  v34 = sub_10001CE24();
  *(inited + 33) = v34;
  v35 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v32)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v34)
  {
    v35 = sub_10001CE44();
  }

  sub_10001CAC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  (*(v83 + 32))(v18, v15, v84);
  v44 = &v18[*(v82 + 36)];
  *v44 = v35;
  *(v44 + 1) = v37;
  *(v44 + 2) = v39;
  *(v44 + 3) = v41;
  *(v44 + 4) = v43;
  v44[40] = 0;
  v45 = swift_initStackObject();
  *(v45 + 16) = v81;
  v46 = sub_10001CE34();
  *(v45 + 32) = v46;
  v47 = sub_10001CE54();
  *(v45 + 33) = v47;
  v48 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v46)
  {
    v48 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v47)
  {
    v48 = sub_10001CE44();
  }

  sub_10001CAC4();
  v50 = v49;
  v52 = v51;
  v54 = v53;
  v56 = v55;
  v57 = v88;
  sub_1000078A8(v18, v88, &qword_10002C400, &qword_10001DFA8);
  v58 = v57 + *(v86 + 36);
  *v58 = v48;
  *(v58 + 8) = v50;
  *(v58 + 16) = v52;
  *(v58 + 24) = v54;
  *(v58 + 32) = v56;
  *(v58 + 40) = 0;
  v59 = v87;
  v60 = &v87[*(v85 + 36)];
  v61 = *(sub_10001CB54() + 20);
  v62 = enum case for RoundedCornerStyle.continuous(_:);
  v63 = sub_10001CCA4();
  (*(*(v63 - 8) + 104))(&v60[v61], v62, v63);
  __asm { FMOV            V0.2D, #4.0 }

  *v60 = _Q0;
  *&v60[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v57, v59, &qword_10002C408, &qword_10001DFB0);
  sub_1000078A8(v59, v93, &qword_10002C410, &qword_10001DFB8);
  v69 = v90;
  sub_1000044A0(v90);
  v70 = *(sub_10001C954() + 16);

  if (v70)
  {
    v71 = sub_10001C9E4();
    LODWORD(v87) = v71 & 1;
    v72 = v71 ^ 1;
    v73 = &v106;
  }

  else
  {
    LODWORD(v88) = 0;
    v72 = 1;
    v73 = &v105;
  }

  *(v73 - 64) = v72;
  v74 = v93;
  v75 = v89;
  sub_100007B4C(v93, v89, &qword_10002C410, &qword_10001DFB8);
  v76 = v92;
  sub_100007B4C(v69, v92, &qword_10002C3F0, &qword_10001DF98);
  v77 = v91;
  sub_100007B4C(v75, v91, &qword_10002C410, &qword_10001DFB8);
  v78 = sub_100002394(&qword_10002C440, &qword_10001DFD8);
  sub_100007B4C(v76, v77 + *(v78 + 48), &qword_10002C3F0, &qword_10001DF98);
  v79 = v77 + *(v78 + 64);
  *v79 = 0;
  *(v79 + 8) = v87;
  *(v79 + 9) = v88 & 1;
  sub_100007AEC(v69, &qword_10002C3F0, &qword_10001DF98);
  sub_100007AEC(v74, &qword_10002C410, &qword_10001DFB8);
  sub_100007AEC(v76, &qword_10002C3F0, &qword_10001DF98);
  return sub_100007AEC(v75, &qword_10002C410, &qword_10001DFB8);
}

uint64_t sub_1000044A0@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v52 = sub_100002394(&qword_10002C448, &qword_10001DFE0);
  v2 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v48 = (&v46 - v3);
  v49 = sub_100002394(&qword_10002C450, &qword_10001DFE8);
  v4 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v51 = &v46 - v5;
  v56 = sub_100002394(&qword_10002C458, &unk_10001DFF0);
  v6 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v53 = &v46 - v7;
  v50 = sub_100002394(&qword_10002C460, &qword_10001E510);
  v8 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v47 = (&v46 - v9);
  v54 = sub_100002394(&qword_10002C468, &qword_10001E000);
  v10 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v12 = &v46 - v11;
  v13 = sub_100002394(&qword_10002C470, &qword_10001E008);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v46 - v15;
  v17 = sub_100002394(&qword_10002C478, &qword_10001E010);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = &v46 - v19;
  v21 = sub_100002394(&qword_10002C480, &qword_10001E018);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v24 = &v46 - v23;
  v25 = sub_100002394(&qword_10002C488, &qword_10001E020);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v28 = &v46 - v27;
  v29 = sub_10001C9E4();
  v55 = v13;
  if (v29)
  {
    *v28 = sub_10001CCC4();
    *(v28 + 1) = 0;
    v28[16] = 0;
    v30 = sub_100002394(&qword_10002C4D8, &qword_10001E040);
    sub_100004CE0(v1, &v28[*(v30 + 44)]);
    sub_100007B4C(v28, v20, &qword_10002C488, &qword_10001E020);
    swift_storeEnumTagMultiPayload();
    sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020);
    sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000);
    sub_10001CD84();
    sub_100007B4C(v24, v16, &qword_10002C480, &qword_10001E018);
    swift_storeEnumTagMultiPayload();
    sub_100007484();
    sub_100007564();
    sub_10001CD84();
    sub_100007AEC(v24, &qword_10002C480, &qword_10001E018);
    v31 = v28;
    v32 = &qword_10002C488;
    v33 = &qword_10001E020;
  }

  else
  {
    v46 = v21;
    v34 = *(sub_10001C954() + 16);

    if (v34)
    {
      v35 = *(sub_10001C954() + 16);

      if (v35 > 2)
      {
        v42 = sub_10001CCC4();
        v37 = v48;
        *v48 = v42;
        *(v37 + 8) = 0x4018000000000000;
        *(v37 + 16) = 0;
        v43 = sub_100002394(&qword_10002C490, &qword_10001E028);
        sub_10000633C(v1, v37 + *(v43 + 44));
        v39 = &qword_10002C448;
        v40 = &qword_10001DFE0;
        sub_100007B4C(v37, v51, &qword_10002C448, &qword_10001DFE0);
      }

      else
      {
        v36 = sub_10001CC94();
        v37 = v47;
        *v47 = v36;
        *(v37 + 8) = 0;
        *(v37 + 16) = 0;
        v38 = sub_100002394(&qword_10002C4C8, &unk_10001E030);
        sub_100005F10(v1, v37 + *(v38 + 44));
        v39 = &qword_10002C460;
        v40 = &qword_10001E510;
        sub_100007B4C(v37, v51, &qword_10002C460, &qword_10001E510);
      }

      swift_storeEnumTagMultiPayload();
      sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510);
      sub_10000266C(&qword_10002C4A0, &qword_10002C448, &qword_10001DFE0);
      v44 = v53;
      sub_10001CD84();
      sub_100007B4C(v44, v16, &qword_10002C458, &unk_10001DFF0);
      swift_storeEnumTagMultiPayload();
      sub_100007484();
      sub_100007564();
      sub_10001CD84();
      sub_100007AEC(v44, &qword_10002C458, &unk_10001DFF0);
      v31 = v37;
      v32 = v39;
      v33 = v40;
    }

    else
    {
      *v12 = sub_10001CCC4();
      *(v12 + 1) = 0;
      v12[16] = 0;
      v41 = sub_100002394(&qword_10002C4D0, &qword_10001E5A0);
      sub_100005550(&v12[*(v41 + 44)]);
      sub_100007B4C(v12, v20, &qword_10002C468, &qword_10001E000);
      swift_storeEnumTagMultiPayload();
      sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020);
      sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000);
      sub_10001CD84();
      sub_100007B4C(v24, v16, &qword_10002C480, &qword_10001E018);
      swift_storeEnumTagMultiPayload();
      sub_100007484();
      sub_100007564();
      sub_10001CD84();
      sub_100007AEC(v24, &qword_10002C480, &qword_10001E018);
      v31 = v12;
      v32 = &qword_10002C468;
      v33 = &qword_10001E000;
    }
  }

  return sub_100007AEC(v31, v32, v33);
}

void sub_100004CE0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v89 = a2;
  v90 = a1;
  v96 = sub_10001CF24();
  v98 = *(v96 - 8);
  v2 = *(v98 + 64);
  (__chkstk_darwin)();
  v97 = v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002394(&qword_10002C4E0, &qword_10001E048);
  v94 = *(v4 - 8);
  v95 = v4;
  v5 = *(v94 + 64);
  v6 = (__chkstk_darwin)();
  v87 = v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v101 = v82 - v8;
  v100 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v9 = *(*(v100 - 8) + 64);
  v10 = __chkstk_darwin(v100);
  v84 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = v82 - v12;
  v99 = sub_100002394(&qword_10002C4F0, &qword_10001E058);
  v13 = *(*(v99 - 8) + 64);
  v14 = __chkstk_darwin(v99);
  v88 = v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v83 = v82 - v17;
  v18 = __chkstk_darwin(v16);
  v86 = v82 - v19;
  __chkstk_darwin(v18);
  v21 = v82 - v20;
  v91 = sub_100002394(&qword_10002C4F8, &qword_10001E060);
  v22 = *(*(v91 - 8) + 64);
  v23 = __chkstk_darwin(v91);
  v85 = v82 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v27 = v82 - v26;
  __chkstk_darwin(v25);
  v93 = v82 - v28;
  v102 = sub_10001CA04();
  v103 = v29;
  v82[2] = sub_1000034E8();
  v30 = sub_10001CF74();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  KeyPath = swift_getKeyPath();
  v102 = v30;
  v103 = v32;
  v104 = v34 & 1;
  v105 = v36;
  v106 = KeyPath;
  v107 = 1;
  v108 = 0;
  sub_10001CEB4();
  v38 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v39 = sub_100007650();
  v82[1] = v38;
  v82[0] = v39;
  sub_10001CFF4();
  sub_100007708(v30, v32, v34 & 1);

  if (sub_10001C9B4())
  {
    v40 = sub_10001CF04();
  }

  else
  {
    sub_10001CF14();
    v42 = v97;
    v41 = v98;
    v43 = v96;
    (*(v98 + 104))(v97, enum case for Font.Leading.tight(_:), v96);
    v40 = sub_10001CF34();

    (*(v41 + 8))(v42, v43);
  }

  v44 = swift_getKeyPath();
  v45 = v95;
  v46 = v92;
  v47 = v101;
  v101 = *(v94 + 32);
  (v101)(v92, v47, v95);
  v48 = (v46 + *(v100 + 36));
  *v48 = v44;
  v48[1] = v40;
  v49 = sub_10001D084();
  sub_1000078A8(v46, v21, &qword_10002C4E8, &qword_10001E050);
  *&v21[*(v99 + 36)] = v49;
  v50 = swift_getKeyPath();
  sub_1000078A8(v21, v27, &qword_10002C4F0, &qword_10001E058);
  v51 = &v27[*(v91 + 36)];
  *v51 = v50;
  v51[1] = 0x3FE999999999999ALL;
  v52 = v93;
  sub_1000078A8(v27, v93, &qword_10002C4F8, &qword_10001E060);
  v53 = sub_10001D4F4();
  v54 = PKLocalizedTicketingString(v53);

  if (v54)
  {
    v55 = sub_10001D524();
    v57 = v56;

    v102 = v55;
    v103 = v57;
    v58 = sub_10001CF74();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = swift_getKeyPath();
    v102 = v58;
    v103 = v60;
    v104 = v62 & 1;
    v105 = v64;
    v106 = v65;
    v107 = 1;
    v108 = 0;
    sub_10001CED4();
    v66 = v87;
    sub_10001CFF4();
    sub_100007708(v58, v60, v62 & 1);

    sub_10001CE84();
    v68 = v97;
    v67 = v98;
    v69 = v96;
    (*(v98 + 104))(v97, enum case for Font.Leading.tight(_:), v96);
    v70 = sub_10001CF34();

    (*(v67 + 8))(v68, v69);
    v71 = swift_getKeyPath();
    v72 = v84;
    (v101)(v84, v66, v45);
    v73 = &v72[*(v100 + 36)];
    *v73 = v71;
    v73[1] = v70;
    v74 = sub_10001D054();
    v75 = v72;
    v76 = v83;
    sub_1000078A8(v75, v83, &qword_10002C4E8, &qword_10001E050);
    *(v76 + *(v99 + 36)) = v74;
    v77 = v86;
    sub_1000078A8(v76, v86, &qword_10002C4F0, &qword_10001E058);
    v78 = v85;
    sub_100007B4C(v52, v85, &qword_10002C4F8, &qword_10001E060);
    v79 = v88;
    sub_100007B4C(v77, v88, &qword_10002C4F0, &qword_10001E058);
    v80 = v89;
    sub_100007B4C(v78, v89, &qword_10002C4F8, &qword_10001E060);
    v81 = sub_100002394(&qword_10002C520, &qword_10001E108);
    sub_100007B4C(v79, v80 + *(v81 + 48), &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v77, &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v52, &qword_10002C4F8, &qword_10001E060);
    sub_100007AEC(v79, &qword_10002C4F0, &qword_10001E058);
    sub_100007AEC(v78, &qword_10002C4F8, &qword_10001E060);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_100005550@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v86 = sub_100002394(&qword_10002C528, &qword_10001E110);
  v1 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v85 = v84 - v2;
  v3 = sub_100002394(&qword_10002C530, &qword_10001E118);
  v100 = *(v3 - 8);
  v101 = v3;
  v4 = *(v100 + 64);
  __chkstk_darwin(v3);
  v87 = v84 - v5;
  v6 = sub_100002394(&qword_10002C538, &unk_10001E120);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v103 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v102 = v84 - v10;
  v105 = sub_10001CF24();
  v98 = *(v105 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v105);
  v95 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002394(&qword_10002C4E0, &qword_10001E048);
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  __chkstk_darwin(v13);
  v16 = v84 - v15;
  v93 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v17 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v92 = v84 - v18;
  v91 = sub_100002394(&qword_10002C4F0, &qword_10001E058);
  v19 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v90 = v84 - v20;
  v89 = sub_100002394(&qword_10002C4F8, &qword_10001E060);
  v21 = *(*(v89 - 8) + 64);
  v22 = __chkstk_darwin(v89);
  v99 = v84 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v88 = v84 - v25;
  __chkstk_darwin(v24);
  v106 = v84 - v26;
  v107 = sub_10001CA04();
  v108 = v27;
  v84[1] = sub_1000034E8();
  v28 = sub_10001CF74();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  KeyPath = swift_getKeyPath();
  v107 = v28;
  v108 = v30;
  v109 = v32 & 1;
  v110 = v34;
  v111 = KeyPath;
  v112 = 1;
  v113 = 0;
  sub_10001CEB4();
  sub_100002394(&qword_10002C500, &unk_10001E460);
  sub_100007650();
  v94 = v16;
  sub_10001CFF4();
  sub_100007708(v28, v30, v32 & 1);

  if (sub_10001C9B4())
  {
    v36 = sub_10001CF04();
    v37 = v98;
    v38 = v95;
  }

  else
  {
    sub_10001CF14();
    v37 = v98;
    v38 = v95;
    v39 = v105;
    (*(v98 + 104))(v95, enum case for Font.Leading.tight(_:), v105);
    v36 = sub_10001CF34();

    (*(v37 + 8))(v38, v39);
  }

  v40 = swift_getKeyPath();
  v41 = v92;
  (*(v96 + 32))(v92, v94, v97);
  v42 = (v41 + *(v93 + 36));
  *v42 = v40;
  v42[1] = v36;
  v43 = sub_10001D084();
  v44 = v90;
  sub_1000078A8(v41, v90, &qword_10002C4E8, &qword_10001E050);
  *(v44 + *(v91 + 36)) = v43;
  v45 = swift_getKeyPath();
  v46 = v44;
  v47 = v88;
  sub_1000078A8(v46, v88, &qword_10002C4F0, &qword_10001E058);
  v48 = (v47 + *(v89 + 36));
  *v48 = v45;
  v48[1] = 0x3FE999999999999ALL;
  sub_1000078A8(v47, v106, &qword_10002C4F8, &qword_10001E060);
  v49 = sub_10001C9A4();
  if (v50)
  {
    v107 = v49;
    v108 = v50;
    v51 = sub_10001CF74();
    v53 = v52;
    v54 = v37;
    v56 = v55;
    v98 = v57;
    v58 = swift_getKeyPath();
    v59 = sub_100002394(&qword_10002C548, &unk_10001E130);
    v60 = v85;
    v61 = &v85[*(v59 + 36)];
    v62 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
    v63 = enum case for Text.TruncationMode.tail(_:);
    v64 = sub_10001CF64();
    (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
    *v61 = swift_getKeyPath();
    *v60 = v51;
    *(v60 + 8) = v53;
    *(v60 + 16) = v56 & 1;
    *(v60 + 24) = v98;
    *(v60 + 32) = v58;
    *(v60 + 40) = 1;
    *(v60 + 48) = 0;
    v65 = swift_getKeyPath();
    v66 = v60 + *(v86 + 36);
    *v66 = v65;
    *(v66 + 8) = 0;
    sub_10001CEE4();
    sub_100007738();
    v67 = v87;
    sub_10001CFF4();
    sub_100007AEC(v60, &qword_10002C528, &qword_10001E110);
    sub_10001CE74();
    v68 = v105;
    (*(v54 + 104))(v38, enum case for Font.Leading.tight(_:), v105);
    v69 = sub_10001CF34();

    (*(v54 + 8))(v38, v68);
    v70 = swift_getKeyPath();
    v71 = (v67 + *(sub_100002394(&qword_10002C580, &unk_10001E630) + 36));
    *v71 = v70;
    v71[1] = v69;
    v72 = sub_10001D054();
    *(v67 + *(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)) = v72;
    v73 = swift_getKeyPath();
    v74 = v101;
    v75 = v102;
    v76 = (v67 + *(v101 + 36));
    *v76 = v73;
    v76[1] = 0x3FE999999999999ALL;
    sub_1000078A8(v67, v75, &qword_10002C530, &qword_10001E118);
    v77 = 0;
  }

  else
  {
    v77 = 1;
    v74 = v101;
    v75 = v102;
  }

  (*(v100 + 56))(v75, v77, 1, v74);
  v78 = v106;
  v79 = v99;
  sub_100007B4C(v106, v99, &qword_10002C4F8, &qword_10001E060);
  v80 = v103;
  sub_100007B4C(v75, v103, &qword_10002C538, &unk_10001E120);
  v81 = v104;
  sub_100007B4C(v79, v104, &qword_10002C4F8, &qword_10001E060);
  v82 = sub_100002394(&qword_10002C540, &unk_10001E5B0);
  sub_100007B4C(v80, v81 + *(v82 + 48), &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v75, &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v78, &qword_10002C4F8, &qword_10001E060);
  sub_100007AEC(v80, &qword_10002C538, &unk_10001E120);
  return sub_100007AEC(v79, &qword_10002C4F8, &qword_10001E060);
}

uint64_t sub_100005F10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_10001C994();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v53 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v45 - v13;
  *v14 = sub_10001CDE4();
  v15 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000674C(a1, 3, &v14[*(v15 + 44)]);
  v16 = &v14[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v17 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v18 = enum case for Text.TruncationMode.tail(_:);
  v19 = sub_10001CF64();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *&v14[*(v8 + 44)] = sub_10001D084();
  v22 = sub_10001C954();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = v14;
    v47 = v12;
    v48 = a2;
    v55 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v23, 0);
    v24 = v55;
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v28 = v25;
    v45[1] = v22;
    v29 = v22 + v27;
    v50 = *(v28 + 56);
    v51 = v26;
    v52 = v28;
    v49 = (v28 - 8);
    do
    {
      v30 = v53;
      v31 = v54;
      v51(v53, v29, v54);
      v32 = sub_10001C974();
      v34 = v33;
      v35 = sub_10001C984();
      v37 = v36;
      (*v49)(v30, v31);
      v55 = v24;
      v39 = v24[2];
      v38 = v24[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E79C((v38 > 1), v39 + 1, 1);
        v24 = v55;
      }

      v24[2] = v39 + 1;
      v40 = &v24[4 * v39];
      v40[4] = v32;
      v40[5] = v34;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v50;
      --v23;
    }

    while (v23);

    v12 = v47;
    a2 = v48;
    v14 = v46;
  }

  else
  {

    v24 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v14, v12, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v12, a2, &qword_10002C590, &unk_10001E640);
  v41 = sub_100002394(&qword_10002C5B0, &qword_10001E660);
  v42 = a2 + *(v41 + 48);
  *v42 = 0x4028000000000000;
  *(v42 + 8) = 0;
  v43 = a2 + *(v41 + 64);
  *v43 = v24;
  *(v43 + 8) = xmmword_10001DEE0;
  *(v43 + 24) = 1;
  *(v43 + 32) = 0x403A000000000000;

  sub_100007AEC(v14, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);
}

uint64_t sub_10000633C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_10001C994();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  *v14 = sub_10001CDE4();
  v15 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000674C(a1, 2, &v14[*(v15 + 44)]);
  v16 = &v14[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v17 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v18 = enum case for Text.TruncationMode.tail(_:);
  v19 = sub_10001CF64();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *&v14[*(v8 + 44)] = sub_10001D084();
  v22 = sub_10001C954();
  v23 = *(v22 + 16);
  if (v23)
  {
    v44 = v14;
    v45 = v12;
    v46 = a2;
    v53 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v23, 0);
    v24 = v53;
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v28 = v25;
    v43[1] = v22;
    v29 = v22 + v27;
    v48 = *(v28 + 56);
    v49 = v26;
    v50 = v28;
    v47 = (v28 - 8);
    do
    {
      v30 = v51;
      v31 = v52;
      v49(v51, v29, v52);
      v32 = sub_10001C974();
      v34 = v33;
      v35 = sub_10001C984();
      v37 = v36;
      (*v47)(v30, v31);
      v53 = v24;
      v39 = v24[2];
      v38 = v24[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E79C((v38 > 1), v39 + 1, 1);
        v24 = v53;
      }

      v24[2] = v39 + 1;
      v40 = &v24[4 * v39];
      v40[4] = v32;
      v40[5] = v34;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v48;
      --v23;
    }

    while (v23);

    v12 = v45;
    a2 = v46;
    v14 = v44;
  }

  else
  {

    v24 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v14, v12, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v12, a2, &qword_10002C590, &unk_10001E640);
  v41 = a2 + *(sub_100002394(&qword_10002C5C8, &qword_10001E1F0) + 48);
  *v41 = v24;
  *(v41 + 8) = xmmword_10001DEF0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;

  sub_100007AEC(v14, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);
}

uint64_t sub_10000674C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v64 = a2;
  v60 = a1;
  v67 = a3;
  v3 = sub_100002394(&qword_10002C5B8, &qword_10001E1E0);
  v4 = *(v3 - 8);
  v65 = v3 - 8;
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v66 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v62 = &v52 - v8;
  v61 = sub_10001CF24();
  v69 = *(v61 - 8);
  v9 = *(v69 + 64);
  __chkstk_darwin(v61);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v12 = *(v11 - 8);
  v68 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v63 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v52 - v16;
  v70 = sub_10001CA04();
  v71 = v18;
  v58 = sub_1000034E8();
  v19 = sub_10001CF74();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v70 = v19;
  v71 = v21;
  v72 = v23 & 1;
  v73 = v25;
  v74 = KeyPath;
  v75 = 1;
  v76 = 0;
  sub_10001CEB4();
  v57 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v56 = sub_100007650();
  v55 = v17;
  sub_10001CFF4();
  sub_100007708(v19, v21, v23 & 1);

  sub_10001CF04();
  v54 = enum case for Font.Leading.tight(_:);
  v27 = v69;
  v53 = *(v69 + 104);
  v28 = v59;
  v29 = v61;
  v53(v59);
  v30 = sub_10001CF34();

  v31 = *(v27 + 8);
  v69 = v27 + 8;
  v52 = v31;
  v31(v28, v29);
  v32 = swift_getKeyPath();
  v33 = &v17[*(v68 + 44)];
  *v33 = v32;
  v33[1] = v30;
  v70 = sub_10001CA04();
  v71 = v34;
  v35 = sub_10001CF74();
  v37 = v36;
  LOBYTE(v30) = v38;
  v40 = v39;
  v41 = swift_getKeyPath();
  v70 = v35;
  v71 = v37;
  v72 = v30 & 1;
  v73 = v40;
  v74 = v41;
  v75 = v64;
  v76 = 0;
  sub_10001CEE4();
  v42 = v62;
  sub_10001CFF4();
  sub_100007708(v35, v37, v30 & 1);

  sub_10001CE74();
  (v53)(v28, v54, v29);
  v43 = sub_10001CF34();

  v52(v28, v29);
  v44 = swift_getKeyPath();
  v45 = (v42 + *(v68 + 44));
  *v45 = v44;
  v45[1] = v43;
  *(v42 + *(v65 + 44)) = 256;
  v46 = v55;
  v47 = v63;
  sub_100007B4C(v55, v63, &qword_10002C4E8, &qword_10001E050);
  v48 = v66;
  sub_100007B4C(v42, v66, &qword_10002C5B8, &qword_10001E1E0);
  v49 = v67;
  sub_100007B4C(v47, v67, &qword_10002C4E8, &qword_10001E050);
  v50 = sub_100002394(&qword_10002C5C0, &qword_10001E1E8);
  sub_100007B4C(v48, v49 + *(v50 + 48), &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v42, &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v46, &qword_10002C4E8, &qword_10001E050);
  sub_100007AEC(v48, &qword_10002C5B8, &qword_10001E1E0);
  return sub_100007AEC(v47, &qword_10002C4E8, &qword_10001E050);
}

uint64_t sub_100006CB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = sub_100002394(&qword_10002C5E8, &qword_10001E290);
  v6 = *(*(v5 - 8) + 64);
  v7 = __chkstk_darwin(v5 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v26 - v10;
  v12 = sub_100002394(&qword_10002C5F0, &qword_10001E298);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  sub_10001D104();
  v20 = sub_10001D054();
  v21 = sub_10001CE04();
  v22 = &v19[*(v13 + 44)];
  *v22 = v20;
  v22[8] = v21;
  *v11 = sub_10001CC94();
  *(v11 + 1) = 0;
  v11[16] = 1;
  v23 = sub_100002394(&qword_10002C5F8, &qword_10001E2A0);
  sub_100006EF4(a1, v27, &v11[*(v23 + 44)]);
  sub_100007A7C(v19, v17);
  sub_100007B4C(v11, v9, &qword_10002C5E8, &qword_10001E290);
  sub_100007A7C(v17, a3);
  v24 = sub_100002394(&qword_10002C600, &qword_10001E2A8);
  sub_100007B4C(v9, a3 + *(v24 + 48), &qword_10002C5E8, &qword_10001E290);
  sub_100007AEC(v11, &qword_10002C5E8, &qword_10001E290);
  sub_100007AEC(v19, &qword_10002C5F0, &qword_10001E298);
  sub_100007AEC(v9, &qword_10002C5E8, &qword_10001E290);
  return sub_100007AEC(v17, &qword_10002C5F0, &qword_10001E298);
}

uint64_t sub_100006EF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = sub_10001CF24();
  v48 = *(v5 - 8);
  v49 = v5;
  v6 = *(v48 + 64);
  __chkstk_darwin(v5);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_100002394(&qword_10002C528, &qword_10001E110);
  v8 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v10 = &v45 - v9;
  v11 = sub_100002394(&qword_10002C530, &qword_10001E118);
  v12 = *(v11 - 8);
  v51 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v50 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v45 - v16;
  v53 = a1;
  v54 = a2;
  sub_1000034E8();

  v18 = sub_10001CF74();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v26 = &v10[*(sub_100002394(&qword_10002C548, &unk_10001E130) + 36)];
  v27 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v28 = enum case for Text.TruncationMode.tail(_:);
  v29 = sub_10001CF64();
  (*(*(v29 - 8) + 104))(v26 + v27, v28, v29);
  *v26 = swift_getKeyPath();
  *v10 = v18;
  *(v10 + 1) = v20;
  v10[16] = v22 & 1;
  *(v10 + 3) = v24;
  *(v10 + 4) = KeyPath;
  *(v10 + 5) = 2;
  v10[48] = 0;
  v30 = swift_getKeyPath();
  v31 = &v10[*(v46 + 36)];
  *v31 = v30;
  v31[8] = 0;
  sub_10001CED4();
  sub_100007738();
  sub_10001CFF4();
  sub_100007AEC(v10, &qword_10002C528, &qword_10001E110);
  sub_10001CE74();
  v33 = v47;
  v32 = v48;
  v34 = v49;
  (*(v48 + 104))(v47, enum case for Font.Leading.tight(_:), v49);
  v35 = sub_10001CF34();

  (*(v32 + 8))(v33, v34);
  v36 = swift_getKeyPath();
  v37 = &v17[*(sub_100002394(&qword_10002C580, &unk_10001E630) + 36)];
  *v37 = v36;
  v37[1] = v35;
  v38 = sub_10001D054();
  *&v17[*(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)] = v38;
  v39 = swift_getKeyPath();
  v40 = v50;
  v41 = &v17[*(v51 + 44)];
  *v41 = v39;
  v41[1] = 0x3FE999999999999ALL;
  sub_100007B4C(v17, v40, &qword_10002C530, &qword_10001E118);
  v42 = v52;
  sub_100007B4C(v40, v52, &qword_10002C530, &qword_10001E118);
  v43 = v42 + *(sub_100002394(&qword_10002C608, &qword_10001E2B0) + 48);
  *v43 = 0;
  *(v43 + 8) = 1;
  sub_100007AEC(v17, &qword_10002C530, &qword_10001E118);
  return sub_100007AEC(v40, &qword_10002C530, &qword_10001E118);
}

uint64_t sub_100007340@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_10001CCB4();
  *(a1 + 8) = 0x4026000000000000;
  *(a1 + 16) = 0;
  v5 = sub_100002394(&qword_10002C5E0, &qword_10001E288);
  return sub_100006CB4(v4, v3, a1 + *(v5 + 44));
}

unint64_t sub_1000073A4()
{
  result = qword_10002C420;
  if (!qword_10002C420)
  {
    sub_1000023DC(&qword_10002C418, &unk_10001DFC0);
    sub_100007430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C420);
  }

  return result;
}

unint64_t sub_100007430()
{
  result = qword_10002C428;
  if (!qword_10002C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C428);
  }

  return result;
}

unint64_t sub_100007484()
{
  result = qword_10002C4A8;
  if (!qword_10002C4A8)
  {
    sub_1000023DC(&qword_10002C480, &qword_10001E018);
    sub_10000266C(&qword_10002C4B0, &qword_10002C488, &qword_10001E020);
    sub_10000266C(&qword_10002C4B8, &qword_10002C468, &qword_10001E000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4A8);
  }

  return result;
}

unint64_t sub_100007564()
{
  result = qword_10002C4C0;
  if (!qword_10002C4C0)
  {
    sub_1000023DC(&qword_10002C458, &unk_10001DFF0);
    sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510);
    sub_10000266C(&qword_10002C4A0, &qword_10002C448, &qword_10001DFE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C4C0);
  }

  return result;
}

unint64_t sub_100007650()
{
  result = qword_10002C508;
  if (!qword_10002C508)
  {
    sub_1000023DC(&qword_10002C500, &unk_10001E460);
    sub_10000266C(&qword_10002C510, &qword_10002C518, &qword_10001E0A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C508);
  }

  return result;
}

uint64_t sub_100007708(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_100007738()
{
  result = qword_10002C558;
  if (!qword_10002C558)
  {
    sub_1000023DC(&qword_10002C528, &qword_10001E110);
    sub_1000077F0();
    sub_10000266C(&qword_10002C570, &qword_10002C578, &unk_10001E1A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C558);
  }

  return result;
}

unint64_t sub_1000077F0()
{
  result = qword_10002C560;
  if (!qword_10002C560)
  {
    sub_1000023DC(&qword_10002C548, &unk_10001E130);
    sub_100007650();
    sub_10000266C(&qword_10002C568, &qword_10002C550, &qword_10001E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C560);
  }

  return result;
}

uint64_t sub_1000078A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002394(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007910(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100007958(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000079A8()
{
  result = qword_10002C5D0;
  if (!qword_10002C5D0)
  {
    sub_1000023DC(&qword_10002C3D0, &qword_10001DF78);
    sub_10000266C(&qword_10002C5D8, &qword_10002C3C0, &qword_10001DF68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C5D0);
  }

  return result;
}

uint64_t sub_100007A7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002C5F0, &qword_10001E298);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100007AEC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_100002394(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007B4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002394(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_100007C30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v36 = a3;
  v4 = sub_100002394(&qword_10002C288, &qword_10001E390);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v34 = &v29 - v6;
  v35 = sub_10001CA14();
  v33 = *(v35 - 8);
  v7 = *(v33 + 64);
  __chkstk_darwin(v35);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EventLiveActivityView();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100002394(&qword_10002C638, &qword_10001E388);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  v18 = sub_100002394(&qword_10002C630, &qword_10001E380);
  v19 = *(v18 - 8);
  v30 = v18;
  v31 = v19;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = &v29 - v21;
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  *&v12[*(v9 + 20)] = a2;

  sub_10001D064();
  v23 = sub_10000DD90(&qword_10002C640, type metadata accessor for EventLiveActivityView);
  sub_10001CFA4();

  sub_10000F1C4(v12);
  sub_10001D064();
  v37 = v9;
  v38 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_10001CFB4();

  (*(v14 + 8))(v17, v13);
  v25 = v32;
  sub_10001D3E4();
  v26 = v34;
  sub_10001C9F4();
  (*(v33 + 8))(v25, v35);
  v37 = v13;
  v38 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v27 = v30;
  sub_10001CFC4();
  sub_100007AEC(v26, &qword_10002C288, &qword_10001E390);
  return (*(v31 + 8))(v22, v27);
}

uint64_t sub_10000804C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v80 = a3;
  v5 = sub_100002394(&qword_10002C288, &qword_10001E390);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v79 = &v64 - v7;
  v78 = sub_10001CA14();
  v85 = *(v78 - 8);
  v8 = *(v85 + 64);
  v9 = __chkstk_darwin(v78);
  v77 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v73 = &v64 - v11;
  v12 = sub_10001D3D4();
  v75 = *(v12 - 8);
  v76 = v12;
  v13 = *(v75 + 64);
  __chkstk_darwin(v12);
  v83 = &v64 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v84 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v18);
  v69 = &v64 - v20;
  __chkstk_darwin(v19);
  v22 = &v64 - v21;
  v70 = &v64 - v21;
  v82 = sub_10001D364();
  v86 = *(v82 - 8);
  v23 = *(v86 + 64);
  v24 = __chkstk_darwin(v82);
  v72 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v81 = &v64 - v27;
  __chkstk_darwin(v26);
  v74 = &v64 - v28;
  v29 = *(v16 + 16);
  v87 = a1;
  v29(v22, a1, v15);
  v66 = v29;
  v30 = *(v16 + 80);
  v31 = swift_allocObject();
  v71 = v31;
  v68 = a2;
  *(v31 + 16) = a2;
  v65 = *(v16 + 32);
  v65(v31 + ((v30 + 24) & ~v30), v70, v15);
  v32 = v69;
  v29(v69, a1, v15);
  v33 = (v30 + 16) & ~v30;
  v67 = v33 + v17;
  v34 = (v33 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  v70 = v35;
  v36 = v65;
  v65(v35 + v33, v32, v15);
  *(v35 + v34) = a2;
  v37 = v84;
  v38 = v87;
  v39 = v66;
  v66(v84, v87, v15);
  v69 = swift_allocObject();
  v36(&v69[v33], v37, v15);
  v39(v37, v38, v15);
  v40 = swift_allocObject();
  v84 = v15;
  v36((v40 + v33), v37, v15);
  *(v40 + v34) = v68;
  swift_retain_n();
  sub_100002394(&qword_10002C650, &qword_10001E3A0);
  sub_100002394(&qword_10002C658, &qword_10001E3A8);
  sub_100002394(&qword_10002C660, &unk_10001E3B0);
  sub_10000266C(&qword_10002C668, &qword_10002C650, &qword_10001E3A0);
  sub_10000E1D0();
  sub_10000E468();
  v41 = v72;
  sub_10001D344();
  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v37) = sub_10001CE34();
  *(inited + 32) = v37;
  v43 = sub_10001CE54();
  *(inited + 33) = v43;
  sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v37)
  {
    sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v43)
  {
    sub_10001CE44();
  }

  v44 = v78;
  v45 = v85;
  v47 = v75;
  v46 = v76;
  v48 = v73;
  v49 = v83;
  sub_10001D3C4();
  sub_10001D334();
  v50 = *(v47 + 8);
  v50(v49, v46);
  v51 = *(v86 + 8);
  v86 += 8;
  v51(v41, v82);
  sub_10001D3E4();
  v52 = *(sub_10001C954() + 16);

  if (v52 < 3)
  {
    v53 = *(v45 + 8);
    v54 = v44;
    v53(v48, v44);
LABEL_10:
    sub_10001CE44();
    goto LABEL_11;
  }

  v55 = sub_10001C9E4();
  v53 = *(v45 + 8);
  v53(v48, v44);
  if (v55)
  {
    v54 = v44;
    goto LABEL_10;
  }

  v56 = sub_10001CE24();
  sub_10001CE44();
  sub_10001CE44();
  v54 = v44;
  if (sub_10001CE44() != v56)
  {
    goto LABEL_10;
  }

LABEL_11:
  v57 = v83;
  sub_10001D3C4();
  v58 = v74;
  v59 = v81;
  sub_10001D334();
  v50(v57, v46);
  v60 = v82;
  v51(v59, v82);
  v61 = v77;
  sub_10001D3E4();
  v62 = v79;
  sub_10001C9F4();
  v53(v61, v54);
  sub_10001D354();
  sub_100007AEC(v62, &qword_10002C288, &qword_10001E390);
  return (v51)(v58, v60);
}

uint64_t sub_10000892C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10001CA14();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  sub_100008A24(v8, a1, a2);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100008A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v28 = sub_100002394(&qword_10002C708, &qword_10001E4B8);
  v26 = *(v28 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v28);
  v7 = &v23 - v6;
  v25 = sub_100002394(&qword_10002C710, &unk_10001E4C0);
  v8 = *(v25 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v25);
  v11 = &v23 - v10;
  v12 = sub_10001D4A4();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v24 = sub_100002394(&qword_10002C718, &qword_10001F8D0);
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v24);
  v17 = &v23 - v16;
  sub_10001D484();
  v34 = a2;
  v35 = a1;
  v18 = sub_100002394(&qword_10002C720, &qword_10001E4D0);
  v19 = sub_10000EAFC();
  sub_10001D444();
  sub_10001D494();
  v32 = a2;
  v33 = a1;
  sub_100002394(&qword_10002C740, &qword_10001E4E0);
  v20 = sub_1000023DC(&qword_10002C748, &qword_10001E4E8);
  v21 = sub_10000EBBC();
  v36 = v20;
  v37 = v21;
  swift_getOpaqueTypeConformance2();
  sub_10001D444();
  v31 = v17;
  sub_100002394(&qword_10002C7E8, &qword_10001E540);
  v36 = v18;
  v37 = v19;
  swift_getOpaqueTypeConformance2();
  sub_10001D454();
  v29 = v7;
  v30 = v11;
  sub_100002394(&qword_10002C650, &qword_10001E3A0);
  sub_10000266C(&qword_10002C668, &qword_10002C650, &qword_10001E3A0);
  sub_10001D454();
  (*(v26 + 8))(v7, v28);
  (*(v8 + 8))(v11, v25);
  return (*(v14 + 8))(v17, v24);
}

uint64_t sub_100008E68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v73 = a1;
  v81 = a2;
  v2 = sub_10001D254();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v75 = *(v76 - 8);
  v7 = *(v75 + 64);
  __chkstk_darwin(v76);
  v9 = &v73 - v8;
  v74 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  v10 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v12 = &v73 - v11;
  v78 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  v13 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v80 = &v73 - v14;
  v77 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v15 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v79 = &v73 - v16;
  v17 = sub_10001CA14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v22 = sub_10001C9D4();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  PKFloatCeilToPixel();
  PKFloatFloorToPixel();
  v25 = sub_100016FC4(v22, v24);

  sub_10001D134();
  sub_10001CB04();
  v82 = v25;
  v83 = v88;
  v84 = v89;
  v85 = v90;
  v86 = v91;
  v87 = v92;
  (*(v3 + 104))(v6, enum case for LightenForegroundModifier.Style.normal(_:), v2);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v3 + 8))(v6, v2);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v73 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v17) = sub_10001CE14();
  *(inited + 32) = v17;
  v27 = sub_10001CE24();
  *(inited + 33) = v27;
  v28 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v17)
  {
    v28 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v27)
  {
    v28 = sub_10001CE44();
  }

  sub_10001CAC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  (*(v75 + 32))(v12, v9, v76);
  v37 = &v12[*(v74 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = swift_initStackObject();
  *(v38 + 16) = v73;
  v39 = sub_10001CE34();
  *(v38 + 32) = v39;
  v40 = sub_10001CE54();
  *(v38 + 33) = v40;
  v41 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v39)
  {
    v41 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v40)
  {
    v41 = sub_10001CE44();
  }

  sub_10001CAC4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v80;
  sub_1000078A8(v12, v80, &qword_10002C400, &qword_10001DFA8);
  v51 = v50 + *(v78 + 36);
  *v51 = v41;
  *(v51 + 8) = v43;
  *(v51 + 16) = v45;
  *(v51 + 24) = v47;
  *(v51 + 32) = v49;
  *(v51 + 40) = 0;
  v52 = v79;
  v53 = &v79[*(v77 + 36)];
  v54 = *(sub_10001CB54() + 20);
  v55 = enum case for RoundedCornerStyle.continuous(_:);
  v56 = sub_10001CCA4();
  (*(*(v56 - 8) + 104))(&v53[v54], v55, v56);
  __asm { FMOV            V0.2D, #2.0 }

  *v53 = _Q0;
  *&v53[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v50, v52, &qword_10002C408, &qword_10001DFB0);
  LOBYTE(v55) = sub_10001CE34();
  sub_10001CAC4();
  v63 = v62;
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v70 = v81;
  sub_1000078A8(v52, v81, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C658, &qword_10001E3A8);
  v72 = v70 + *(result + 36);
  *v72 = v55;
  *(v72 + 8) = v63;
  *(v72 + 16) = v65;
  *(v72 + 24) = v67;
  *(v72 + 32) = v69;
  *(v72 + 40) = 0;
  return result;
}

uint64_t sub_1000095CC@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = sub_100002394(&qword_10002C6A8, &qword_10001E3C0);
  v33 = *(v1 - 8);
  v34 = v1;
  v2 = *(v33 + 64);
  __chkstk_darwin(v1);
  v4 = &v32 - v3;
  v5 = sub_10001CA14();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v32 - v11;
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v13 = sub_10001C964();
  v15 = v14;
  v16 = *(v6 + 8);
  v16(v12, v5);
  if (!v15)
  {
    goto LABEL_5;
  }

  v17 = v13;
  sub_10001D3E4();
  v18 = sub_10001C9C4();
  v20 = v19;
  v16(v10, v5);
  if (!v20)
  {

LABEL_5:
    v30 = 1;
    v23 = v34;
    v29 = v35;
    return (*(v33 + 56))(v29, v30, 1, v23);
  }

  *v4 = sub_10001CCB4();
  *(v4 + 1) = 0;
  v4[16] = 0;
  v21 = sub_100002394(&qword_10002C6C0, &qword_10001E3E0);
  sub_100009888(v17, v15, v18, v20, &v4[*(v21 + 44)]);

  v22 = sub_10001CE54();
  sub_10001CAC4();
  v23 = v34;
  v24 = &v4[*(v34 + 36)];
  *v24 = v22;
  *(v24 + 1) = v25;
  *(v24 + 2) = v26;
  *(v24 + 3) = v27;
  *(v24 + 4) = v28;
  v24[40] = 0;
  v29 = v35;
  sub_1000078A8(v4, v35, &qword_10002C6A8, &qword_10001E3C0);
  v30 = 0;
  return (*(v33 + 56))(v29, v30, 1, v23);
}

uint64_t sub_100009888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(&v65 + 1) = a4;
  *&v65 = a3;
  v69 = a5;
  v7 = sub_100002394(&qword_10002C6C8, &qword_10001E3E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v59 - v10;
  v12 = sub_100002394(&qword_10002C6D0, &qword_10001E3F0);
  v13 = *(v12 - 8);
  v70 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  v68 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v67 = &v59 - v18;
  v19 = __chkstk_darwin(v17);
  v66 = &v59 - v20;
  __chkstk_darwin(v19);
  v22 = &v59 - v21;
  *&v80 = a1;
  *(&v80 + 1) = a2;
  v64 = sub_1000034E8();

  v23 = sub_10001CF74();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v31 = sub_10001CF44();
  v32 = swift_getKeyPath();
  LOBYTE(v71) = v27 & 1;
  v77 = 0;
  *&v80 = v23;
  *(&v80 + 1) = v25;
  LOBYTE(v81) = v27 & 1;
  *(&v81 + 1) = v29;
  *&v82 = KeyPath;
  *(&v82 + 1) = 1;
  LOBYTE(v83) = 0;
  *(&v83 + 1) = v32;
  v84 = v31;
  v33 = sub_100002394(&qword_10002C6D8, &qword_10001E458);
  v34 = sub_10000E9E8();
  sub_10001D004();
  v78[3] = v83;
  v79 = v84;
  v78[1] = v81;
  v78[2] = v82;
  v78[0] = v80;
  sub_100007AEC(v78, &qword_10002C6D8, &qword_10001E458);
  sub_10001CEC4();
  *&v80 = v33;
  *(&v80 + 1) = v34;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v60 = v22;
  v59 = v7;
  sub_10001CFF4();
  v35 = *(v8 + 8);
  v61 = v8 + 8;
  v62 = v35;
  v35(v11, v7);
  v36 = sub_10001D054();
  v37 = sub_100002394(&qword_10002C6F8, &qword_10001E478);
  *&v22[*(v37 + 36)] = v36;
  v38 = swift_getKeyPath();
  v39 = &v22[*(v70 + 44)];
  *v39 = v38;
  v39[1] = 0x3FE999999999999ALL;
  v80 = v65;

  v40 = sub_10001CF74();
  v42 = v41;
  LOBYTE(v8) = v43;
  v45 = v44;
  v46 = swift_getKeyPath();
  v47 = sub_10001CF54();
  v48 = swift_getKeyPath();
  v77 = v8 & 1;
  v76 = 0;
  *&v71 = v40;
  *(&v71 + 1) = v42;
  LOBYTE(v72) = v8 & 1;
  *(&v72 + 1) = v45;
  *&v73 = v46;
  *(&v73 + 1) = 1;
  LOBYTE(v74) = 0;
  *(&v74 + 1) = v48;
  v75 = v47;
  sub_10001D004();
  v82 = v73;
  v83 = v74;
  v84 = v75;
  v80 = v71;
  v81 = v72;
  sub_100007AEC(&v80, &qword_10002C6D8, &qword_10001E458);
  sub_10001CEE4();
  v49 = v66;
  v50 = v59;
  sub_10001CFF4();
  v62(v11, v50);
  *(v49 + *(v37 + 36)) = sub_10001D084();
  v51 = swift_getKeyPath();
  v52 = (v49 + *(v70 + 44));
  *v52 = v51;
  v52[1] = 0x3FECCCCCCCCCCCCDLL;
  v53 = v60;
  v54 = v67;
  sub_100007B4C(v60, v67, &qword_10002C6D0, &qword_10001E3F0);
  v55 = v68;
  sub_100007B4C(v49, v68, &qword_10002C6D0, &qword_10001E3F0);
  v56 = v69;
  sub_100007B4C(v54, v69, &qword_10002C6D0, &qword_10001E3F0);
  v57 = sub_100002394(&qword_10002C700, &qword_10001E4B0);
  sub_100007B4C(v55, v56 + *(v57 + 48), &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v49, &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v53, &qword_10002C6D0, &qword_10001E3F0);
  sub_100007AEC(v55, &qword_10002C6D0, &qword_10001E3F0);
  return sub_100007AEC(v54, &qword_10002C6D0, &qword_10001E3F0);
}

uint64_t sub_100009EB4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  *&v85 = a1;
  v84 = a2;
  v2 = sub_10001D254();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v78 = *(v79 - 8);
  v7 = *(v78 + 64);
  __chkstk_darwin(v79);
  v9 = &v77 - v8;
  v77 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  v10 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v12 = &v77 - v11;
  v81 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  v13 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v82 = &v77 - v14;
  v80 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v15 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v83 = &v77 - v16;
  v17 = sub_10001CA14();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002C648, &qword_10001E398);
  sub_10001D3E4();
  v22 = sub_10001C9D4();
  v24 = v23;
  (*(v18 + 8))(v21, v17);
  PKFloatCeilToPixel();
  PKFloatFloorToPixel();
  v25 = sub_100016FC4(v22, v24);

  sub_10001D134();
  sub_10001CB04();
  v86 = v25;
  v87 = v92;
  v88 = v93;
  v89 = v94;
  v90 = v95;
  v91 = v96;
  (*(v3 + 104))(v6, enum case for LightenForegroundModifier.Style.normal(_:), v2);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v3 + 8))(v6, v2);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v85 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  LOBYTE(v17) = sub_10001CE14();
  *(inited + 32) = v17;
  v27 = sub_10001CE24();
  *(inited + 33) = v27;
  v28 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v17)
  {
    v28 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v27)
  {
    v28 = sub_10001CE44();
  }

  sub_10001CAC4();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  (*(v78 + 32))(v12, v9, v79);
  v37 = &v12[*(v77 + 36)];
  *v37 = v28;
  *(v37 + 1) = v30;
  *(v37 + 2) = v32;
  *(v37 + 3) = v34;
  *(v37 + 4) = v36;
  v37[40] = 0;
  v38 = swift_initStackObject();
  *(v38 + 16) = v85;
  v39 = sub_10001CE34();
  *(v38 + 32) = v39;
  v40 = sub_10001CE54();
  *(v38 + 33) = v40;
  v41 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v39)
  {
    v41 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v40)
  {
    v41 = sub_10001CE44();
  }

  sub_10001CAC4();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v12;
  v51 = v82;
  sub_1000078A8(v50, v82, &qword_10002C400, &qword_10001DFA8);
  v52 = v51 + *(v81 + 36);
  *v52 = v41;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  v53 = v83;
  v54 = &v83[*(v80 + 36)];
  v55 = *(sub_10001CB54() + 20);
  v56 = enum case for RoundedCornerStyle.continuous(_:);
  v57 = sub_10001CCA4();
  (*(*(v57 - 8) + 104))(&v54[v55], v56, v57);
  __asm { FMOV            V0.2D, #2.0 }

  *v54 = _Q0;
  *&v54[*(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)] = 256;
  sub_1000078A8(v51, v53, &qword_10002C408, &qword_10001DFB0);
  v63 = swift_initStackObject();
  *(v63 + 16) = v85;
  LOBYTE(v51) = sub_10001CE34();
  *(v63 + 32) = v51;
  v64 = sub_10001CE54();
  *(v63 + 33) = v64;
  v65 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v51)
  {
    v65 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v64)
  {
    v65 = sub_10001CE44();
  }

  sub_10001CAC4();
  v67 = v66;
  v69 = v68;
  v71 = v70;
  v73 = v72;
  v74 = v84;
  sub_1000078A8(v53, v84, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C658, &qword_10001E3A8);
  v76 = v74 + *(result + 36);
  *v76 = v65;
  *(v76 + 8) = v67;
  *(v76 + 16) = v69;
  *(v76 + 24) = v71;
  *(v76 + 32) = v73;
  *(v76 + 40) = 0;
  return result;
}

uint64_t sub_10000A6A8@<X0>(uint64_t *a1@<X8>)
{
  v80 = a1;
  v1 = sub_10001D254();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_100002394(&qword_10002C3F8, &qword_10001DFA0);
  v6 = *(v72 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v72);
  v9 = &v70 - v8;
  v71 = sub_100002394(&qword_10002C400, &qword_10001DFA8);
  v10 = *(*(v71 - 8) + 64);
  __chkstk_darwin(v71);
  v12 = &v70 - v11;
  v77 = sub_100002394(&qword_10002C408, &qword_10001DFB0);
  v13 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v79 = &v70 - v14;
  v76 = sub_100002394(&qword_10002C410, &qword_10001DFB8);
  v15 = *(*(v76 - 8) + 64);
  v16 = __chkstk_darwin(v76);
  v18 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v78 = &v70 - v19;
  v20 = *(sub_10001C954() + 16);

  if (!v20)
  {
    sub_10001C9A4();
    if (v22)
    {

      v21 = 0x404C000000000000;
    }

    else
    {
      v21 = 0x4048800000000000;
    }

    goto LABEL_10;
  }

  if (sub_10001C9E4())
  {
    v21 = 0x4050800000000000;
LABEL_10:
    v24 = *&v21;
    goto LABEL_11;
  }

  v23 = *(sub_10001C954() + 16);

  if (v23 >= 3)
  {
    v24 = 92.0;
  }

  else
  {
    v24 = 66.0;
  }

LABEL_11:
  sub_10000E8C8(v24);
  v75 = sub_10001D074();
  v74 = sub_10001D124();
  v73 = v25;
  v26 = sub_10001C9D4();
  v28 = sub_100016FC4(v26, v27);

  sub_10001D134();
  sub_10001CB04();
  v81 = v28;
  v82 = v87;
  v83 = v88;
  v84 = v89;
  v85 = v90;
  v86 = v91;
  (*(v2 + 104))(v5, enum case for LightenForegroundModifier.Style.normal(_:), v1);
  sub_100002394(&qword_10002C418, &unk_10001DFC0);
  sub_1000073A4();
  sub_10001CF84();
  (*(v2 + 8))(v5, v1);

  sub_100002394(&qword_10002C430, &unk_10001E3D0);
  inited = swift_initStackObject();
  v70 = xmmword_10001DED0;
  *(inited + 16) = xmmword_10001DED0;
  v30 = sub_10001CE14();
  *(inited + 32) = v30;
  v31 = sub_10001CE24();
  *(inited + 33) = v31;
  v32 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v30)
  {
    v32 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v31)
  {
    v32 = sub_10001CE44();
  }

  sub_10001CAC4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  (*(v6 + 32))(v12, v9, v72);
  v41 = &v12[*(v71 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = swift_initStackObject();
  *(v42 + 16) = v70;
  v43 = sub_10001CE34();
  *(v42 + 32) = v43;
  v44 = sub_10001CE54();
  *(v42 + 33) = v44;
  v45 = sub_10001CE44();
  sub_10001CE44();
  if (sub_10001CE44() != v43)
  {
    v45 = sub_10001CE44();
  }

  sub_10001CE44();
  if (sub_10001CE44() != v44)
  {
    v45 = sub_10001CE44();
  }

  if (v24 <= 66.0)
  {
    v46 = 4.0;
  }

  else
  {
    v46 = 6.0;
  }

  v47 = sub_100002394(&qword_10002C720, &qword_10001E4D0);
  v48 = v80;
  v49 = v80 + *(v47 + 36);
  sub_10001CAC4();
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v58 = v12;
  v59 = v79;
  sub_1000078A8(v58, v79, &qword_10002C400, &qword_10001DFA8);
  v60 = v59 + *(v77 + 36);
  *v60 = v45;
  *(v60 + 8) = v51;
  *(v60 + 16) = v53;
  *(v60 + 24) = v55;
  *(v60 + 32) = v57;
  *(v60 + 40) = 0;
  v61 = &v18[*(v76 + 36)];
  v62 = *(sub_10001CB54() + 20);
  v63 = enum case for RoundedCornerStyle.continuous(_:);
  v64 = sub_10001CCA4();
  (*(*(v64 - 8) + 104))(v61 + v62, v63, v64);
  *v61 = v46;
  v61[1] = v46;
  *(v61 + *(sub_100002394(&qword_10002C438, &qword_10001DFD0) + 36)) = 256;
  sub_1000078A8(v59, v18, &qword_10002C408, &qword_10001DFB0);
  v65 = v18;
  v66 = v78;
  sub_1000078A8(v65, v78, &qword_10002C410, &qword_10001DFB8);
  sub_1000078A8(v66, v49, &qword_10002C410, &qword_10001DFB8);
  result = sub_100002394(&qword_10002C738, &qword_10001E4D8);
  v68 = (v49 + *(result + 36));
  v69 = v73;
  *v68 = v74;
  v68[1] = v69;
  *v48 = v75;
  return result;
}

uint64_t sub_10000AE2C(uint64_t a1, uint64_t a2)
{
  v3 = sub_10001D4C4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002394(&qword_10002C748, &qword_10001E4E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10000AFA8(a2, &v13 - v10);
  sub_10001D4B4();
  sub_10000EBBC();
  sub_10001CF94();
  (*(v4 + 8))(v7, v3);
  return sub_100007AEC(v11, &qword_10002C748, &qword_10001E4E8);
}

uint64_t sub_10000AFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v80 = sub_100002394(&qword_10002C7D0, &qword_10001E530);
  v3 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v75 = (&v73 - v4);
  v77 = sub_100002394(&qword_10002C7F0, &qword_10001E548);
  v5 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v79 = &v73 - v6;
  v7 = sub_100002394(&qword_10002C7F8, &qword_10001E550);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v73 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v73 - v11;
  v76 = sub_100002394(&qword_10002C7B0, &qword_10001E520);
  v13 = *(*(v76 - 8) + 64);
  __chkstk_darwin(v76);
  v74 = (&v73 - v14);
  v87 = sub_100002394(&qword_10002C7A0, &qword_10001E518);
  v15 = *(*(v87 - 8) + 64);
  __chkstk_darwin(v87);
  v78 = &v73 - v16;
  v83 = sub_100002394(&qword_10002C790, &qword_10001E508);
  v17 = *(*(v83 - 8) + 64);
  __chkstk_darwin(v83);
  v19 = &v73 - v18;
  v84 = sub_100002394(&qword_10002C800, &qword_10001E558);
  v20 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v82 = &v73 - v21;
  v81 = sub_100002394(&qword_10002C808, &unk_10001E560);
  v22 = *(*(v81 - 8) + 64);
  __chkstk_darwin(v81);
  v24 = &v73 - v23;
  v86 = sub_100002394(&qword_10002C760, &qword_10001E4F0);
  v25 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v27 = &v73 - v26;
  v28 = sub_100002394(&qword_10002C468, &qword_10001E000);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v34 = &v73 - v33;
  v35 = sub_100002394(&qword_10002C770, &qword_10001E4F8);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = &v73 - v37;
  v39 = *(sub_10001C954() + 16);

  if (v39)
  {
    v40 = v27;
    v41 = v83;
    v42 = *(sub_10001C954() + 16);

    if (v42 > 2)
    {
      if (sub_10001C9E4())
      {
        v56 = sub_10001CC94();
        v57 = v74;
        *v74 = v56;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        v58 = v57 + *(sub_100002394(&qword_10002C818, &qword_10001E578) + 44);
        *v12 = sub_10001CCC4();
        *(v12 + 1) = 0;
        v12[16] = 0;
        v59 = sub_100002394(&qword_10002C820, &qword_10001E580);
        sub_10000C64C(a1, &v12[*(v59 + 44)]);
        v60 = v73;
        sub_100007B4C(v12, v73, &qword_10002C7F8, &qword_10001E550);
        sub_100007B4C(v60, v58, &qword_10002C7F8, &qword_10001E550);
        v61 = v58 + *(sub_100002394(&qword_10002C828, &unk_10001E588) + 48);
        *v61 = 0;
        *(v61 + 8) = 0;
        sub_100007AEC(v12, &qword_10002C7F8, &qword_10001E550);
        sub_100007AEC(v60, &qword_10002C7F8, &qword_10001E550);
        sub_10000F050();
        sub_10001D134();
        sub_10001CB04();
        v62 = (v57 + *(v76 + 36));
        v63 = v89;
        *v62 = v88;
        v62[1] = v63;
        v62[2] = v90;
        v64 = &qword_10002C7B0;
        v65 = &qword_10001E520;
        sub_100007B4C(v57, v79, &qword_10002C7B0, &qword_10001E520);
      }

      else
      {
        v67 = sub_10001CCC4();
        v57 = v75;
        *v75 = v67;
        *(v57 + 8) = 0;
        *(v57 + 16) = 0;
        v68 = sub_100002394(&qword_10002C810, &qword_10001E570);
        sub_10000D18C(a1, v57 + *(v68 + 44));
        sub_10000F050();
        sub_10001D134();
        sub_10001CB04();
        v69 = v79;
        v70 = (v57 + *(v80 + 36));
        v71 = v89;
        *v70 = v88;
        v70[1] = v71;
        v70[2] = v90;
        v64 = &qword_10002C7D0;
        v65 = &qword_10001E530;
        sub_100007B4C(v57, v69, &qword_10002C7D0, &qword_10001E530);
      }

      swift_storeEnumTagMultiPayload();
      sub_10000EED0();
      sub_10000EF88();
      v66 = v78;
      sub_10001CD84();
      sub_100007AEC(v57, v64, v65);
      v46 = &qword_10002C7A0;
      v47 = &qword_10001E518;
      sub_100007B4C(v66, v82, &qword_10002C7A0, &qword_10001E518);
      swift_storeEnumTagMultiPayload();
      sub_10000EC48();
      sub_10000EE44();
      sub_10001CD84();
      v48 = v66;
    }

    else
    {
      *v19 = sub_10001CC94();
      *(v19 + 1) = 0;
      v19[16] = 0;
      v43 = sub_100002394(&qword_10002C4C8, &unk_10001E030);
      sub_10000C224(a1, &v19[*(v43 + 44)]);
      sub_10000F050();
      sub_10001D134();
      sub_10001CB04();
      v44 = &v19[*(v41 + 36)];
      v45 = v89;
      *v44 = v88;
      *(v44 + 1) = v45;
      *(v44 + 2) = v90;
      v46 = &qword_10002C790;
      v47 = &qword_10001E508;
      sub_100007B4C(v19, v24, &qword_10002C790, &qword_10001E508);
      swift_storeEnumTagMultiPayload();
      sub_10000ECD4();
      sub_10000ED8C();
      sub_10001CD84();
      sub_100007B4C(v40, v82, &qword_10002C760, &qword_10001E4F0);
      swift_storeEnumTagMultiPayload();
      sub_10000EC48();
      sub_10000EE44();
      sub_10001CD84();
      sub_100007AEC(v40, &qword_10002C760, &qword_10001E4F0);
      v48 = v19;
    }

    v54 = v46;
    v55 = v47;
  }

  else
  {
    *v38 = sub_10001CC94();
    *(v38 + 1) = 0;
    v38[16] = 0;
    v49 = &v38[*(sub_100002394(&qword_10002C830, &qword_10001E598) + 44)];
    *v34 = sub_10001CCC4();
    *(v34 + 1) = 0;
    v34[16] = 0;
    v50 = sub_100002394(&qword_10002C4D0, &qword_10001E5A0);
    sub_10000BA68(a1, &v34[*(v50 + 44)]);
    sub_100007B4C(v34, v32, &qword_10002C468, &qword_10001E000);
    sub_100007B4C(v32, v49, &qword_10002C468, &qword_10001E000);
    v51 = v49 + *(sub_100002394(&qword_10002C838, &qword_10001E5A8) + 48);
    *v51 = 0;
    *(v51 + 8) = 0;
    sub_100007AEC(v34, &qword_10002C468, &qword_10001E000);
    sub_100007AEC(v32, &qword_10002C468, &qword_10001E000);
    sub_10000F050();
    sub_10001D134();
    sub_10001CB04();
    v52 = &v38[*(v35 + 36)];
    v53 = v89;
    *v52 = v88;
    *(v52 + 1) = v53;
    *(v52 + 2) = v90;
    sub_100007B4C(v38, v24, &qword_10002C770, &qword_10001E4F8);
    swift_storeEnumTagMultiPayload();
    sub_10000ECD4();
    sub_10000ED8C();
    sub_10001CD84();
    sub_100007B4C(v27, v82, &qword_10002C760, &qword_10001E4F0);
    swift_storeEnumTagMultiPayload();
    sub_10000EC48();
    sub_10000EE44();
    sub_10001CD84();
    sub_100007AEC(v27, &qword_10002C760, &qword_10001E4F0);
    v48 = v38;
    v54 = &qword_10002C770;
    v55 = &qword_10001E4F8;
  }

  return sub_100007AEC(v48, v54, v55);
}

uint64_t sub_10000BA68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a1;
  v98 = a2;
  v89 = sub_100002394(&qword_10002C528, &qword_10001E110);
  v2 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v88 = &v85 - v3;
  v4 = sub_100002394(&qword_10002C530, &qword_10001E118);
  v5 = *(v4 - 8);
  v95 = v4;
  v96 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v90 = &v85 - v7;
  v8 = sub_100002394(&qword_10002C538, &unk_10001E120);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v97 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v92 = &v85 - v12;
  v13 = sub_10001CF24();
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002394(&qword_10002C4F8, &qword_10001E060);
  v19 = *(v18 - 8);
  v93 = (v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18 - 8);
  v94 = &v85 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v24 = &v85 - v23;
  v101 = sub_10001CA04();
  v102 = v25;
  v86 = sub_1000034E8();
  v26 = sub_10001CF74();
  v28 = v27;
  v30 = v29;
  v32 = v31;
  KeyPath = swift_getKeyPath();
  v101 = v26;
  v102 = v28;
  v103 = v30 & 1;
  v104 = v32;
  v105 = KeyPath;
  v106 = 1;
  v107 = 0;
  sub_10001CEE4();
  sub_100002394(&qword_10002C500, &unk_10001E460);
  sub_100007650();
  sub_10001CFF4();
  sub_100007708(v26, v28, v30 & 1);

  sub_10001CE74();
  v34 = enum case for Font.Leading.tight(_:);
  v36 = v99;
  v35 = v100;
  v37 = *(v100 + 104);
  v37(v17, enum case for Font.Leading.tight(_:), v99);
  v38 = sub_10001CF34();

  v39 = v35 + 8;
  v40 = *(v35 + 8);
  v87 = v17;
  v100 = v39;
  v40(v17, v36);
  v41 = swift_getKeyPath();
  v42 = &v24[*(sub_100002394(&qword_10002C4E8, &qword_10001E050) + 36)];
  *v42 = v41;
  v42[1] = v38;
  v43 = sub_10001D084();
  *&v24[*(sub_100002394(&qword_10002C4F0, &qword_10001E058) + 36)] = v43;
  v44 = swift_getKeyPath();
  v45 = *(v93 + 11);
  v93 = v24;
  v46 = &v24[v45];
  *v46 = v44;
  v46[1] = 0x3FE999999999999ALL;
  v47 = sub_10001C9A4();
  if (v48)
  {
    v101 = v47;
    v102 = v48;
    v49 = sub_10001CF74();
    v51 = v50;
    v53 = v52;
    LODWORD(v91) = v34;
    v55 = v54;
    v56 = swift_getKeyPath();
    v86 = v37;
    v57 = v56;
    v58 = sub_100002394(&qword_10002C548, &unk_10001E130);
    v59 = v88;
    v60 = &v88[*(v58 + 36)];
    v61 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
    v85 = v40;
    v62 = enum case for Text.TruncationMode.tail(_:);
    v63 = sub_10001CF64();
    (*(*(v63 - 8) + 104))(v60 + v61, v62, v63);
    *v60 = swift_getKeyPath();
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53 & 1;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 1;
    *(v59 + 48) = 0;
    v64 = swift_getKeyPath();
    v65 = v59 + *(v89 + 36);
    *v65 = v64;
    *(v65 + 8) = 2;
    sub_10001CEB4();
    sub_100007738();
    v66 = v90;
    sub_10001CFF4();
    sub_100007AEC(v59, &qword_10002C528, &qword_10001E110);
    sub_10001CE84();
    v67 = v87;
    v68 = v99;
    v86(v87, v91, v99);
    v69 = sub_10001CF34();

    v85(v67, v68);
    v70 = swift_getKeyPath();
    v71 = (v66 + *(sub_100002394(&qword_10002C580, &unk_10001E630) + 36));
    *v71 = v70;
    v71[1] = v69;
    v72 = sub_10001D054();
    *(v66 + *(sub_100002394(&qword_10002C588, &unk_10001E1B0) + 36)) = v72;
    v73 = swift_getKeyPath();
    v74 = v95;
    v75 = (v66 + *(v95 + 36));
    *v75 = v73;
    v75[1] = 0x3FE999999999999ALL;
    v76 = v92;
    sub_1000078A8(v66, v92, &qword_10002C530, &qword_10001E118);
    v77 = 0;
    v78 = v74;
  }

  else
  {
    v78 = v95;
    v76 = v92;
    v77 = 1;
  }

  (*(v96 + 56))(v76, v77, 1, v78);
  v80 = v93;
  v79 = v94;
  sub_100007B4C(v93, v94, &qword_10002C4F8, &qword_10001E060);
  v81 = v97;
  sub_100007B4C(v76, v97, &qword_10002C538, &unk_10001E120);
  v82 = v98;
  sub_100007B4C(v79, v98, &qword_10002C4F8, &qword_10001E060);
  v83 = sub_100002394(&qword_10002C540, &unk_10001E5B0);
  sub_100007B4C(v81, v82 + *(v83 + 48), &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v76, &qword_10002C538, &unk_10001E120);
  sub_100007AEC(v80, &qword_10002C4F8, &qword_10001E060);
  sub_100007AEC(v81, &qword_10002C538, &unk_10001E120);
  return sub_100007AEC(v79, &qword_10002C4F8, &qword_10001E060);
}

uint64_t sub_10000C224@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = sub_10001C994();
  v4 = *(v54 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v54);
  v53 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v45 - v13;
  *v14 = sub_10001CDE4();
  v15 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000CC60(a1, &v14[*(v15 + 44)]);
  v16 = &v14[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v17 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v18 = enum case for Text.TruncationMode.tail(_:);
  v19 = sub_10001CF64();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *&v14[*(v8 + 44)] = sub_10001D084();
  v22 = sub_10001C954();
  v23 = *(v22 + 16);
  if (v23)
  {
    v46 = v14;
    v47 = v12;
    v48 = a2;
    v55 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v23, 0);
    v24 = v55;
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v28 = v25;
    v45[1] = v22;
    v29 = v22 + v27;
    v50 = *(v28 + 56);
    v51 = v26;
    v52 = v28;
    v49 = (v28 - 8);
    do
    {
      v30 = v53;
      v31 = v54;
      v51(v53, v29, v54);
      v32 = sub_10001C974();
      v34 = v33;
      v35 = sub_10001C984();
      v37 = v36;
      (*v49)(v30, v31);
      v55 = v24;
      v39 = v24[2];
      v38 = v24[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E79C((v38 > 1), v39 + 1, 1);
        v24 = v55;
      }

      v24[2] = v39 + 1;
      v40 = &v24[4 * v39];
      v40[4] = v32;
      v40[5] = v34;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v50;
      --v23;
    }

    while (v23);

    v12 = v47;
    a2 = v48;
    v14 = v46;
  }

  else
  {

    v24 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v14, v12, &qword_10002C590, &unk_10001E640);
  sub_100007B4C(v12, a2, &qword_10002C590, &unk_10001E640);
  v41 = sub_100002394(&qword_10002C5B0, &qword_10001E660);
  v42 = a2 + *(v41 + 48);
  *v42 = 0x402C000000000000;
  *(v42 + 8) = 0;
  v43 = a2 + *(v41 + 64);
  *v43 = v24;
  *(v43 + 8) = xmmword_10001E2D0;
  *(v43 + 24) = 1;
  *(v43 + 32) = 0x4034000000000000;

  sub_100007AEC(v14, &qword_10002C590, &unk_10001E640);

  return sub_100007AEC(v12, &qword_10002C590, &unk_10001E640);
}

void sub_10000C64C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v57 = sub_100002394(&qword_10002C848, &qword_10001E670);
  v56 = *(v57 - 8);
  v3 = *(v56 + 64);
  __chkstk_darwin(v57);
  v55 = &v52 - v4;
  v54 = sub_100002394(&qword_10002C850, &qword_10001E678);
  v5 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v7 = &v52 - v6;
  v53 = sub_100002394(&qword_10002C858, &qword_10001E680);
  v8 = *(*(v53 - 8) + 64);
  v9 = __chkstk_darwin(v53);
  v59 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v13 = &v52 - v12;
  __chkstk_darwin(v11);
  v58 = &v52 - v14;
  v15 = sub_100002394(&qword_10002C590, &unk_10001E640);
  v16 = v15 - 8;
  v17 = *(*(v15 - 8) + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v52 - v21;
  *v22 = sub_10001CDE4();
  v23 = sub_100002394(&qword_10002C598, &unk_10001E1C0);
  sub_10000CC60(a1, &v22[*(v23 + 44)]);
  v24 = &v22[*(sub_100002394(&qword_10002C5A0, &unk_10001E650) + 36)];
  v25 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v26 = enum case for Text.TruncationMode.tail(_:);
  v27 = sub_10001CF64();
  (*(*(v27 - 8) + 104))(v24 + v25, v26, v27);
  *v24 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v29 = &v22[*(sub_100002394(&qword_10002C5A8, &unk_10001E1D0) + 36)];
  *v29 = KeyPath;
  v29[8] = 2;
  *&v22[*(v16 + 44)] = sub_10001D084();
  v30 = sub_10001D4F4();
  v31 = PKLocalizedTicketingString(v30);

  if (v31)
  {
    v32 = sub_10001D524();
    v34 = v33;

    *&v66[0] = v32;
    *(&v66[0] + 1) = v34;
    sub_1000034E8();
    v35 = sub_10001CF74();
    v37 = v36;
    LOBYTE(v32) = v38;
    v40 = v39;
    v41 = swift_getKeyPath();
    v42 = sub_10001CE84();
    v43 = swift_getKeyPath();
    v69 = v32 & 1;
    v68 = 0;
    *&v61 = v35;
    *(&v61 + 1) = v37;
    LOBYTE(v62) = v32 & 1;
    *(&v62 + 1) = v40;
    *&v63 = v41;
    *(&v63 + 1) = 1;
    LOBYTE(v64) = 0;
    *(&v64 + 1) = v43;
    v65 = v42;
    sub_10001CED4();
    sub_100002394(&qword_10002C6D8, &qword_10001E458);
    sub_10000E9E8();
    v44 = v55;
    sub_10001CFF4();
    v66[2] = v63;
    v66[3] = v64;
    v67 = v65;
    v66[0] = v61;
    v66[1] = v62;
    sub_100007AEC(v66, &qword_10002C6D8, &qword_10001E458);
    v45 = sub_10001D054();
    (*(v56 + 32))(v7, v44, v57);
    *&v7[*(v54 + 36)] = v45;
    v46 = swift_getKeyPath();
    sub_1000078A8(v7, v13, &qword_10002C850, &qword_10001E678);
    v47 = &v13[*(v53 + 36)];
    *v47 = v46;
    v47[1] = 0x3FE999999999999ALL;
    v48 = v58;
    sub_1000078A8(v13, v58, &qword_10002C858, &qword_10001E680);
    sub_100007B4C(v22, v20, &qword_10002C590, &unk_10001E640);
    v49 = v59;
    sub_100007B4C(v48, v59, &qword_10002C858, &qword_10001E680);
    v50 = v60;
    sub_100007B4C(v20, v60, &qword_10002C590, &unk_10001E640);
    v51 = sub_100002394(&qword_10002C860, &qword_10001E688);
    sub_100007B4C(v49, v50 + *(v51 + 48), &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v48, &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v22, &qword_10002C590, &unk_10001E640);
    sub_100007AEC(v49, &qword_10002C858, &qword_10001E680);
    sub_100007AEC(v20, &qword_10002C590, &unk_10001E640);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10000CC60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v67 = a2;
  v2 = sub_100002394(&qword_10002C5B8, &qword_10001E1E0);
  v3 = *(v2 - 8);
  v65 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v66 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v63 = &v52 - v7;
  v62 = sub_10001CF24();
  v69 = *(v62 - 8);
  v8 = *(v69 + 64);
  __chkstk_darwin(v62);
  v60 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v11 = *(v10 - 8);
  v68 = v10 - 8;
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10 - 8);
  v64 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v16 = &v52 - v15;
  v70 = sub_10001CA04();
  v71 = v17;
  v59 = sub_1000034E8();
  v18 = sub_10001CF74();
  v20 = v19;
  v22 = v21;
  v24 = v23;
  KeyPath = swift_getKeyPath();
  v70 = v18;
  v71 = v20;
  v72 = v22 & 1;
  v73 = v24;
  v74 = KeyPath;
  v75 = 1;
  v76 = 0;
  sub_10001CEB4();
  v58 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v26 = sub_100007650();
  v56 = v16;
  v57 = v26;
  sub_10001CFF4();
  sub_100007708(v18, v20, v22 & 1);

  sub_10001CF14();
  v55 = enum case for Font.Leading.tight(_:);
  v27 = v69;
  v54 = *(v69 + 104);
  v28 = v60;
  v29 = v62;
  v54(v60);
  v30 = sub_10001CF34();

  v31 = *(v27 + 8);
  v69 = v27 + 8;
  v53 = v31;
  v31(v28, v29);
  v32 = swift_getKeyPath();
  v33 = &v16[*(v68 + 44)];
  *v33 = v32;
  v33[1] = v30;
  v70 = sub_10001CA04();
  v71 = v34;
  v35 = sub_10001CF74();
  v37 = v36;
  LOBYTE(v30) = v38;
  v40 = v39;
  v41 = swift_getKeyPath();
  v70 = v35;
  v71 = v37;
  v72 = v30 & 1;
  v73 = v40;
  v74 = v41;
  v75 = 2;
  v76 = 0;
  sub_10001CEE4();
  v42 = v63;
  sub_10001CFF4();
  sub_100007708(v35, v37, v30 & 1);

  sub_10001CE74();
  (v54)(v28, v55, v29);
  v43 = sub_10001CF34();

  v53(v28, v29);
  v44 = swift_getKeyPath();
  v45 = (v42 + *(v68 + 44));
  *v45 = v44;
  v45[1] = v43;
  v46 = v64;
  *(v42 + *(v65 + 44)) = 256;
  v47 = v56;
  sub_100007B4C(v56, v46, &qword_10002C4E8, &qword_10001E050);
  v48 = v66;
  sub_100007B4C(v42, v66, &qword_10002C5B8, &qword_10001E1E0);
  v49 = v67;
  sub_100007B4C(v46, v67, &qword_10002C4E8, &qword_10001E050);
  v50 = sub_100002394(&qword_10002C5C0, &qword_10001E1E8);
  sub_100007B4C(v48, v49 + *(v50 + 48), &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v42, &qword_10002C5B8, &qword_10001E1E0);
  sub_100007AEC(v47, &qword_10002C4E8, &qword_10001E050);
  sub_100007AEC(v48, &qword_10002C5B8, &qword_10001E1E0);
  return sub_100007AEC(v46, &qword_10002C4E8, &qword_10001E050);
}

uint64_t sub_10000D18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = sub_10001C994();
  v4 = *(v52 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v52);
  v51 = v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002C868, &qword_10001E690);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  v10 = __chkstk_darwin(v7);
  v12 = v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v43 - v13;
  *v14 = sub_10001CDE4();
  v15 = sub_100002394(&qword_10002C870, &qword_10001E698);
  sub_10000D598(a1, &v14[*(v15 + 44)]);
  v16 = &v14[*(sub_100002394(&qword_10002C878, &qword_10001E6A0) + 36)];
  v17 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
  v18 = enum case for Text.TruncationMode.tail(_:);
  v19 = sub_10001CF64();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  v21 = &v14[*(sub_100002394(&qword_10002C880, &qword_10001E6A8) + 36)];
  *v21 = KeyPath;
  v21[8] = 0;
  *&v14[*(v8 + 44)] = sub_10001D084();
  v22 = sub_10001C954();
  v23 = *(v22 + 16);
  if (v23)
  {
    v44 = v14;
    v45 = v12;
    v46 = a2;
    v53 = &_swiftEmptyArrayStorage;
    sub_10000E79C(0, v23, 0);
    v24 = v53;
    v26 = *(v4 + 16);
    v25 = v4 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v28 = v25;
    v43[1] = v22;
    v29 = v22 + v27;
    v48 = *(v28 + 56);
    v49 = v26;
    v50 = v28;
    v47 = (v28 - 8);
    do
    {
      v30 = v51;
      v31 = v52;
      v49(v51, v29, v52);
      v32 = sub_10001C974();
      v34 = v33;
      v35 = sub_10001C984();
      v37 = v36;
      (*v47)(v30, v31);
      v53 = v24;
      v39 = v24[2];
      v38 = v24[3];
      if (v39 >= v38 >> 1)
      {
        sub_10000E79C((v38 > 1), v39 + 1, 1);
        v24 = v53;
      }

      v24[2] = v39 + 1;
      v40 = &v24[4 * v39];
      v40[4] = v32;
      v40[5] = v34;
      v40[6] = v35;
      v40[7] = v37;
      v29 += v48;
      --v23;
    }

    while (v23);

    v12 = v45;
    a2 = v46;
    v14 = v44;
  }

  else
  {

    v24 = &_swiftEmptyArrayStorage;
  }

  sub_100007B4C(v14, v12, &qword_10002C868, &qword_10001E690);
  sub_100007B4C(v12, a2, &qword_10002C868, &qword_10001E690);
  v41 = a2 + *(sub_100002394(&qword_10002C888, &qword_10001E6B0) + 48);
  *v41 = v24;
  *(v41 + 8) = xmmword_10001E2E0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 0;

  sub_100007AEC(v14, &qword_10002C868, &qword_10001E690);

  return sub_100007AEC(v12, &qword_10002C868, &qword_10001E690);
}

uint64_t sub_10000D598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v72 = a1;
  v76 = a2;
  v2 = sub_100002394(&qword_10002C890, &qword_10001E6B8);
  v3 = *(v2 - 8);
  v74 = v2 - 8;
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v75 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v68 = &v64 - v7;
  v77 = sub_10001CF24();
  v79 = *(v77 - 8);
  v8 = *(v79 + 64);
  __chkstk_darwin(v77);
  v10 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100002394(&qword_10002C898, &qword_10001E6C0);
  v12 = *(v11 - 8);
  v78 = v11 - 8;
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11 - 8);
  v73 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v64 - v16;
  v80 = sub_10001CA04();
  v81 = v18;
  v71 = sub_1000034E8();
  v19 = sub_10001CF74();
  v21 = v20;
  v23 = v22;
  v25 = v24;
  KeyPath = swift_getKeyPath();
  v80 = v19;
  v81 = v21;
  v82 = v23 & 1;
  v83 = v25;
  v84 = KeyPath;
  v85 = 1;
  v86 = 0;
  sub_10001CEB4();
  v70 = sub_100002394(&qword_10002C500, &unk_10001E460);
  v69 = sub_100007650();
  sub_10001CFF4();
  sub_100007708(v19, v21, v23 & 1);

  sub_10001CF14();
  v67 = enum case for Font.Leading.tight(_:);
  v27 = v79;
  v66 = *(v79 + 104);
  v28 = v77;
  v66(v10);
  v29 = sub_10001CF34();

  v30 = *(v27 + 8);
  v79 = v27 + 8;
  v64 = v30;
  v30(v10, v28);
  v31 = swift_getKeyPath();
  v32 = sub_100002394(&qword_10002C4E8, &qword_10001E050);
  v33 = *(v32 + 36);
  v65 = v17;
  v34 = &v17[v33];
  *v34 = v31;
  v34[1] = v29;
  LOBYTE(v31) = sub_10001CE24();
  sub_10001CAC4();
  v35 = &v17[*(v78 + 44)];
  *v35 = v31;
  *(v35 + 1) = v36;
  *(v35 + 2) = v37;
  *(v35 + 3) = v38;
  *(v35 + 4) = v39;
  v35[40] = 0;
  v80 = sub_10001CA04();
  v81 = v40;
  v41 = sub_10001CF74();
  v43 = v42;
  LOBYTE(v31) = v44;
  v46 = v45;
  v47 = swift_getKeyPath();
  v80 = v41;
  v81 = v43;
  v82 = v31 & 1;
  v83 = v46;
  v84 = v47;
  v85 = 2;
  v86 = 0;
  sub_10001CEE4();
  v48 = v68;
  sub_10001CFF4();
  sub_100007708(v41, v43, v31 & 1);

  sub_10001CE74();
  v49 = v77;
  (v66)(v10, v67, v77);
  v50 = sub_10001CF34();

  v64(v10, v49);
  v51 = swift_getKeyPath();
  v52 = (v48 + *(v32 + 36));
  *v52 = v51;
  v52[1] = v50;
  LOBYTE(v31) = sub_10001CE24();
  sub_10001CAC4();
  v53 = v48 + *(v78 + 44);
  *v53 = v31;
  *(v53 + 8) = v54;
  *(v53 + 16) = v55;
  *(v53 + 24) = v56;
  *(v53 + 32) = v57;
  *(v53 + 40) = 0;
  v58 = v73;
  *(v48 + *(v74 + 44)) = 256;
  v59 = v65;
  sub_100007B4C(v65, v58, &qword_10002C898, &qword_10001E6C0);
  v60 = v75;
  sub_100007B4C(v48, v75, &qword_10002C890, &qword_10001E6B8);
  v61 = v76;
  sub_100007B4C(v58, v76, &qword_10002C898, &qword_10001E6C0);
  v62 = sub_100002394(&qword_10002C8A0, &qword_10001E6C8);
  sub_100007B4C(v60, v61 + *(v62 + 48), &qword_10002C890, &qword_10001E6B8);
  sub_100007AEC(v48, &qword_10002C890, &qword_10001E6B8);
  sub_100007AEC(v59, &qword_10002C898, &qword_10001E6C0);
  sub_100007AEC(v60, &qword_10002C890, &qword_10001E6B8);
  return sub_100007AEC(v58, &qword_10002C898, &qword_10001E6C0);
}

void *sub_10000DB28@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    type metadata accessor for WidgetPassImagesProvider();
    result = swift_allocObject();
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(result + 56) = -1;
    result[8] = v3;
    *(result + 1) = xmmword_10001E2F0;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000DBAC()
{
  v1 = *v0;
  sub_10001CA24();
  swift_retain_n();
  sub_100002394(&qword_10002C620, &qword_10001E378);
  sub_10000DD90(&qword_10002C628, &type metadata accessor for EventLiveActivityAttributes);
  sub_1000023DC(&qword_10002C630, &qword_10001E380);
  sub_1000023DC(&qword_10002C638, &qword_10001E388);
  type metadata accessor for EventLiveActivityView();
  sub_10000DD90(&qword_10002C640, type metadata accessor for EventLiveActivityView);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_10001D424();
}

uint64_t sub_10000DD90(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000DDD8()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DEA8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*(sub_100002394(&qword_10002C648, &qword_10001E398) - 8) + 80);
  v4 = *(v1 + 16);

  return sub_10000892C(v4, a1);
}

uint64_t sub_10000DF40()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000DFD4@<X0>(uint64_t a1@<X8>)
{
  v2 = *(*(sub_100002394(&qword_10002C648, &qword_10001E398) - 8) + 80);

  return sub_1000095CC(a1);
}

uint64_t sub_10000E054()
{
  v1 = sub_100002394(&qword_10002C648, &qword_10001E398);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v6 = *(v0 + v5);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10000E114(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_100002394(&qword_10002C648, &qword_10001E398) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

unint64_t sub_10000E1D0()
{
  result = qword_10002C670;
  if (!qword_10002C670)
  {
    sub_1000023DC(&qword_10002C658, &qword_10001E3A8);
    sub_10000E25C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C670);
  }

  return result;
}

unint64_t sub_10000E25C()
{
  result = qword_10002C678;
  if (!qword_10002C678)
  {
    sub_1000023DC(&qword_10002C410, &qword_10001DFB8);
    sub_10000E314();
    sub_10000266C(&qword_10002C690, &qword_10002C438, &qword_10001DFD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C678);
  }

  return result;
}

unint64_t sub_10000E314()
{
  result = qword_10002C680;
  if (!qword_10002C680)
  {
    sub_1000023DC(&qword_10002C408, &qword_10001DFB0);
    sub_10000E3A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C680);
  }

  return result;
}

unint64_t sub_10000E3A0()
{
  result = qword_10002C688;
  if (!qword_10002C688)
  {
    sub_1000023DC(&qword_10002C400, &qword_10001DFA8);
    sub_1000023DC(&qword_10002C418, &unk_10001DFC0);
    sub_1000073A4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C688);
  }

  return result;
}

unint64_t sub_10000E468()
{
  result = qword_10002C698;
  if (!qword_10002C698)
  {
    sub_1000023DC(&qword_10002C660, &unk_10001E3B0);
    sub_10000E4EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C698);
  }

  return result;
}

unint64_t sub_10000E4EC()
{
  result = qword_10002C6A0;
  if (!qword_10002C6A0)
  {
    sub_1000023DC(&qword_10002C6A8, &qword_10001E3C0);
    sub_10000266C(&qword_10002C6B0, &qword_10002C6B8, &qword_10001E3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6A0);
  }

  return result;
}

uint64_t sub_10000E5A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001CC34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E5D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10001CC44();
}

uint64_t sub_10000E608@<X0>(void *a1@<X8>)
{
  result = sub_10001CBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_10000E680(uint64_t a1)
{
  v2 = sub_10001CF64();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001CB84();
}

uint64_t sub_10000E748@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CBF4();
  *a1 = result;
  return result;
}

char *sub_10000E79C(char *a1, int64_t a2, char a3)
{
  result = sub_10000E7BC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10000E7BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100002394(&qword_10002C840, &qword_10001E668);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_10000E8C8(double a1)
{
  if (a1 <= 24.0)
  {
    goto LABEL_6;
  }

  if (a1 <= 49.0)
  {
    PKFloatFloorToPixel();
    goto LABEL_9;
  }

  if (a1 <= 56.0)
  {
    PKFloatRoundToPixel();
    goto LABEL_9;
  }

  if (a1 <= 66.0)
  {
LABEL_6:
    PKFloatCeilToPixel();
LABEL_9:
    v2 = -v3;
    PKFloatFloorToPixel();
    return v2;
  }

  PKFloatRoundToPixel();
  v2 = -v1;
  PKFloatCeilToPixel();
  return v2;
}

uint64_t sub_10000E97C@<X0>(uint64_t a1@<X8>)
{
  result = sub_10001CC34();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_10000E9B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_10001CC44();
}

unint64_t sub_10000E9E8()
{
  result = qword_10002C6E0;
  if (!qword_10002C6E0)
  {
    sub_1000023DC(&qword_10002C6D8, &qword_10001E458);
    sub_100007650();
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C6E0);
  }

  return result;
}

uint64_t sub_10000EAA0@<X0>(void *a1@<X8>)
{
  result = sub_10001CBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_10000EAF4@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10000A6A8(a1);
}

unint64_t sub_10000EAFC()
{
  result = qword_10002C728;
  if (!qword_10002C728)
  {
    sub_1000023DC(&qword_10002C720, &qword_10001E4D0);
    sub_10000266C(&qword_10002C730, &qword_10002C738, &qword_10001E4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C728);
  }

  return result;
}

unint64_t sub_10000EBBC()
{
  result = qword_10002C750;
  if (!qword_10002C750)
  {
    sub_1000023DC(&qword_10002C748, &qword_10001E4E8);
    sub_10000EC48();
    sub_10000EE44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C750);
  }

  return result;
}

unint64_t sub_10000EC48()
{
  result = qword_10002C758;
  if (!qword_10002C758)
  {
    sub_1000023DC(&qword_10002C760, &qword_10001E4F0);
    sub_10000ECD4();
    sub_10000ED8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C758);
  }

  return result;
}

unint64_t sub_10000ECD4()
{
  result = qword_10002C768;
  if (!qword_10002C768)
  {
    sub_1000023DC(&qword_10002C770, &qword_10001E4F8);
    sub_10000266C(&qword_10002C778, &qword_10002C780, &qword_10001E500);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C768);
  }

  return result;
}

unint64_t sub_10000ED8C()
{
  result = qword_10002C788;
  if (!qword_10002C788)
  {
    sub_1000023DC(&qword_10002C790, &qword_10001E508);
    sub_10000266C(&qword_10002C498, &qword_10002C460, &qword_10001E510);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C788);
  }

  return result;
}

unint64_t sub_10000EE44()
{
  result = qword_10002C798;
  if (!qword_10002C798)
  {
    sub_1000023DC(&qword_10002C7A0, &qword_10001E518);
    sub_10000EED0();
    sub_10000EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C798);
  }

  return result;
}

unint64_t sub_10000EED0()
{
  result = qword_10002C7A8;
  if (!qword_10002C7A8)
  {
    sub_1000023DC(&qword_10002C7B0, &qword_10001E520);
    sub_10000266C(&qword_10002C7B8, &qword_10002C7C0, &qword_10001E528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7A8);
  }

  return result;
}

unint64_t sub_10000EF88()
{
  result = qword_10002C7C8;
  if (!qword_10002C7C8)
  {
    sub_1000023DC(&qword_10002C7D0, &qword_10001E530);
    sub_10000266C(&qword_10002C7D8, &qword_10002C7E0, &qword_10001E538);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C7C8);
  }

  return result;
}

uint64_t sub_10000F048@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001AF1C(a1);
}

double sub_10000F050()
{
  v0 = *(sub_10001C954() + 16);

  if (!v0)
  {
    sub_10001C9A4();
    if (v2)
    {

      v1 = 0x405E000000000000;
    }

    else
    {
      v1 = 0x405C800000000000;
    }

    goto LABEL_10;
  }

  if (sub_10001C9E4())
  {
    v1 = 0x4060000000000000;
LABEL_10:
    v4 = *&v1;
    goto LABEL_11;
  }

  v3 = *(sub_10001C954() + 16);

  if (v3 >= 3)
  {
    v4 = 148.0;
  }

  else
  {
    v4 = 128.0;
  }

LABEL_11:
  v5 = PKUIGetMinScreenWidthType();
  v6 = sub_10000F1A8(v5) > 402.0;
  v7 = 408.0;
  if (!v6)
  {
    v7 = 371.0;
  }

  return v7 - v4;
}

uint64_t sub_10000F150@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10001CBF4();
  *a1 = result;
  return result;
}

double sub_10000F1A8(unint64_t a1)
{
  result = 0.0;
  if (a1 <= 0xE)
  {
    return dbl_10001E6E0[a1];
  }

  return result;
}

uint64_t sub_10000F1C4(uint64_t a1)
{
  v2 = type metadata accessor for EventLiveActivityView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_10000F294(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = sub_10001D304();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v3 = sub_10001C934();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100002394(&qword_10002C8C8, &qword_10001E7C0);
  v35 = *(v8 - 8);
  v9 = *(v35 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v34 = &v29 - v13;
  v14 = sub_100002394(&qword_10002C8D0, &qword_10001E7C8);
  v30 = *(v14 - 8);
  v31 = v14;
  v15 = *(v30 + 64);
  __chkstk_darwin(v14);
  v36 = &v29 - v16;
  v33 = qword_10002C8B8;
  (*(v4 + 104))(v7, enum case for LocalizedStringTable.peerPayment(_:), v3);

  v17 = PKPassKitBundle();
  if (v17)
  {
    v18 = v17;
    sub_10001C924();

    (*(v4 + 8))(v7, v3);
    sub_10001D2F4();
    sub_100002394(&qword_10002C8D8, &unk_10001E7D0);
    sub_100002558();
    sub_10000266C(&qword_10002C8E0, &qword_10002C8D8, &unk_10001E7D0);
    sub_10001D314();
    if (qword_10002C240 != -1)
    {
      swift_once();
    }

    v19 = v34;
    sub_10001D324();
    v20 = *(v35 + 8);
    v20(v12, v8);
    v21 = sub_10000266C(&qword_10002C8E8, &qword_10002C8C8, &qword_10001E7C0);
    v22 = v36;
    sub_10001CD44();
    v20(v19, v8);
    v23 = sub_10001D4F4();
    v24 = PKLocalizedPeerPaymentString(v23);

    if (v24)
    {
      v25 = sub_10001D524();
      v27 = v26;

      v39 = v25;
      v40 = v27;
      v37 = v8;
      v38 = v21;
      swift_getOpaqueTypeConformance2();
      sub_1000034E8();
      v28 = v31;
      sub_10001CD14();

      (*(v30 + 8))(v22, v28);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

__n128 sub_10000F7A4@<Q0>(uint64_t a1@<X8>)
{
  v2 = sub_10001CC94();
  sub_10000F808(&v6);
  v3 = v7;
  result = v6;
  v5 = v8;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = result;
  *(a1 + 40) = v3;
  *(a1 + 48) = v5;
  return result;
}

id sub_10000F808@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10001C934();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for LocalizedStringTable.peerPayment(_:), v2);
  result = PKPassKitBundle();
  if (result)
  {
    v8 = result;
    v9 = sub_10001C924();
    v11 = v10;

    (*(v3 + 8))(v6, v2);
    v19[0] = v9;
    v19[1] = v11;
    sub_1000034E8();
    v12 = sub_10001CF74();
    v14 = v13;
    LOBYTE(v8) = v15;
    v17 = v16;
    v18 = sub_10001D0C4();
    *a1 = v12;
    *(a1 + 8) = v14;
    LOBYTE(v8) = v8 & 1;
    *(a1 + 16) = v8;
    *(a1 + 24) = v17;
    *(a1 + 32) = v18;
    sub_10000F9DC(v12, v14, v8);

    sub_100007708(v12, v14, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000F9DC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10000F9EC()
{
  sub_1000023DC(&qword_10002C8D0, &qword_10001E7C8);
  sub_1000023DC(&qword_10002C8C8, &qword_10001E7C0);
  sub_10000266C(&qword_10002C8E8, &qword_10002C8C8, &qword_10001E7C0);
  swift_getOpaqueTypeConformance2();
  sub_1000034E8();
  return swift_getOpaqueTypeConformance2();
}

id sub_10000FAD4()
{
  v0 = objc_opt_self();
  result = [v0 sharedInstance];
  if (result)
  {
    v2 = result;
    type metadata accessor for WidgetPassImagesProvider();
    v3 = swift_allocObject();
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    *(v3 + 32) = 0;
    *(v3 + 56) = -1;
    *(v3 + 64) = v2;
    *(v3 + 16) = xmmword_10001E2F0;
    result = [v0 sharedInstance];
    if (result)
    {
      v4 = result;
      v5 = swift_allocObject();
      *(v5 + 40) = 0;
      *(v5 + 48) = 0;
      *(v5 + 32) = 0;
      *(v5 + 56) = -1;
      *(v5 + 64) = v4;
      *(v5 + 16) = xmmword_10001E7E0;

      sub_100002394(&qword_10002C8F8, &qword_10001E858);
      sub_10001CAE4();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  sub_10000FC54();
  sub_10001CAF4();
  return 0;
}

unint64_t sub_10000FC54()
{
  result = qword_10002C8F0;
  if (!qword_10002C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C8F0);
  }

  return result;
}

unint64_t sub_10000FCD8()
{
  result = qword_10002C900;
  if (!qword_10002C900)
  {
    sub_1000023DC(&qword_10002C908, &unk_10001E860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C900);
  }

  return result;
}

BOOL sub_10000FD8C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_10000FDBC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10000FDE8@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_10000FED4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

__n128 sub_10000FF04(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10000FF10(uint64_t a1, int a2)
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

uint64_t sub_10000FF58(uint64_t result, int a2, int a3)
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

__n128 sub_10000FFA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000FFBC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100010004(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100010078@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100013E60(a1);

  *a2 = v3;
  return result;
}

Swift::Int sub_1000100CC()
{
  v1 = *v0;
  sub_10001D5F4();
  sub_10001D604(v1);
  return sub_10001D614();
}

Swift::Int sub_100010140()
{
  v1 = *v0;
  sub_10001D5F4();
  sub_10001D604(v1);
  return sub_10001D614();
}

uint64_t sub_100010184@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_10001CC64();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002394(&qword_10002C960, &qword_10001E9B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v17 - v11);
  sub_100007B4C(v2, &v17 - v11, &qword_10002C960, &qword_10001E9B0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_10001CB44();
    return (*(*(v13 - 8) + 32))(a1, v12, v13);
  }

  else
  {
    v15 = *v12;
    sub_10001D574();
    v16 = sub_10001CDD4();
    sub_10001CAB4();

    sub_10001CC54();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

void sub_100010384(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v236 = a1;
  v235 = a2;
  v215 = sub_100002394(&qword_10002CA90, &qword_10001ECC0);
  v214 = *(v215 - 8);
  v3 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v185 - v4;
  v233 = sub_100002394(&qword_10002CA98, &qword_10001ECC8);
  v5 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v234 = &v185 - v6;
  v205 = sub_100002394(&qword_10002CAA0, &qword_10001ECD0);
  v204 = *(v205 - 8);
  v7 = *(v204 + 64);
  __chkstk_darwin(v205);
  v203 = &v185 - v8;
  v209 = sub_100002394(&qword_10002CAA8, &qword_10001ECD8);
  v207 = *(v209 - 8);
  v9 = *(v207 + 64);
  __chkstk_darwin(v209);
  v206 = &v185 - v10;
  v202 = sub_100002394(&qword_10002CAB0, &qword_10001ECE0);
  v11 = *(*(v202 - 8) + 64);
  __chkstk_darwin(v202);
  v208 = &v185 - v12;
  v198 = sub_100002394(&qword_10002CAB8, &qword_10001ECE8);
  v13 = *(*(v198 - 8) + 64);
  __chkstk_darwin(v198);
  v200 = &v185 - v14;
  v220 = sub_100002394(&qword_10002CAC0, &qword_10001ECF0);
  v15 = *(*(v220 - 8) + 64);
  v16 = __chkstk_darwin(v220);
  v199 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v201 = &v185 - v18;
  v218 = sub_100002394(&qword_10002CAC8, &unk_10001ECF8);
  v19 = *(*(v218 - 8) + 64);
  __chkstk_darwin(v218);
  v219 = &v185 - v20;
  v186 = sub_100002394(&qword_10002C548, &unk_10001E130);
  v21 = *(*(v186 - 8) + 64);
  __chkstk_darwin(v186);
  v188 = &v185 - v22;
  v195 = sub_100002394(&qword_10002CAD0, &qword_10001ED08);
  v23 = *(*(v195 - 8) + 64);
  __chkstk_darwin(v195);
  v190 = &v185 - v24;
  v197 = sub_100002394(&qword_10002CAD8, &qword_10001ED10);
  v196 = *(v197 - 8);
  v25 = *(v196 + 64);
  __chkstk_darwin(v197);
  v192 = &v185 - v26;
  v193 = sub_100002394(&qword_10002CAE0, &qword_10001ED18);
  v191 = *(v193 - 8);
  v27 = *(v191 + 64);
  __chkstk_darwin(v193);
  v189 = &v185 - v28;
  v216 = sub_100002394(&qword_10002CAE8, &qword_10001ED20);
  v29 = *(*(v216 - 8) + 64);
  v30 = __chkstk_darwin(v216);
  v187 = &v185 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v194 = &v185 - v32;
  v230 = sub_100002394(&qword_10002CAF0, &qword_10001ED28);
  v33 = *(*(v230 - 8) + 64);
  __chkstk_darwin(v230);
  v217 = &v185 - v34;
  v240 = sub_10001CB44();
  v241 = *(v240 - 8);
  v35 = *(v241 + 64);
  v36 = __chkstk_darwin(v240);
  v239 = &v185 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v238 = &v185 - v38;
  v39 = sub_100002394(&qword_10002CAF8, &unk_10001ED30);
  v40 = *(*(v39 - 8) + 64);
  v41 = __chkstk_darwin(v39 - 8);
  v232 = &v185 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v231 = &v185 - v43;
  v44 = sub_10001CF24();
  v45 = *(v44 - 8);
  v46 = v45[8];
  __chkstk_darwin(v44);
  v48 = &v185 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_100002394(&qword_10002C848, &qword_10001E670);
  v246 = *(v243 - 8);
  v49 = *(v246 + 64);
  v50 = __chkstk_darwin(v243);
  v211 = &v185 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v50);
  v237 = &v185 - v52;
  v244 = sub_100002394(&qword_10002CB00, &qword_10001ED40);
  v53 = *(*(v244 - 8) + 64);
  v54 = __chkstk_darwin(v244);
  v229 = &v185 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __chkstk_darwin(v54);
  v210 = &v185 - v57;
  v58 = __chkstk_darwin(v56);
  v212 = &v185 - v59;
  __chkstk_darwin(v58);
  v245 = &v185 - v60;
  v242 = type metadata accessor for SeatingAttributesTableColumn();
  v61 = (a1 + v242[5]);
  v62 = v61[1];
  *&v259[0] = *v61;
  *(&v259[0] + 1) = v62;
  v63 = sub_1000034E8();

  v221 = v63;
  v64 = sub_10001CF74();
  v66 = v65;
  v68 = v67;
  v70 = v69;
  KeyPath = swift_getKeyPath();
  sub_10001CF54();
  v72 = v45[13];
  v222 = enum case for Font.Leading.tight(_:);
  v224 = v45 + 13;
  v223 = v72;
  v72(v48);
  v73 = sub_10001CF34();

  v74 = v45[1];
  v226 = v48;
  v228 = v44;
  v227 = v45 + 1;
  v225 = v74;
  v74(v48, v44);
  v75 = swift_getKeyPath();
  LOBYTE(v247) = v68 & 1;
  v258 = 0;
  *&v253 = v64;
  *(&v253 + 1) = v66;
  LOBYTE(v254) = v68 & 1;
  *(&v254 + 1) = v70;
  *&v255 = KeyPath;
  *(&v255 + 1) = 1;
  LOBYTE(v256) = 0;
  *(&v256 + 1) = v75;
  v257 = v73;
  sub_10001CED4();
  v76 = sub_100002394(&qword_10002C6D8, &qword_10001E458);
  v77 = sub_10000E9E8();
  v78 = v237;
  sub_10001CFF4();
  v259[2] = v255;
  v259[3] = v256;
  v260 = v257;
  v259[0] = v253;
  v259[1] = v254;
  v79 = v236;
  sub_100007AEC(v259, &qword_10002C6D8, &qword_10001E458);
  *&v253 = v76;
  *(&v253 + 1) = v77;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v81 = v245;
  v82 = v243;
  sub_10001D004();
  v83 = *(v246 + 8);
  v246 += 8;
  v237 = v83;
  (v83)(v78, v82);
  *(v81 + *(v244 + 36)) = sub_10001D054();
  v84 = v238;
  sub_100010184(v238);
  sub_10001365C(&qword_10002CB08);
  v85 = v239;
  v86 = v240;
  sub_10001D5A4();
  sub_10001365C(&qword_10002CB10);
  v87 = v86;
  LOBYTE(v66) = sub_10001D4E4();
  v88 = *(v241 + 8);
  v88(v85, v87);
  v88(v84, v87);
  if (v66)
  {
    v89 = v242;
    v90 = (v79 + v242[6]);
    v92 = *v90;
    v91 = v90[1];
    v93 = sub_10001D4F4();
    v94 = [objc_opt_self() colorFromString:v93];

    if (!v94)
    {
      *&v253 = v92;
      *(&v253 + 1) = v91;

      v111 = sub_10001CF74();
      v113 = v112;
      v115 = v114;
      v117 = v116;
      v118 = swift_getKeyPath();
      v119 = v188;
      v120 = &v188[*(v186 + 36)];
      v121 = *(sub_100002394(&qword_10002C550, &qword_10001E5C0) + 28);
      v122 = enum case for Text.TruncationMode.tail(_:);
      v123 = sub_10001CF64();
      (*(*(v123 - 8) + 104))(v120 + v121, v122, v123);
      *v120 = swift_getKeyPath();
      *v119 = v111;
      *(v119 + 8) = v113;
      *(v119 + 16) = v115 & 1;
      *(v119 + 24) = v117;
      *(v119 + 32) = v118;
      *(v119 + 40) = 1;
      *(v119 + 48) = 0;
      if (*(v79 + v242[7]))
      {
        v124 = v231;
        v125 = v217;
        if (*(v79 + v242[7]) == 1)
        {
          sub_10001CE94();
        }

        else
        {
          sub_10001CE64();
        }
      }

      else
      {
        sub_10001CE84();
        v124 = v231;
        v125 = v217;
      }

      v166 = v226;
      v167 = v228;
      v223(v226, v222, v228);
      v168 = sub_10001CF34();

      v225(v166, v167);
      v169 = swift_getKeyPath();
      v170 = v190;
      sub_1000078A8(v119, v190, &qword_10002C548, &unk_10001E130);
      v171 = v195;
      v172 = (v170 + *(v195 + 36));
      *v172 = v169;
      v172[1] = v168;
      sub_10001CED4();
      v173 = sub_100013B98();
      v174 = v192;
      sub_10001CFF4();
      sub_100007AEC(v170, &qword_10002CAD0, &qword_10001ED08);
      *&v253 = v171;
      *(&v253 + 1) = v173;
      swift_getOpaqueTypeConformance2();
      v175 = v189;
      v176 = v197;
      sub_10001D004();
      (*(v196 + 8))(v174, v176);
      v177 = sub_10001D084();
      v178 = v187;
      (*(v191 + 32))(v187, v175, v193);
      *(v178 + *(v216 + 36)) = v177;
      v179 = v194;
      sub_1000078A8(v178, v194, &qword_10002CAE8, &qword_10001ED20);
      sub_100007B4C(v179, v219, &qword_10002CAE8, &qword_10001ED20);
      swift_storeEnumTagMultiPayload();
      sub_10001372C();
      sub_100013A60();
      sub_10001CD84();
      sub_100007AEC(v179, &qword_10002CAE8, &qword_10001ED20);
      goto LABEL_23;
    }

    v95 = sub_10001D0A4();
    v96 = *(v79 + v89[7]);
    if (v96)
    {
      if (v96 == 1)
      {
        v97 = sub_10001CF04();
      }

      else
      {
        v97 = sub_10001CE94();
      }
    }

    else
    {
      v97 = sub_10001CE74();
    }

    v139 = v97;
    v140 = swift_getKeyPath();
    *&v253 = v95;
    *(&v253 + 1) = v140;
    *&v254 = v139;
    sub_10001CED4();
    v141 = sub_100002394(&qword_10002CB38, &qword_10001EDA8);
    v142 = sub_1000139A8();
    v143 = v203;
    sub_10001CFF4();

    *&v253 = v141;
    *(&v253 + 1) = v142;
    swift_getOpaqueTypeConformance2();
    v144 = v206;
    v145 = v205;
    sub_10001D004();
    (*(v204 + 8))(v143, v145);
    v146 = v208;
    v147 = &v208[*(v202 + 36)];
    v148 = *(sub_100002394(&qword_10002CB50, &qword_10001EDB0) + 28);
    sub_10001CCE4();
    v149 = sub_10001CCF4();
    (*(*(v149 - 8) + 56))(v147 + v148, 0, 1, v149);
    *v147 = swift_getKeyPath();
    (*(v207 + 32))(v146, v144, v209);
    if ([v94 CGColor])
    {
      v150 = sub_10001D044();
      v151 = v146;
      v152 = v200;
      sub_1000078A8(v151, v200, &qword_10002CAB0, &qword_10001ECE0);
      *(v152 + *(v198 + 36)) = v150;
      LOBYTE(v150) = sub_10001CE14();
      v153 = qword_10001EE48[v96];
      sub_10001CAC4();
      v155 = v154;
      v157 = v156;
      v159 = v158;
      v161 = v160;
      v162 = v152;
      v163 = v199;
      sub_1000078A8(v162, v199, &qword_10002CAB8, &qword_10001ECE8);
      v164 = v163 + *(v220 + 36);
      *v164 = v150;
      *(v164 + 8) = v155;
      *(v164 + 16) = v157;
      *(v164 + 24) = v159;
      *(v164 + 32) = v161;
      *(v164 + 40) = 0;
      v165 = v201;
      sub_1000078A8(v163, v201, &qword_10002CAC0, &qword_10001ECF0);
      sub_100007B4C(v165, v219, &qword_10002CAC0, &qword_10001ECF0);
      swift_storeEnumTagMultiPayload();
      sub_10001372C();
      sub_100013A60();
      v125 = v217;
      sub_10001CD84();

      sub_100007AEC(v165, &qword_10002CAC0, &qword_10001ECF0);
      v124 = v231;
LABEL_23:
      v135 = &qword_10002CAF0;
      v136 = &qword_10001ED28;
      sub_100007B4C(v125, v234, &qword_10002CAF0, &qword_10001ED28);
      swift_storeEnumTagMultiPayload();
      sub_1000136A0();
      sub_100013C50();
      sub_10001CD84();
      v138 = v125;
LABEL_24:
      sub_100007AEC(v138, v135, v136);
      v180 = v245;
      v181 = v229;
      sub_100007B4C(v245, v229, &qword_10002CB00, &qword_10001ED40);
      v182 = v232;
      sub_100007B4C(v124, v232, &qword_10002CAF8, &unk_10001ED30);
      v183 = v235;
      sub_100007B4C(v181, v235, &qword_10002CB00, &qword_10001ED40);
      v184 = sub_100002394(&qword_10002CB80, &qword_10001EDC8);
      sub_100007B4C(v182, v183 + *(v184 + 48), &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v124, &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v180, &qword_10002CB00, &qword_10001ED40);
      sub_100007AEC(v182, &qword_10002CAF8, &unk_10001ED30);
      sub_100007AEC(v181, &qword_10002CB00, &qword_10001ED40);
      return;
    }
  }

  else
  {
    v241 = OpaqueTypeConformance2;
    v98 = v242;
    v99 = sub_10001D4F4();
    v100 = PKLocalizedTicketingString(v99);

    if (v100)
    {
      v101 = sub_10001D524();
      v103 = v102;

      *&v253 = v101;
      *(&v253 + 1) = v103;
      v240 = sub_10001CF74();
      v105 = v104;
      v107 = v106;
      v109 = v108;
      v110 = swift_getKeyPath();
      if (*(v79 + v98[7]))
      {
        if (*(v79 + v98[7]) == 1)
        {
          sub_10001CE94();
        }

        else
        {
          sub_10001CE64();
        }
      }

      else
      {
        sub_10001CE84();
      }

      v126 = v226;
      v127 = v228;
      v223(v226, v222, v228);
      v128 = sub_10001CF34();

      v225(v126, v127);
      v129 = swift_getKeyPath();
      v258 = v107 & 1;
      v252 = 0;
      *&v247 = v240;
      *(&v247 + 1) = v105;
      LOBYTE(v248) = v107 & 1;
      *(&v248 + 1) = v109;
      *&v249 = v110;
      *(&v249 + 1) = 1;
      LOBYTE(v250) = 0;
      *(&v250 + 1) = v129;
      v251 = v128;
      sub_10001CED4();
      v130 = v211;
      sub_10001CFF4();
      v255 = v249;
      v256 = v250;
      v257 = v251;
      v254 = v248;
      v253 = v247;
      sub_100007AEC(&v253, &qword_10002C6D8, &qword_10001E458);
      v131 = v213;
      v132 = v243;
      sub_10001D004();
      (v237)(v130, v132);
      v133 = sub_10001D084();
      v134 = v210;
      (*(v214 + 32))(v210, v131, v215);
      *(v134 + *(v244 + 36)) = v133;
      v135 = &qword_10002CB00;
      v136 = &qword_10001ED40;
      v137 = v212;
      sub_1000078A8(v134, v212, &qword_10002CB00, &qword_10001ED40);
      sub_100007B4C(v137, v234, &qword_10002CB00, &qword_10001ED40);
      swift_storeEnumTagMultiPayload();
      sub_1000136A0();
      sub_100013C50();
      v124 = v231;
      sub_10001CD84();
      v138 = v137;
      goto LABEL_24;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100011D4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_100002394(&qword_10002CA50, &qword_10001EC80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  *v6 = sub_10001CCB4();
  *(v6 + 1) = 0xC000000000000000;
  v6[16] = 0;
  v7 = sub_100002394(&qword_10002CA58, &qword_10001EC88);
  sub_100010384(v1, &v6[*(v7 + 44)]);
  *a1 = sub_10001D134();
  a1[1] = v8;
  v9 = sub_100002394(&qword_10002CA60, &qword_10001EC90);
  sub_100011E48(v6, a1 + *(v9 + 44));
  return sub_100007AEC(v6, &qword_10002CA50, &qword_10001EC80);
}

void sub_100011E48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a1;
  v50 = a2;
  v2 = sub_100002394(&qword_10002CA50, &qword_10001EC80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v49 = &v42 - v4;
  v5 = sub_100002394(&qword_10002CA68, &qword_10001EC98);
  v46 = *(v5 - 8);
  v47 = v5;
  v6 = *(v46 + 64);
  __chkstk_darwin(v5);
  v8 = &v42 - v7;
  v43 = sub_100002394(&qword_10002CA70, &qword_10001ECA0);
  v9 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43);
  v11 = &v42 - v10;
  v45 = sub_100002394(&qword_10002CA78, &qword_10001ECA8);
  v12 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v14 = &v42 - v13;
  v42 = sub_100002394(&qword_10002CA80, &qword_10001ECB0);
  v15 = *(*(v42 - 8) + 64);
  v16 = __chkstk_darwin(v42);
  v44 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v42 - v19;
  __chkstk_darwin(v18);
  v22 = &v42 - v21;
  v23 = sub_10001D4F4();
  v24 = PKLocalizedTicketingString(v23);

  if (v24)
  {
    v25 = sub_10001D524();
    v27 = v26;

    *&v51 = v25;
    *(&v51 + 1) = v27;
    sub_1000034E8();
    v28 = sub_10001CF74();
    v30 = v29;
    *&v51 = v28;
    *(&v51 + 1) = v29;
    v32 = v31 & 1;
    LOBYTE(v52) = v31 & 1;
    *(&v52 + 1) = v33;
    sub_10001D034();
    sub_100007708(v28, v30, v32);

    sub_10001D134();
    sub_10001CB64();
    (*(v46 + 32))(v11, v8, v47);
    v34 = &v11[*(v43 + 36)];
    v35 = v56;
    *(v34 + 4) = v55;
    *(v34 + 5) = v35;
    *(v34 + 6) = v57;
    v36 = v52;
    *v34 = v51;
    *(v34 + 1) = v36;
    v37 = v54;
    *(v34 + 2) = v53;
    *(v34 + 3) = v37;
    sub_1000078A8(v11, v14, &qword_10002CA70, &qword_10001ECA0);
    *&v14[*(v45 + 36)] = 0;
    sub_1000078A8(v14, v20, &qword_10002CA78, &qword_10001ECA8);
    *&v20[*(v42 + 36)] = 0;
    sub_1000078A8(v20, v22, &qword_10002CA80, &qword_10001ECB0);
    v38 = v44;
    sub_100007B4C(v22, v44, &qword_10002CA80, &qword_10001ECB0);
    v39 = v49;
    sub_100007B4C(v48, v49, &qword_10002CA50, &qword_10001EC80);
    v40 = v50;
    sub_100007B4C(v38, v50, &qword_10002CA80, &qword_10001ECB0);
    v41 = sub_100002394(&qword_10002CA88, &qword_10001ECB8);
    sub_100007B4C(v39, v40 + *(v41 + 48), &qword_10002CA50, &qword_10001EC80);
    sub_100007AEC(v22, &qword_10002CA80, &qword_10001ECB0);
    sub_100007AEC(v39, &qword_10002CA50, &qword_10001EC80);
    sub_100007AEC(v38, &qword_10002CA80, &qword_10001ECB0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_10001233C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v3 = sub_100002394(&qword_10002C918, &qword_10001E930);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v51 - v6;
  v8 = sub_100002394(&qword_10002C920, &qword_10001E938);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v58 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v57 = &v51 - v13;
  v14 = __chkstk_darwin(v12);
  v56 = &v51 - v15;
  v16 = __chkstk_darwin(v14);
  v60 = &v51 - v17;
  v18 = __chkstk_darwin(v16);
  v62 = &v51 - v19;
  __chkstk_darwin(v18);
  v21 = &v51 - v20;
  v22 = *(a1 + 8);
  v61 = v3;
  v55 = &v51 - v20;
  if ((v22 & 4) != 0)
  {
    v24 = sub_10001CC74();
    v25 = *(a1 + 32);
    *v7 = v24;
    *(v7 + 1) = v25;
    v7[16] = 0;
    v54 = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v26 = *(*a1 + 16);
    v63 = 0;
    v64 = v26;
    KeyPath = swift_getKeyPath();
    v27 = swift_allocObject();
    v28 = *(a1 + 16);
    *(v27 + 16) = *a1;
    *(v27 + 32) = v28;
    *(v27 + 48) = *(a1 + 32);
    *(v27 + 56) = 2;

    v52 = sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978);
    v3 = v61;
    sub_10001D114();
    sub_1000078A8(v7, v21, &qword_10002C918, &qword_10001E930);
    v23 = *(v4 + 56);
    v23(v21, 0, 1, v3);
  }

  else
  {
    v23 = *(v4 + 56);
    v23(&v51 - v20, 1, 1, v3);
  }

  v29 = 1;
  if ((v22 & 2) != 0)
  {
    v30 = sub_10001CC74();
    v31 = *(a1 + 32);
    *v7 = v30;
    *(v7 + 1) = v31;
    v7[16] = 0;
    KeyPath = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v32 = *(*a1 + 16);
    v63 = 0;
    v64 = v32;
    v33 = swift_getKeyPath();
    v54 = v4;
    v52 = v33;
    v34 = swift_allocObject();
    v35 = *(a1 + 16);
    *(v34 + 16) = *a1;
    *(v34 + 32) = v35;
    *(v34 + 48) = *(a1 + 32);
    *(v34 + 56) = 1;

    sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978);
    v3 = v61;
    sub_10001D114();
    sub_1000078A8(v7, v62, &qword_10002C918, &qword_10001E930);
    v29 = 0;
  }

  v36 = 1;
  v23(v62, v29, 1, v3);
  if (v22)
  {
    v37 = sub_10001CC74();
    v38 = *(a1 + 32);
    *v7 = v37;
    *(v7 + 1) = v38;
    v7[16] = 0;
    v54 = *(sub_100002394(&qword_10002C930, &unk_10001E948) + 44);
    v39 = *(*a1 + 16);
    v63 = 0;
    v64 = v39;
    swift_getKeyPath();
    v40 = swift_allocObject();
    v41 = *(a1 + 16);
    *(v40 + 16) = *a1;
    *(v40 + 32) = v41;
    *(v40 + 48) = *(a1 + 32);
    *(v40 + 56) = 0;

    sub_100002394(&qword_10002C938, &qword_10001E970);
    sub_100002394(&qword_10002C940, &qword_10001E978);
    sub_100012D48();
    sub_10000266C(&qword_10002C958, &qword_10002C940, &qword_10001E978);
    v3 = v61;
    sub_10001D114();
    sub_1000078A8(v7, v60, &qword_10002C918, &qword_10001E930);
    v36 = 0;
  }

  v42 = v60;
  v23(v60, v36, 1, v3);
  v44 = v55;
  v43 = v56;
  sub_100007B4C(v55, v56, &qword_10002C920, &qword_10001E938);
  v45 = v62;
  v46 = v57;
  sub_100007B4C(v62, v57, &qword_10002C920, &qword_10001E938);
  v47 = v58;
  sub_100007B4C(v42, v58, &qword_10002C920, &qword_10001E938);
  v48 = v59;
  sub_100007B4C(v43, v59, &qword_10002C920, &qword_10001E938);
  v49 = sub_100002394(&qword_10002C928, &qword_10001E940);
  sub_100007B4C(v46, v48 + *(v49 + 48), &qword_10002C920, &qword_10001E938);
  sub_100007B4C(v47, v48 + *(v49 + 64), &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v42, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v45, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v44, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v47, &qword_10002C920, &qword_10001E938);
  sub_100007AEC(v46, &qword_10002C920, &qword_10001E938);
  return sub_100007AEC(v43, &qword_10002C920, &qword_10001E938);
}

uint64_t sub_100012AC8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SeatingAttributesTableColumn();
  v9 = *(*(v8 - 1) + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = (&v33 - v14);
  v16 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v17 = *(*a2 + 16);
  if (v16 >= v17)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v18 = (*a2 + 32 * v16);
  v36 = a4;
  v19 = v18[5];
  v34 = v18[4];
  v35 = v19;
  v20 = v18[6];
  v21 = v18[7];
  v22 = a3;
  v23 = sub_10001D534();
  v25 = v24;
  *v15 = swift_getKeyPath();
  sub_100002394(&qword_10002C960, &qword_10001E9B0);
  swift_storeEnumTagMultiPayload();
  v26 = (v15 + v8[5]);
  *v26 = v34;
  v26[1] = v19;
  v27 = (v15 + v8[6]);
  *v27 = v23;
  v27[1] = v25;
  *(v15 + v8[7]) = v22;
  v28 = *(a2 + 16);
  v29 = *(a2 + 24) & 1 | (v16 >= v17 - 1);
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = *(a2 + 16);
  }

  sub_100012F64(v15, v12);
  v31 = v36;
  sub_100012F64(v12, v36);
  v32 = v31 + *(sub_100002394(&qword_10002C968, &qword_10001E9B8) + 48);
  *v32 = v30;
  *(v32 + 8) = 0;
  *(v32 + 9) = v29;

  sub_100012FC8(v15);
  return sub_100012FC8(v12);
}

uint64_t sub_100012CA0@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  v7 = *(v1 + 32);
  *a1 = sub_10001CDE4();
  v4 = sub_100002394(&qword_10002C910, &qword_10001E928);
  return sub_10001233C(v6, &a1[*(v4 + 44)]);
}

uint64_t sub_100012D04()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 57, 7);
}

unint64_t sub_100012D48()
{
  result = qword_10002C948;
  if (!qword_10002C948)
  {
    sub_1000023DC(&qword_10002C938, &qword_10001E970);
    sub_100012DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C948);
  }

  return result;
}

unint64_t sub_100012DD4()
{
  result = qword_10002C950;
  if (!qword_10002C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002C950);
  }

  return result;
}

uint64_t type metadata accessor for SeatingAttributesTableColumn()
{
  result = qword_10002C9D0;
  if (!qword_10002C9D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100012E98(uint64_t a1)
{
  v2 = sub_10001CB44();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10001CBA4();
}

uint64_t sub_100012F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SeatingAttributesTableColumn();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100012FC8(uint64_t a1)
{
  v2 = type metadata accessor for SeatingAttributesTableColumn();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100013038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002394(&qword_10002C970, &unk_10001E9C0);
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

uint64_t sub_100013118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002394(&qword_10002C970, &unk_10001E9C0);
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

void sub_1000131E0()
{
  sub_100013260();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_100013260()
{
  if (!qword_10002C9E0)
  {
    sub_10001CB44();
    v0 = sub_10001CAD4();
    if (!v1)
    {
      atomic_store(v0, &qword_10002C9E0);
    }
  }
}

uint64_t getEnumTagSinglePayload for SeatingAttributesTableSize(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SeatingAttributesTableSize(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10001347C()
{
  result = qword_10002CA28;
  if (!qword_10002CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA28);
  }

  return result;
}

unint64_t sub_1000134D4()
{
  result = qword_10002CA30;
  if (!qword_10002CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA30);
  }

  return result;
}

unint64_t sub_10001352C()
{
  result = qword_10002CA38;
  if (!qword_10002CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA38);
  }

  return result;
}

unint64_t sub_100013584()
{
  result = qword_10002CA40;
  if (!qword_10002CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA40);
  }

  return result;
}

unint64_t sub_1000135DC()
{
  result = qword_10002CA48;
  if (!qword_10002CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CA48);
  }

  return result;
}

uint64_t sub_10001365C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10001CB44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000136A0()
{
  result = qword_10002CB18;
  if (!qword_10002CB18)
  {
    sub_1000023DC(&qword_10002CAF0, &qword_10001ED28);
    sub_10001372C();
    sub_100013A60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB18);
  }

  return result;
}

unint64_t sub_10001372C()
{
  result = qword_10002CB20;
  if (!qword_10002CB20)
  {
    sub_1000023DC(&qword_10002CAC0, &qword_10001ECF0);
    sub_1000137B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB20);
  }

  return result;
}

unint64_t sub_1000137B8()
{
  result = qword_10002CB28;
  if (!qword_10002CB28)
  {
    sub_1000023DC(&qword_10002CAB8, &qword_10001ECE8);
    sub_100013870();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB28);
  }

  return result;
}

unint64_t sub_100013870()
{
  result = qword_10002CB30;
  if (!qword_10002CB30)
  {
    sub_1000023DC(&qword_10002CAB0, &qword_10001ECE0);
    sub_1000023DC(&qword_10002CAA0, &qword_10001ECD0);
    sub_1000023DC(&qword_10002CB38, &qword_10001EDA8);
    sub_1000139A8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB48, &qword_10002CB50, &qword_10001EDB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB30);
  }

  return result;
}

unint64_t sub_1000139A8()
{
  result = qword_10002CB40;
  if (!qword_10002CB40)
  {
    sub_1000023DC(&qword_10002CB38, &qword_10001EDA8);
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB40);
  }

  return result;
}

unint64_t sub_100013A60()
{
  result = qword_10002CB68;
  if (!qword_10002CB68)
  {
    sub_1000023DC(&qword_10002CAE8, &qword_10001ED20);
    sub_1000023DC(&qword_10002CAD8, &qword_10001ED10);
    sub_1000023DC(&qword_10002CAD0, &qword_10001ED08);
    sub_100013B98();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB68);
  }

  return result;
}

unint64_t sub_100013B98()
{
  result = qword_10002CB70;
  if (!qword_10002CB70)
  {
    sub_1000023DC(&qword_10002CAD0, &qword_10001ED08);
    sub_1000077F0();
    sub_10000266C(&qword_10002C6E8, &qword_10002C6F0, &qword_10001E470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB70);
  }

  return result;
}

unint64_t sub_100013C50()
{
  result = qword_10002CB78;
  if (!qword_10002CB78)
  {
    sub_1000023DC(&qword_10002CB00, &qword_10001ED40);
    sub_1000023DC(&qword_10002C848, &qword_10001E670);
    sub_1000023DC(&qword_10002C6D8, &qword_10001E458);
    sub_10000E9E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_10000266C(&qword_10002CB58, &qword_10002CB60, &unk_10001EDB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CB78);
  }

  return result;
}

uint64_t sub_100013DB4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CB88, &qword_10001EE30);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100007B4C(a1, &v6 - v4, &qword_10002CB88, &qword_10001EE30);
  return sub_10001CBE4();
}

uint64_t sub_100013E60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

id sub_100013F18@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = sub_10001C934();
  v79 = *(v1 - 8);
  v80 = v1;
  v2 = *(v79 + 64);
  v3 = __chkstk_darwin(v1);
  v74 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v76 = &v64 - v5;
  v6 = sub_100002394(&qword_10002C248, &unk_10001DB40);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v64 - v9;
  v75 = sub_100002394(&qword_10002CBD0, &qword_10001EF88);
  v11 = *(v75 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v75);
  v14 = &v64 - v13;
  v77 = sub_100002394(&qword_10002CBD8, &qword_10001EF90);
  v73 = *(v77 - 8);
  v15 = *(v73 + 64);
  __chkstk_darwin(v77);
  v17 = &v64 - v16;
  v67 = sub_100002394(&qword_10002CBE0, &qword_10001EF98);
  v64 = *(v67 - 8);
  v18 = *(v64 + 64);
  __chkstk_darwin(v67);
  v78 = &v64 - v19;
  v68 = sub_100002394(&qword_10002CBE8, &qword_10001EFA0);
  v66 = *(v68 - 8);
  v20 = *(v66 + 64);
  __chkstk_darwin(v68);
  v65 = &v64 - v21;
  sub_100014FD4();
  sub_100015028();

  sub_10001D3F4();
  v22 = sub_10000266C(&qword_10002C250, &qword_10002C248, &unk_10001DB40);
  sub_10001CD54();
  (*(v7 + 8))(v10, v6);
  sub_100002394(&qword_10002CC00, &qword_10001EFA8);
  v23 = sub_10001D2E4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = (*(v24 + 80) + 32) & ~*(v24 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_10001EE60;
  (*(v24 + 104))(v27 + v26, enum case for WidgetFamily.accessoryCircular(_:), v23);
  v81 = v6;
  v82 = v22;
  v28 = v76;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v72 = v17;
  v30 = v75;
  sub_10001CD24();
  v31 = v79;

  (*(v11 + 8))(v14, v30);
  v32 = *(v31 + 104);
  v71 = enum case for LocalizedStringTable.peerPayment(_:);
  v70 = v32;
  v32(v28);
  result = PKPassKitBundle();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v34 = result;
  v35 = sub_10001C924();
  v37 = v36;

  v38 = *(v31 + 8);
  v39 = v28;
  v40 = v80;
  v79 = v31 + 8;
  v76 = v38;
  (v38)(v39, v80);
  v81 = v35;
  v82 = v37;
  sub_1000034E8();
  v41 = sub_10001CF74();
  v43 = v42;
  v45 = v44;
  v81 = v30;
  v82 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v77;
  v48 = v72;
  sub_10001CD64();
  sub_100007708(v41, v43, v45 & 1);

  (*(v73 + 8))(v48, v47);
  v49 = v74;
  v70(v74, v71, v40);
  result = PKPassKitBundle();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v50 = result;
  v51 = sub_10001C924();
  v53 = v52;

  (v76)(v49, v80);
  v81 = v51;
  v82 = v53;
  v54 = sub_10001CF74();
  v56 = v55;
  v58 = v57;
  v81 = v77;
  v82 = v46;
  v59 = swift_getOpaqueTypeConformance2();
  v60 = v65;
  v61 = v67;
  v62 = v78;
  sub_10001CD04();
  sub_100007708(v54, v56, v58 & 1);

  (*(v64 + 8))(v62, v61);
  if (qword_10002C240 != -1)
  {
    swift_once();
  }

  v81 = v61;
  v82 = v59;
  swift_getOpaqueTypeConformance2();
  v63 = v68;
  sub_10001CD74();
  return (*(v66 + 8))(v60, v63);
}

uint64_t sub_100014788()
{
  v0 = sub_100002394(&qword_10002CBB8, &qword_10001EEE8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v10 - v2;
  v4 = sub_10001D0C4();
  v5 = sub_10001CEA4();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = sub_10001CEF4();
  sub_1000149A4(v3);
  KeyPath = swift_getKeyPath();
  v10[1] = v4;
  v10[2] = KeyPath;
  v10[3] = v6;
  if (qword_10002C238 != -1)
  {
    swift_once();
  }

  v8 = sub_100002394(&qword_10002C288, &qword_10001E390);
  sub_100002CAC(v8, qword_10002D1C0);
  sub_100002394(&qword_10002CB38, &qword_10001EDA8);
  sub_1000139A8();
  sub_10001CFC4();
}

uint64_t sub_100014958@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10001CC94();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = a1 + *(sub_100002394(&qword_10002CBB0, &qword_10001EEE0) + 44);
  return sub_100014788();
}

uint64_t sub_1000149A4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CBB8, &qword_10001EEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100014A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001C8C4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_100014A7C(uint64_t a1, void (*a2)(char *))
{
  v3 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C8B4();
  a2(v6);
  return sub_100015330(v6);
}

uint64_t sub_100014B0C(uint64_t a1, void (*a2)(char *))
{
  v19 = a2;
  v2 = sub_10001D414();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_100002394(&qword_10002CC10, &qword_10001F070);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001C8B4();
  sub_100002394(&qword_10002CC18, &qword_10001F078);
  v14 = *(v10 + 72);
  v15 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10001EE60;
  sub_1000152CC(v13, v16 + v15);
  sub_10001D404();
  sub_100015228();
  sub_10001D4D4();
  v19(v8);
  (*(v5 + 8))(v8, v4);
  return sub_100015330(v13);
}

uint64_t sub_100014D4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevances()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100002180;

  return TimelineProvider.relevances()(a1, a2, a3);
}

uint64_t sub_100014E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to TimelineProvider.relevance()[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1000154FC;

  return TimelineProvider.relevance()(a1, a2, a3);
}

uint64_t sub_100014EB4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CC14();
  *a1 = result;
  return result;
}

uint64_t sub_100014EE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001CC14();
  *a1 = result;
  return result;
}

uint64_t sub_100014F0C(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001CC24();
}

uint64_t sub_100014F38(uint64_t *a1)
{
  v1 = *a1;

  return sub_10001CC24();
}

unint64_t sub_100014FD4()
{
  result = qword_10002CBF0;
  if (!qword_10002CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF0);
  }

  return result;
}

unint64_t sub_100015028()
{
  result = qword_10002CBF8;
  if (!qword_10002CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CBF8);
  }

  return result;
}

uint64_t sub_10001508C()
{
  sub_1000023DC(&qword_10002CBE8, &qword_10001EFA0);
  sub_1000023DC(&qword_10002CBE0, &qword_10001EF98);
  sub_1000023DC(&qword_10002CBD8, &qword_10001EF90);
  sub_1000023DC(&qword_10002CBD0, &qword_10001EF88);
  sub_1000023DC(&qword_10002C248, &unk_10001DB40);
  sub_10000266C(&qword_10002C250, &qword_10002C248, &unk_10001DB40);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_100015228()
{
  result = qword_10002CC08;
  if (!qword_10002CC08)
  {
    type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CC08);
  }

  return result;
}

uint64_t type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry()
{
  result = qword_10002CC78;
  if (!qword_10002CC78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000152CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100015330(uint64_t a1)
{
  v2 = type metadata accessor for NearbyPeerPaymentWidgetSimpleEntry();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000153A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8C4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100015420(uint64_t a1, uint64_t a2)
{
  v4 = sub_10001C8C4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_100015490()
{
  result = sub_10001C8C4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_100015504()
{
  result = qword_10002CCB0;
  if (!qword_10002CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB0);
  }

  return result;
}

unint64_t sub_10001555C()
{
  result = qword_10002CCB8;
  if (!qword_10002CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCB8);
  }

  return result;
}

uint64_t sub_1000155E4()
{
  v0 = sub_10001C7D4();
  sub_100002CE4(v0, qword_10002D188);
  v1 = sub_100002CAC(v0, qword_10002D188);
  v2 = enum case for IntentAuthenticationPolicy.alwaysAllowed(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

id sub_10001566C()
{
  v0 = sub_100002394(&qword_10002C288, &qword_10001E390);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v21 - v2;
  v4 = sub_10001C884();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001C834();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = objc_opt_self();
  if ([v14 contactlessInterfaceCanBePresentedFromSource:2])
  {
    result = [v14 sharedInstance];
    if (result)
    {
      v16 = result;
      [result presentContactlessInterfaceForDefaultPassFromSource:2 completion:0];

      return sub_10001C714();
    }

    __break(1u);
    goto LABEL_9;
  }

  sub_10001C824();
  sub_10001D524();
  sub_10001C814();
  sub_10001C7E4();
  result = (*(v5 + 48))(v3, 1, v4);
  if (result == 1)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  (*(v5 + 32))(v8, v3, v4);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v18 = result;
    sub_10001C864(v17);
    v20 = v19;
    [v18 openSensitiveURL:v19 withOptions:0];

    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    return sub_10001C714();
  }

LABEL_10:
  __break(1u);
  return result;
}

void (*sub_10001599C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_10001C744();
  return sub_100015A10;
}

void sub_100015A10(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_100015A64()
{
  result = qword_10002CCC0;
  if (!qword_10002CCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC0);
  }

  return result;
}

unint64_t sub_100015ABC()
{
  result = qword_10002CCC8;
  if (!qword_10002CCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCC8);
  }

  return result;
}

uint64_t sub_100015BD0()
{
  sub_10001566C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100015C34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100016CBC();
  *a1 = result;
  return result;
}

uint64_t sub_100015C5C(uint64_t a1)
{
  v2 = sub_100003494();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

uint64_t sub_100015CCC(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t))
{
  v6 = a2(0);
  sub_100002CE4(v6, a3);
  sub_100002CAC(v6, a3);
  return a4(0xD000000000000013, 0x800000010001FB40);
}

uint64_t sub_100015D40()
{
  sub_100002394(&qword_10002CD40, &qword_10001F510);
  v0 = *(sub_100002394(&qword_10002CD48, &qword_10001F518) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_10001EE60;
  sub_10001C784();
  v4 = sub_100016A2C(v3);
  swift_setDeallocating();
  sub_100016BE4(v3 + v2);
  result = swift_deallocClassInstance();
  qword_10002D1B8 = v4;
  return result;
}

unint64_t sub_100015E48()
{
  result = qword_10002CCD0;
  if (!qword_10002CCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD0);
  }

  return result;
}

Swift::Int sub_100015E9C()
{
  sub_10001D5F4();
  sub_10001D544();
  return sub_10001D614();
}

Swift::Int sub_100015F00()
{
  sub_10001D5F4();
  sub_10001D544();
  return sub_10001D614();
}

uint64_t sub_100015F4C@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100029810;
  v7._object = v3;
  v5 = sub_10001D5D4(v4, v7);

  *a2 = v5 != 0;
  return result;
}

unint64_t sub_100015FBC()
{
  result = qword_10002CCD8;
  if (!qword_10002CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCD8);
  }

  return result;
}

unint64_t sub_100016014()
{
  result = qword_10002CCE0;
  if (!qword_10002CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE0);
  }

  return result;
}

unint64_t sub_100016078()
{
  result = qword_10002CCE8;
  if (!qword_10002CCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCE8);
  }

  return result;
}

unint64_t sub_1000160D0()
{
  result = qword_10002CCF0;
  if (!qword_10002CCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF0);
  }

  return result;
}

unint64_t sub_100016128()
{
  result = qword_10002CCF8;
  if (!qword_10002CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CCF8);
  }

  return result;
}

unint64_t sub_100016180()
{
  result = qword_10002CD00;
  if (!qword_10002CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD00);
  }

  return result;
}

uint64_t sub_100016210@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
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
  v8 = sub_100002CAC(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

unint64_t sub_10001632C()
{
  result = qword_10002CD08;
  if (!qword_10002CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD08);
  }

  return result;
}

uint64_t sub_100016380(uint64_t a1)
{
  v2 = sub_10001632C();

  return static AppEnum.defaultResolverSpecification.getter(a1, v2);
}

unint64_t sub_1000163D0()
{
  result = qword_10002CD10;
  if (!qword_10002CD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD10);
  }

  return result;
}

unint64_t sub_100016428()
{
  result = qword_10002CD18;
  if (!qword_10002CD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD18);
  }

  return result;
}

unint64_t sub_100016480()
{
  result = qword_10002CD20;
  if (!qword_10002CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CD20);
  }

  return result;
}

uint64_t sub_1000164D4()
{
  if (qword_10002C230 != -1)
  {
    swift_once();
  }
}

uint64_t sub_100016530(uint64_t a1)
{
  v2 = sub_100016180();

  return CaseDisplayRepresentable.localizedStringResource.getter(a1, v2);
}

uint64_t getEnumTagSinglePayload for LaunchFromControlCenterEnum(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for LaunchFromControlCenterEnum(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_100016704(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_10001D524();
  sub_10001D5F4();
  sub_10001D544();
  v4 = sub_10001D614();

  return sub_100016798(a1, v4);
}

unint64_t sub_100016798(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_10001D524();
      v9 = v8;
      if (v7 == sub_10001D524() && v9 == v10)
      {
        break;
      }

      v12 = sub_10001D5E4();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10001689C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002394(&qword_10002CD70, &qword_10001F548);
    v3 = sub_10001D5B4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100016704(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10001699C(uint64_t a1)
{
  result = a1 & ~(-1 << *(v1 + 32));
  v3 = *(v1 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 64) >> result;
  return result;
}

unint64_t sub_1000169C8()
{
  v1 = *(v0 + 40);
  sub_10001D5F4();
  sub_10001D544();
  v2 = sub_10001D614();

  return sub_10001699C(v2);
}

unint64_t sub_100016A2C(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v6 = &v19 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100002394(&qword_10002CD50, &qword_10001F520);
    v8 = sub_10001D5B4();
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_100016C4C(v9, v6);
      result = sub_1000169C8();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v14 = *(v8 + 56);
      v15 = sub_10001C794();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v6, v15);
      v16 = *(v8 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      *(v8 + 16) = v18;
      v9 += v10;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100016BE4(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100016C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CD48, &qword_10001F518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100016CBC()
{
  v21 = sub_10001C7A4();
  v0 = *(v21 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v21);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100002394(&qword_10002CD58, &qword_10001F528);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v21 - v9;
  v11 = sub_100002394(&qword_10002CD60, &qword_10001F530);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v21 - v13;
  v15 = sub_10001C854();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  sub_100002394(&qword_10002CD68, &unk_10001F538);
  sub_10001C844();
  (*(v16 + 56))(v14, 1, 1, v15);
  v22 = 1;
  v18 = sub_10001C6F4();
  v19 = *(*(v18 - 8) + 56);
  v19(v10, 1, 1, v18);
  v19(v8, 1, 1, v18);
  (*(v0 + 104))(v3, enum case for InputConnectionBehavior.default(_:), v21);
  sub_10001632C();
  return sub_10001C774();
}

id sub_100016FC4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 56);
  if (v5 == 255)
  {
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
    if (v5)
    {

      sub_1000175E4(v7, v6, v8, v5);
    }

    else
    {
      if (v7 == a1 && v6 == a2)
      {
        sub_1000175FC(a1, a2, *(v2 + 48));

        return v8;
      }

      v22 = *(v2 + 32);
      v23 = *(v2 + 40);
      v24 = sub_10001D5E4();

      sub_1000175E4(v7, v6, v8, v5);

      if (v24)
      {
        goto LABEL_15;
      }
    }
  }

  v9 = *(v2 + 64);
  v10 = sub_10001D4F4();
  v11 = [v9 passWithUniqueID:v10];

  if (!v11)
  {
LABEL_17:

    return 0;
  }

  v12 = [objc_allocWithZone(PKPassView) initWithPass:v11 content:5];
  if (!v12)
  {

    goto LABEL_17;
  }

  v13 = *(v2 + 16);
  v14 = *(v2 + 24);
  v15 = v12;
  v8 = [v15 snapshotOfFrontFaceWithRequestedSize:{v13, v14}];

  if (!v8)
  {
LABEL_15:

    return v8;
  }

  v16 = *(v2 + 32);
  v17 = *(v2 + 40);
  v18 = *(v2 + 48);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v8;
  v19 = *(v2 + 56);
  *(v2 + 56) = 0;
  v20 = v8;
  sub_100017590(v16, v17, v18, v19);
  return v8;
}

id sub_1000171C4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v5 = *(v2 + 56);
  if (v5 == 255)
  {
  }

  else
  {
    v7 = *(v2 + 32);
    v6 = *(v2 + 40);
    v8 = *(v2 + 48);
    if (v5)
    {
      if (v7 == a1 && v6 == a2)
      {
        sub_1000175FC(a1, a2, *(v2 + 48));

        return v8;
      }

      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      v12 = sub_10001D5E4();

      sub_1000175E4(v7, v6, v8, v5);

      if (v12)
      {
        goto LABEL_23;
      }
    }

    else
    {

      sub_1000175E4(v7, v6, v8, v5);
    }
  }

  v13 = *(v2 + 64);
  v14 = sub_10001D4F4();
  v15 = [v13 passWithUniqueID:v14];

  if (!v15)
  {
LABEL_18:

    return 0;
  }

  v16 = [v15 iconImage];
  if (!v16)
  {

    goto LABEL_18;
  }

  v17 = v16;
  v8 = [v16 imageData];

  if (!v8)
  {

    goto LABEL_23;
  }

  v18 = sub_10001C8A4();
  v20 = v19;

  v21 = objc_allocWithZone(UIImage);
  isa = sub_10001C894().super.isa;
  v8 = [v21 initWithData:isa];

  sub_10001753C(v18, v20);
  if (!v8)
  {
LABEL_23:

    return v8;
  }

  v23 = *(v2 + 32);
  v24 = *(v2 + 40);
  v25 = *(v2 + 48);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  *(v2 + 48) = v8;
  v26 = *(v2 + 56);
  *(v2 + 56) = 1;
  v27 = v8;
  sub_100017590(v23, v24, v25, v26);
  return v8;
}

uint64_t sub_100017404()
{
  sub_100017590(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return swift_deallocClassInstance();
}

__n128 sub_10001747C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100017490(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000174D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_10001753C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_100017590(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    sub_1000175A8(a1, a2, a3);
  }
}

void sub_1000175A8(uint64_t a1, uint64_t a2, void *a3)
{
}

uint64_t sub_1000175E4(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1000175FC(a1, a2, a3);
  }

  return a1;
}

id sub_1000175FC(uint64_t a1, uint64_t a2, void *a3)
{

  return a3;
}

uint64_t sub_100017644(uint64_t *a1, unsigned int a2)
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

uint64_t sub_1000176A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10001771C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_10001D0B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v3);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  if (*v1)
  {
    v10 = v9;
    sub_10001D094();
    (*(v4 + 104))(v8, enum case for Image.ResizingMode.stretch(_:), v3);
    v11 = sub_10001D0D4();

    result = (*(v4 + 8))(v8, v3);
    LOWORD(v9) = 1;
  }

  else
  {
    v11 = 0;
  }

  *a1 = v11;
  *(a1 + 8) = 0;
  *(a1 + 16) = v9;
  return result;
}

unint64_t sub_100017870()
{
  result = qword_10002CE50;
  if (!qword_10002CE50)
  {
    sub_1000023DC(&qword_10002CE58, &qword_10001F698);
    sub_1000178F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE50);
  }

  return result;
}

unint64_t sub_1000178F4()
{
  result = qword_10002CE60;
  if (!qword_10002CE60)
  {
    sub_1000023DC(&qword_10002CE68, &unk_10001F6A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE60);
  }

  return result;
}

uint64_t sub_100017978()
{
  v0 = sub_100002394(&qword_10002C288, &qword_10001E390);
  sub_100002CE4(v0, qword_10002D1C0);
  sub_100002CAC(v0, qword_10002D1C0);
  v3._countAndFlagsBits = sub_10001D524();
  sub_10001D554(v3);

  v4._countAndFlagsBits = 47;
  v4._object = 0xE100000000000000;
  sub_10001D554(v4);
  v5._countAndFlagsBits = sub_10001D524();
  sub_10001D554(v5);

  sub_10001C874();
}

uint64_t sub_100017AA0@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_10001CDA4();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_10001CDC4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21[-1] - v10;
  v12 = sub_10001D2A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v21[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 104))(v16, enum case for FlightWidgetDisplayContext.lockScreen(_:), v12);
  sub_10001D1A4();
  (*(v13 + 8))(v16, v12);
  if (v22)
  {
    sub_10001B900(v21, v22);
    v17 = sub_10001D2B4();
    sub_10001CD94();
    sub_10001CDB4();
    (*(v5 + 16))(v9, v11, v4);
    sub_10001BE38(&qword_10002D030, &type metadata accessor for BlurReplaceTransition);
    v18 = sub_10001CB14();
    (*(v5 + 8))(v11, v4);
    result = sub_10001B8B4(v21);
  }

  else
  {
    result = sub_100007AEC(v21, &qword_10002CEE8, &qword_10001F778);
    v17 = 0;
    v18 = 0;
  }

  *a1 = v17;
  a1[1] = v18;
  return result;
}

uint64_t sub_100017D7C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v1 = sub_10001CB34();
  v2 = *(v1 - 8);
  v56 = v1;
  v57 = v2;
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v53 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_10001CA94();
  v5 = *(v49 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v49);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_10001D214();
  v9 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v10 = sub_100002394(&qword_10002D048, &qword_10001F880);
  v11 = *(v10 - 8);
  v51 = v10;
  v52 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v46 - v13;
  v15 = sub_100002394(&qword_10002CE90, &qword_10001F740);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = &v46 - v17;
  v19 = sub_100002394(&qword_10002CE88, &qword_10001F738);
  v20 = *(v19 - 8);
  v54 = v19;
  v55 = v20;
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v46 - v22;
  v48 = sub_100018394();
  *v18 = sub_10001CCB4();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v24 = sub_100002394(&qword_10002D050, &qword_10001F888);
  sub_1000188DC(&v18[*(v24 + 44)]);
  v25 = sub_10001D134();
  v46 = v26;
  v47 = v25;
  v27 = &v18[*(v15 + 36)];
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  sub_10001D3E4();
  sub_10001CA64();
  (*(v5 + 8))(v8, v49);
  sub_10001D204();
  sub_10001BE38(&qword_10002D058, &type metadata accessor for LiveActivityTapIntent);
  sub_10001D0F4();
  v28 = v53;
  sub_10001CB24();
  sub_10000266C(&qword_10002D060, &qword_10002D048, &qword_10001F880);
  sub_10001BE38(&qword_10002D068, &type metadata accessor for PlainButtonStyle);
  v29 = v51;
  v30 = v56;
  sub_10001D014();
  (*(v57 + 8))(v28, v30);
  (*(v52 + 8))(v14, v29);
  v31 = &v27[*(sub_100002394(&qword_10002CEB8, &unk_10001F750) + 36)];
  v32 = v46;
  *v31 = v47;
  v31[1] = v32;
  sub_10001D1B4();
  v33 = sub_10001ACA4();
  sub_10001CFA4();

  sub_100007AEC(v18, &qword_10002CE90, &qword_10001F740);
  sub_10001D1B4();
  v59 = v15;
  v60 = v33;
  swift_getOpaqueTypeConformance2();
  v34 = v58;
  v35 = v54;
  sub_10001CFB4();

  (*(v55 + 8))(v23, v35);
  LOBYTE(v14) = sub_10001CE04();
  sub_10001CAC4();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  result = sub_100002394(&qword_10002CE70, &qword_10001F730);
  v45 = v34 + *(result + 36);
  *v45 = v14;
  *(v45 + 8) = v37;
  *(v45 + 16) = v39;
  *(v45 + 24) = v41;
  *(v45 + 32) = v43;
  *(v45 + 40) = 0;
  return result;
}

uint64_t sub_100018394()
{
  v0 = sub_10001D244();
  v55 = *(v0 - 8);
  v56 = v0;
  v1 = *(v55 + 64);
  __chkstk_darwin(v0);
  v54 = v46 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100002394(&qword_10002D038, &qword_10001F870);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v53 = v46 - v5;
  v6 = sub_100002394(&qword_10002D040, &qword_10001F878);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v52 = v46 - v8;
  v9 = sub_10001CA94();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v50 = v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v48 = v46 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = v46 - v17;
  __chkstk_darwin(v16);
  v20 = v46 - v19;
  v51 = sub_10001D164();
  v49 = *(v51 - 8);
  v21 = *(v49 + 64);
  __chkstk_darwin(v51);
  v47 = v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  sub_10001D3E4();
  v23 = sub_10001CA64();
  v25 = v24;
  v26 = *(v10 + 8);
  v26(v20, v9);
  v46[7] = sub_1000171C4(v23, v25);

  sub_10001D3E4();
  v27 = sub_10001CA64();
  v29 = v28;
  v26(v20, v9);
  v46[6] = sub_100016FC4(v27, v29);

  sub_10001D3E4();
  v30 = sub_10001CA34();
  v46[4] = v31;
  v46[5] = v30;
  v26(v20, v9);
  sub_10001D3E4();
  v32 = sub_10001CA74();
  v46[2] = v33;
  v46[3] = v32;
  v26(v18, v9);
  v34 = v48;
  sub_10001D3E4();
  sub_10001CA54();
  v46[1] = v35;
  v26(v34, v9);
  v36 = v50;
  sub_10001D3E4();
  sub_10001CA44();
  v26(v36, v9);
  v37 = v47;
  sub_10001D154();
  v38 = v49;
  v39 = v53;
  v40 = v51;
  (*(v49 + 16))(v53, v37, v51);
  (*(v38 + 56))(v39, 0, 1, v40);
  sub_10001D3E4();
  (*(v55 + 104))(v54, enum case for FlightWidgetPerspective.passenger(_:), v56);
  v41 = sub_10001D1F4();
  v42 = *(v41 + 48);
  v43 = *(v41 + 52);
  swift_allocObject();
  v44 = sub_10001D194();
  (*(v38 + 8))(v37, v40);
  return v44;
}

uint64_t sub_1000188DC@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v85 = sub_10001D294();
  v88 = *(v85 - 8);
  v1 = *(v88 + 64);
  __chkstk_darwin(v85);
  v78 = &v75 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10001D2A4();
  v3 = *(v80 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v80);
  v6 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002394(&qword_10002CFF8, &qword_10001F838);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v75 - v9;
  v11 = sub_10001D274();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v77 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v76 = &v75 - v16;
  v17 = sub_100002394(&qword_10002D070, &qword_10001F890);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v79 = &v75 - v21;
  v22 = sub_100002394(&qword_10002CFF0, &qword_10001F830);
  v23 = v22 - 8;
  v24 = *(*(v22 - 8) + 64);
  v25 = __chkstk_darwin(v22);
  v86 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v28 = &v75 - v27;
  v29 = sub_100002394(&qword_10002D078, &qword_10001F898);
  v30 = *(*(v29 - 8) + 64);
  v31 = __chkstk_darwin(v29 - 8);
  v84 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v75 - v33;
  *v34 = sub_10001CC84();
  *(v34 + 1) = 0;
  v34[16] = 1;
  v35 = *(sub_100002394(&qword_10002D080, &qword_10001F8A0) + 44);
  v82 = v34;
  sub_1000190A0(&v34[v35]);
  sub_100017AA0(v90);
  v83 = v90[0];
  v81 = v90[1];
  sub_10001D104();
  v36 = &v28[*(sub_100002394(&qword_10002D010, &qword_10001F850) + 36)];
  sub_10001CCD4();
  v37 = sub_10001CE04();
  v36[*(sub_100002394(&qword_10002D018, &qword_10001F858) + 36)] = v37;
  LOBYTE(v36) = sub_10001CE14();
  sub_10001CAC4();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = &v28[*(sub_100002394(&qword_10002D020, &qword_10001F860) + 36)];
  *v46 = v36;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  LOBYTE(v36) = sub_10001CE24();
  sub_10001CAC4();
  v47 = *(v23 + 44);
  v48 = v11;
  v49 = v28;
  v50 = &v28[v47];
  *v50 = v36;
  *(v50 + 1) = v51;
  *(v50 + 2) = v52;
  *(v50 + 3) = v53;
  *(v50 + 4) = v54;
  v50[40] = 0;
  v55 = v80;
  (*(v3 + 104))(v6, enum case for FlightWidgetDisplayContext.lockScreen(_:), v80);
  sub_10001D264();
  (*(v3 + 8))(v6, v55);
  if ((*(v12 + 48))(v10, 1, v48) == 1)
  {
    sub_100007AEC(v10, &qword_10002CFF8, &qword_10001F838);
    v56 = 1;
    v57 = v88;
    v58 = v79;
    v59 = v85;
  }

  else
  {
    v60 = v76;
    (*(v12 + 32))(v76, v10, v48);
    (*(v12 + 16))(v77, v60, v48);
    v61 = v78;
    sub_10001D284();
    (*(v12 + 8))(v60, v48);
    v62 = v88;
    v63 = v79;
    v64 = v85;
    (*(v88 + 32))(v79, v61, v85);
    v56 = 0;
    v57 = v62;
    v58 = v63;
    v59 = v64;
  }

  (*(v57 + 56))(v58, v56, 1, v59);
  v65 = v82;
  v66 = v84;
  sub_100007B4C(v82, v84, &qword_10002D078, &qword_10001F898);
  v67 = v86;
  sub_100007B4C(v49, v86, &qword_10002CFF0, &qword_10001F830);
  v68 = v87;
  sub_100007B4C(v58, v87, &qword_10002D070, &qword_10001F890);
  v69 = v89;
  sub_100007B4C(v66, v89, &qword_10002D078, &qword_10001F898);
  v70 = sub_100002394(&qword_10002D088, &qword_10001F8A8);
  v71 = (v69 + v70[12]);
  v72 = v83;
  v73 = v81;
  *v71 = v83;
  v71[1] = v73;
  sub_100007B4C(v67, v69 + v70[16], &qword_10002CFF0, &qword_10001F830);
  sub_100007B4C(v68, v69 + v70[20], &qword_10002D070, &qword_10001F890);
  sub_10001BD48(v72);
  sub_100007AEC(v58, &qword_10002D070, &qword_10001F890);
  sub_100007AEC(v49, &qword_10002CFF0, &qword_10001F830);
  sub_100007AEC(v65, &qword_10002D078, &qword_10001F898);
  sub_100007AEC(v68, &qword_10002D070, &qword_10001F890);
  sub_100007AEC(v67, &qword_10002CFF0, &qword_10001F830);
  sub_10001BD88(v72);
  return sub_100007AEC(v66, &qword_10002D078, &qword_10001F898);
}

uint64_t sub_1000190A0@<X0>(char *a1@<X8>)
{
  v2 = sub_10001D234();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v18[-1] - v8;
  sub_10001D184();
  sub_10001D174();
  sub_10001D224();
  sub_10001D1C4();
  if (v19)
  {
    sub_10001B900(v18, v19);
    v10 = sub_10001D2B4();
    sub_10001B8B4(v18);
  }

  else
  {
    sub_100007AEC(v18, &qword_10002CEE8, &qword_10001F778);
    v10 = 0;
  }

  v11 = v3[2];
  v11(v7, v9, v2);
  LOBYTE(v18[0]) = 0;
  v11(a1, v7, v2);
  v12 = sub_100002394(&qword_10002D090, &qword_10001F8B0);
  v13 = &a1[*(v12 + 48)];
  v14 = v18[0];
  *v13 = 0x4020000000000000;
  v13[8] = v14;
  *&a1[*(v12 + 64)] = v10;
  v15 = v3[1];

  v15(v9, v2);

  return (v15)(v7, v2);
}

uint64_t sub_1000192AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10001D074();
  *a1 = result;
  return result;
}

uint64_t sub_1000192D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a1;
  v46 = a3;
  v4 = sub_100002394(&qword_10002C288, &qword_10001E390);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v44 = &v34 - v6;
  v45 = sub_10001CA94();
  v43 = *(v45 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v45);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_10001D3D4();
  v9 = *(v38 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v38);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_10001D364();
  v47 = *(v39 - 8);
  v13 = *(v47 + 64);
  v14 = __chkstk_darwin(v39);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v35 = &v34 - v18;
  v19 = __chkstk_darwin(v17);
  v37 = &v34 - v20;
  __chkstk_darwin(v19);
  v40 = &v34 - v21;
  v22 = sub_100018394();
  v23 = swift_allocObject();
  *(v23 + 16) = v22;
  *(v23 + 24) = a2;
  swift_retain_n();

  sub_100002394(&qword_10002CEC0, &qword_10001F760);
  sub_100002394(&qword_10002CEC8, &qword_10001F768);
  sub_10000266C(&qword_10002CED0, &qword_10002CEC0, &qword_10001F760);
  sub_10001AE60();
  v36 = v22;
  sub_10001D344();
  sub_10001CE04();
  sub_10001D3C4();
  sub_10001D334();
  v24 = *(v9 + 8);
  v25 = v38;
  v24(v12, v38);
  v34 = v9 + 8;
  v26 = *(v47 + 8);
  v47 += 8;
  v27 = v39;
  v26(v16, v39);
  sub_10001CE34();
  sub_10001B718();
  sub_10001D3A4();
  v28 = v37;
  v29 = v35;
  sub_10001D334();
  v24(v12, v25);
  v26(v29, v27);
  sub_10001CE54();
  sub_10001D3B4();
  v30 = v40;
  sub_10001D334();
  v24(v12, v25);
  v26(v28, v27);
  sub_100002394(&qword_10002CEE0, &qword_10001F770);
  v31 = v42;
  sub_10001D3E4();
  v32 = v44;
  sub_10001CA84();
  (*(v43 + 8))(v31, v45);
  sub_10001D354();

  sub_100007AEC(v32, &qword_10002C288, &qword_10001E390);
  return (v26)(v30, v27);
}

uint64_t sub_10001983C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v35 = a3;
  v36 = sub_100002394(&qword_10002CEF8, &qword_10001F788);
  v34 = *(v36 - 8);
  v5 = *(v34 + 64);
  __chkstk_darwin(v36);
  v28 = &v25 - v6;
  v33 = sub_100002394(&qword_10002CF00, &qword_10001F790);
  v32 = *(v33 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v33);
  v9 = &v25 - v8;
  v31 = sub_100002394(&qword_10002CF08, &qword_10001F798);
  v30 = *(v31 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v31);
  v12 = &v25 - v11;
  v29 = sub_100002394(&qword_10002CF10, &qword_10001F7A0);
  v27 = *(v29 - 8);
  v13 = *(v27 + 64);
  __chkstk_darwin(v29);
  v15 = &v25 - v14;
  v16 = sub_10001D4A4();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v26 = sub_100002394(&qword_10002CF18, &qword_10001F7A8);
  v25 = *(v26 - 8);
  v18 = *(v25 + 64);
  __chkstk_darwin(v26);
  v20 = &v25 - v19;
  sub_10001D484();
  v21 = sub_100002394(&qword_10002CF20, &qword_10001F7B0);
  v22 = sub_10001BAC0(&qword_10002CF28, &qword_10002CF20, &qword_10001F7B0, sub_10001B94C);
  sub_10001D444();
  sub_10001D494();
  sub_100002394(&qword_10002CF48, &qword_10001F7C0);
  sub_10001BA10();
  sub_10001D444();
  sub_10001D474();
  v42 = a2;
  v43 = a1;
  sub_100002394(&qword_10002CF78, &qword_10001F7D8);
  sub_10001BAC0(&qword_10002CF80, &qword_10002CF78, &qword_10001F7D8, sub_10001BBD0);
  sub_10001D444();
  v41 = v20;
  sub_100002394(&qword_10002CFA8, &qword_10001F7F0);
  v44 = v21;
  v45 = v22;
  swift_getOpaqueTypeConformance2();
  sub_10001D454();
  v39 = v9;
  v40 = v15;
  sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  sub_10000266C(&qword_10002CFB8, &qword_10002CFB0, &qword_10001F7F8);
  v23 = v28;
  sub_10001D454();
  v37 = v23;
  v38 = v12;
  sub_100002394(&qword_10002CEC0, &qword_10001F760);
  sub_10000266C(&qword_10002CED0, &qword_10002CEC0, &qword_10001F760);
  sub_10001D454();
  (*(v34 + 8))(v23, v36);
  (*(v32 + 8))(v9, v33);
  (*(v30 + 8))(v12, v31);
  (*(v27 + 8))(v15, v29);
  return (*(v25 + 8))(v20, v26);
}

uint64_t sub_100019ED4@<X0>(uint64_t a1@<X8>)
{
  sub_10001D184();
  sub_10001D174();
  sub_10001D224();
  v2 = sub_10001CE34();
  sub_10001CAC4();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = a1 + *(sub_100002394(&qword_10002CF38, &qword_10001F7B8) + 36);
  *v11 = v2;
  *(v11 + 8) = v4;
  *(v11 + 16) = v6;
  *(v11 + 24) = v8;
  *(v11 + 32) = v10;
  *(v11 + 40) = 0;
  v12 = sub_10001CE14();
  sub_10001CAC4();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  result = sub_100002394(&qword_10002CF20, &qword_10001F7B0);
  v22 = a1 + *(result + 36);
  *v22 = v12;
  *(v22 + 8) = v14;
  *(v22 + 16) = v16;
  *(v22 + 24) = v18;
  *(v22 + 32) = v20;
  *(v22 + 40) = 0;
  return result;
}

uint64_t sub_100019FD0@<X0>(uint64_t a1@<X8>)
{
  sub_10001D1D4();
  if (v21)
  {
    sub_10001B900(v20, v21);
    v2 = sub_10001D2B4();
    v3 = sub_10001CE54();
    sub_10001CAC4();
    *(&v5 + 1) = v4;
    *(&v7 + 1) = v6;
    v18 = v7;
    v19 = v5;
    sub_10001B8B4(v20);
    v8 = sub_10001CE14();
    result = sub_10001CAC4();
    *(&v11 + 1) = v10;
    *(&v13 + 1) = v12;
    v15 = v18;
    v14 = v19;
    v23 = 0;
    v22 = 0;
    v16 = v3;
    v17 = v8;
  }

  else
  {
    result = sub_100007AEC(v20, &qword_10002CEE8, &qword_10001F778);
    v2 = 0;
    v17 = 0;
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
    v11 = 0uLL;
    v13 = 0uLL;
  }

  *a1 = v2;
  *(a1 + 8) = v16;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  *(a1 + 48) = 0;
  *(a1 + 56) = v17;
  *(a1 + 64) = v11;
  *(a1 + 80) = v13;
  *(a1 + 96) = 0;
  return result;
}

uint64_t sub_10001A0DC@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_10001CCB4();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_100002394(&qword_10002CFE0, &qword_10001F820);
  sub_10001A1E8((a1 + *(v2 + 44)));
  v3 = sub_10001CDF4();
  sub_10001CAC4();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = a1 + *(sub_100002394(&qword_10002CF90, &qword_10001F7E0) + 36);
  *v12 = v3;
  *(v12 + 8) = v5;
  *(v12 + 16) = v7;
  *(v12 + 24) = v9;
  *(v12 + 32) = v11;
  *(v12 + 40) = 0;
  v13 = sub_10001CE24();
  sub_10001CAC4();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  result = sub_100002394(&qword_10002CF78, &qword_10001F7D8);
  v23 = a1 + *(result + 36);
  *v23 = v13;
  *(v23 + 8) = v15;
  *(v23 + 16) = v17;
  *(v23 + 24) = v19;
  *(v23 + 32) = v21;
  *(v23 + 40) = 0;
  return result;
}

uint64_t sub_10001A1E8@<X0>(uint64_t *a1@<X8>)
{
  v86 = a1;
  v1 = sub_100002394(&qword_10002CFE8, &qword_10001F828);
  v84 = *(v1 - 8);
  v85 = v1;
  v2 = *(v84 + 64);
  __chkstk_darwin(v1);
  v80 = &v70 - v3;
  v4 = sub_10001D294();
  v78 = *(v4 - 8);
  v79 = v4;
  v5 = *(v78 + 64);
  v6 = __chkstk_darwin(v4);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v76 = &v70 - v8;
  v74 = sub_100002394(&qword_10002CFF0, &qword_10001F830);
  v9 = *(*(v74 - 8) + 64);
  v10 = __chkstk_darwin(v74);
  v75 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v73 = &v70 - v12;
  v13 = sub_10001D2A4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100002394(&qword_10002CFF8, &qword_10001F838);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v70 - v20;
  v22 = sub_10001D274();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v29 = &v70 - v28;
  v30 = sub_100002394(&qword_10002D000, &qword_10001F840);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v83 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v35 = &v70 - v34;
  sub_100017AA0(v87);
  v81 = v87[1];
  v82 = v87[0];
  (*(v14 + 104))(v17, enum case for FlightWidgetDisplayContext.dynamicIslandExpanded(_:), v13);
  sub_10001D264();
  (*(v14 + 8))(v17, v13);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_100007AEC(v21, &qword_10002CFF8, &qword_10001F838);
    v36 = 1;
  }

  else
  {
    v72 = v23;
    v37 = *(v23 + 32);
    v71 = v29;
    v70 = v22;
    v37(v29, v21, v22);
    v38 = v73;
    sub_10001D104();
    v39 = v38 + *(sub_100002394(&qword_10002D010, &qword_10001F850) + 36);
    sub_10001CCD4();
    v40 = sub_10001CE04();
    *(v39 + *(sub_100002394(&qword_10002D018, &qword_10001F858) + 36)) = v40;
    LOBYTE(v39) = sub_10001CE14();
    sub_10001CAC4();
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v48 = v47;
    v49 = v38 + *(sub_100002394(&qword_10002D020, &qword_10001F860) + 36);
    *v49 = v39;
    *(v49 + 8) = v42;
    *(v49 + 16) = v44;
    *(v49 + 24) = v46;
    *(v49 + 32) = v48;
    *(v49 + 40) = 0;
    LOBYTE(v39) = sub_10001CE24();
    sub_10001CAC4();
    v50 = v38 + *(v74 + 36);
    *v50 = v39;
    *(v50 + 8) = v51;
    *(v50 + 16) = v52;
    *(v50 + 24) = v53;
    *(v50 + 32) = v54;
    *(v50 + 40) = 0;
    (*(v23 + 16))(v27, v29, v22);
    v55 = v76;
    sub_10001D284();
    v56 = v75;
    v74 = v35;
    sub_100007B4C(v38, v75, &qword_10002CFF0, &qword_10001F830);
    v58 = v77;
    v57 = v78;
    v59 = *(v78 + 16);
    v60 = v79;
    v59(v77, v55, v79);
    v61 = v80;
    sub_100007B4C(v56, v80, &qword_10002CFF0, &qword_10001F830);
    v62 = sub_100002394(&qword_10002D028, &qword_10001F868);
    v59((v61 + *(v62 + 48)), v58, v60);
    v63 = *(v57 + 8);
    v63(v55, v60);
    v35 = v74;
    sub_100007AEC(v38, &qword_10002CFF0, &qword_10001F830);
    (*(v72 + 8))(v71, v70);
    v63(v58, v60);
    sub_100007AEC(v56, &qword_10002CFF0, &qword_10001F830);
    sub_10001BDC8(v61, v35);
    v36 = 0;
  }

  (*(v84 + 56))(v35, v36, 1, v85);
  v64 = v83;
  sub_100007B4C(v35, v83, &qword_10002D000, &qword_10001F840);
  v65 = v86;
  v67 = v81;
  v66 = v82;
  *v86 = v82;
  v65[1] = v67;
  v68 = sub_100002394(&qword_10002D008, &qword_10001F848);
  sub_100007B4C(v64, v65 + *(v68 + 48), &qword_10002D000, &qword_10001F840);
  sub_10001BD48(v66);
  sub_100007AEC(v35, &qword_10002D000, &qword_10001F840);
  sub_100007AEC(v64, &qword_10002D000, &qword_10001F840);
  return sub_10001BD88(v66);
}

uint64_t sub_10001A978@<X0>(void (*a1)(uint64_t *__return_ptr)@<X1>, uint64_t *a2@<X8>)
{
  a1(v5);
  if (v6)
  {
    sub_10001B900(v5, v6);
    v3 = sub_10001D2B4();
    result = sub_10001B8B4(v5);
  }

  else
  {
    result = sub_100007AEC(v5, &qword_10002CEE8, &qword_10001F778);
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void *sub_10001AA10@<X0>(void *a1@<X8>)
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v3 = result;
    type metadata accessor for WidgetPassImagesProvider();
    result = swift_allocObject();
    result[5] = 0;
    result[6] = 0;
    result[4] = 0;
    *(result + 56) = -1;
    result[8] = v3;
    *(result + 1) = xmmword_10001E7E0;
    *a1 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001AA94()
{
  v1 = *v0;
  sub_10001CAA4();
  swift_retain_n();
  sub_100002394(&qword_10002CE70, &qword_10001F730);
  sub_10001BE38(&qword_10002CE78, &type metadata accessor for FlightLiveActivityAttributes);
  sub_10001AB98();
  return sub_10001D424();
}

unint64_t sub_10001AB98()
{
  result = qword_10002CE80;
  if (!qword_10002CE80)
  {
    sub_1000023DC(&qword_10002CE70, &qword_10001F730);
    sub_1000023DC(&qword_10002CE88, &qword_10001F738);
    sub_1000023DC(&qword_10002CE90, &qword_10001F740);
    sub_10001ACA4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE80);
  }

  return result;
}

unint64_t sub_10001ACA4()
{
  result = qword_10002CE98;
  if (!qword_10002CE98)
  {
    sub_1000023DC(&qword_10002CE90, &qword_10001F740);
    sub_10000266C(&qword_10002CEA0, &qword_10002CEA8, &qword_10001F748);
    sub_10000266C(&qword_10002CEB0, &qword_10002CEB8, &unk_10001F750);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CE98);
  }

  return result;
}

uint64_t sub_10001AD88()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_10001AE60()
{
  result = qword_10002CED8;
  if (!qword_10002CED8)
  {
    sub_1000023DC(&qword_10002CEC8, &qword_10001F768);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CED8);
  }

  return result;
}

uint64_t sub_10001AF1C@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = sub_100002394(&qword_10002D098, &unk_10001F8B8);
  v27 = *(v1 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100002394(&qword_10002C7E8, &qword_10001E540);
  v28 = *(v9 - 8);
  v10 = v28;
  v11 = *(v28 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100002394(&qword_10002C708, &qword_10001E4B8);
  sub_10001D464();
  sub_100002394(&qword_10002C710, &unk_10001E4C0);
  v26 = v8;
  sub_10001D434();
  v17 = *(v10 + 16);
  v17(v14, v16, v9);
  v18 = *(v2 + 16);
  v19 = v8;
  v20 = v1;
  v18(v6, v19, v1);
  v21 = v29;
  v17(v29, v14, v9);
  v22 = &v21[*(sub_100002394(&qword_10002D0A0, &qword_10001F8C8) + 48)];
  v18(v22, v6, v20);
  v23 = *(v27 + 8);
  v23(v26, v20);
  v24 = *(v28 + 8);
  v24(v16, v9);
  v23(v6, v20);
  return (v24)(v14, v9);
}

uint64_t sub_10001B1EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_100002394(&qword_10002CFC0, &qword_10001F800);
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v21 - v15;
  sub_100002394(&qword_10002CEF8, &qword_10001F788);
  sub_10001D464();
  sub_100002394(&qword_10002CF08, &qword_10001F798);
  sub_10001D434();
  sub_10001BCD8(v16, v14);
  v17 = v3[2];
  v17(v7, v9, v2);
  sub_10001BCD8(v14, a1);
  v18 = sub_100002394(&qword_10002CFC8, &qword_10001F808);
  v17((a1 + *(v18 + 48)), v7, v2);
  v19 = v3[1];
  v19(v9, v2);
  sub_100007AEC(v16, &qword_10002CFB0, &qword_10001F7F8);
  v19(v7, v2);
  return sub_100007AEC(v14, &qword_10002CFB0, &qword_10001F7F8);
}

uint64_t sub_10001B448@<X0>(char *a1@<X8>)
{
  v29 = a1;
  v1 = sub_100002394(&qword_10002CFD0, &qword_10001F810);
  v27 = *(v1 - 8);
  v2 = v27;
  v3 = *(v27 + 64);
  v4 = __chkstk_darwin(v1);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v26 - v7;
  v9 = sub_100002394(&qword_10002CFA8, &qword_10001F7F0);
  v28 = *(v9 - 8);
  v10 = v28;
  v11 = *(v28 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = &v26 - v15;
  sub_100002394(&qword_10002CF00, &qword_10001F790);
  sub_10001D464();
  sub_100002394(&qword_10002CF10, &qword_10001F7A0);
  v26 = v8;
  sub_10001D434();
  v17 = *(v10 + 16);
  v17(v14, v16, v9);
  v18 = *(v2 + 16);
  v19 = v8;
  v20 = v1;
  v18(v6, v19, v1);
  v21 = v29;
  v17(v29, v14, v9);
  v22 = &v21[*(sub_100002394(&qword_10002CFD8, &qword_10001F818) + 48)];
  v18(v22, v6, v20);
  v23 = *(v27 + 8);
  v23(v26, v20);
  v24 = *(v28 + 8);
  v24(v16, v9);
  v23(v6, v20);
  return (v24)(v14, v9);
}

double sub_10001B718()
{
  v0 = sub_10001D2C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001D1E4();
  if (v8)
  {
    sub_10001B89C(&v7, v9);
    sub_10001B89C(v9, &v7);
    sub_100002394(&qword_10002CEF0, &qword_10001F780);
    sub_10001D144();
    if (swift_dynamicCast())
    {

      sub_10001B8B4(&v7);
      return 16.0;
    }

    else
    {
      if (swift_dynamicCast())
      {
        (*(v1 + 8))(v4, v0);
      }

      sub_10001B8B4(&v7);
      return 10.0;
    }
  }

  else
  {
    sub_100007AEC(&v7, &qword_10002CEE8, &qword_10001F778);
    return 0.0;
  }
}

uint64_t sub_10001B89C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10001B8B4(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void *sub_10001B900(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_10001B94C()
{
  result = qword_10002CF30;
  if (!qword_10002CF30)
  {
    sub_1000023DC(&qword_10002CF38, &qword_10001F7B8);
    sub_10001BE38(&qword_10002CF40, &type metadata accessor for FlightWidgetHeaderView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF30);
  }

  return result;
}

unint64_t sub_10001BA10()
{
  result = qword_10002CF50;
  if (!qword_10002CF50)
  {
    sub_1000023DC(&qword_10002CF48, &qword_10001F7C0);
    sub_10001BAC0(&qword_10002CF58, &qword_10002CF60, &qword_10001F7C8, sub_10001BB44);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF50);
  }

  return result;
}

uint64_t sub_10001BAC0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000023DC(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10001BB44()
{
  result = qword_10002CF68;
  if (!qword_10002CF68)
  {
    sub_1000023DC(&qword_10002CF70, &qword_10001F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF68);
  }

  return result;
}

uint64_t sub_10001BBC8@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001A0DC(a1);
}

unint64_t sub_10001BBD0()
{
  result = qword_10002CF88;
  if (!qword_10002CF88)
  {
    sub_1000023DC(&qword_10002CF90, &qword_10001F7E0);
    sub_10000266C(&qword_10002CF98, &qword_10002CFA0, &qword_10001F7E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10002CF88);
  }

  return result;
}

uint64_t sub_10001BC88()
{
  v1 = *(v0 + 16);
  sub_100002394(&qword_10002CF18, &qword_10001F7A8);
  return sub_10001D434();
}

uint64_t sub_10001BCC8@<X0>(char *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001B448(a1);
}

uint64_t sub_10001BCD0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10001B1EC(a1);
}

uint64_t sub_10001BCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CFB0, &qword_10001F7F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BD48(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BD88(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001BDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002394(&qword_10002CFE8, &qword_10001F828);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001BE38(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001BEC4()
{
  v0 = sub_10001C914();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002394(&qword_10002D0B8, &unk_10001F8E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v17 - v7;
  sub_10001C904();
  sub_10001C8F4();
  (*(v1 + 8))(v4, v0);
  v9 = sub_10001C8E4();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    result = sub_10001C0C8(v8);
    v12 = 0;
  }

  else
  {
    v13 = sub_10001C8D4();
    v15 = v14;
    (*(v10 + 8))(v8, v9);
    v17[2] = v13;
    v17[3] = v15;
    v17[0] = 21333;
    v17[1] = 0xE200000000000000;
    sub_1000034E8();
    v16 = sub_10001D584();

    v12 = v16 == 0;
  }

  byte_10002D1D8 = v12;
  return result;
}

uint64_t sub_10001C0C8(uint64_t a1)
{
  v2 = sub_100002394(&qword_10002D0B8, &unk_10001F8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10001C16C(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_10002EA18 == -1)
  {
    if (qword_10002EA20)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_10001C634();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_10002EA20)
    {
      return _availability_version_check();
    }
  }

  if (qword_10002EA10 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_10001C64C();
    a3 = v10;
    a4 = v9;
    v8 = dword_10002EA00 < v11;
    if (dword_10002EA00 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_10002EA04 > a3)
      {
        return 1;
      }

      if (dword_10002EA04 >= a3)
      {
        return dword_10002EA08 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_10002EA00 < a2;
  if (dword_10002EA00 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10001C300(uint64_t result)
{
  v1 = qword_10002EA20;
  if (qword_10002EA20)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_10002EA20 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_10002EA00, &dword_10002EA04, &dword_10002EA08);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}