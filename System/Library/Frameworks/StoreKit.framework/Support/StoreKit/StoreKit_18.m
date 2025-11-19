uint64_t sub_1002155E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10013BDE0();
  sub_1000B02BC();
  sub_1000ED800();
  v10 = swift_task_alloc();
  v11 = sub_1000B00E0(v10);
  *v11 = v12;
  v11[1] = sub_1000AFC98;
  sub_1002193AC();
  sub_10013BDF8();

  return v20(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_10021567C()
{

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1002156B8()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001FBA54(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_100215838()
{
  result = qword_1003D21B0;
  if (!qword_1003D21B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D21B0);
  }

  return result;
}

uint64_t sub_1002158E4()
{
  sub_1000B072C();
  sub_1000B0004();
  sub_100219940();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10021A1B4(v1);
  sub_1000C71E8();
  sub_10021ABB0();
  sub_1000B0718();

  return sub_100200948(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100215984()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000B06A8();
  v0 = type metadata accessor for ProductPageLookupRequest.URLRequest();
  sub_1000B046C(v0);
  sub_10021A0CC();
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  sub_10021A1B4(v2);
  sub_1000C71E8();
  sub_10021ABB0();
  sub_1000B0604();

  return sub_1002029A0(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100215A78()
{
  sub_10013BAC0();
  sub_1000EDA60();
  v0 = sub_100219978();
  v1 = type metadata accessor for PurchaseIntentRequest.Add(v0);
  sub_1000B046C(v1);
  sub_1002197F0();
  sub_10021A0CC();
  v2 = swift_task_alloc();
  v3 = sub_1001C5480(v2);
  *v3 = v4;
  v3[1] = sub_1000AFC98;
  sub_1002194D8();
  sub_1001240F8();

  return sub_100203E3C(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100215D58()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_10021953C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_1000B0604();

  return sub_100209040(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100215DF0()
{
  sub_10013BDE0();
  sub_1000B02BC();
  sub_100219978();
  v0 = type metadata accessor for StorefrontRequest();
  sub_1000B046C(v0);
  sub_100219A08();
  sub_10021AB70();
  v1 = swift_task_alloc();
  v2 = sub_1001C5480(v1);
  *v2 = v3;
  sub_10021AC3C(v2);
  sub_1002197D8();
  sub_10013BDF8();

  return sub_10020AABC(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100215EE0()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_10021A268();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_100219934();
  sub_1002193F8();
  sub_1000EDC30();

  return sub_10020BDF0(v3, v4, v5, v6, v7);
}

uint64_t sub_100215F7C()
{
  _Block_release(*(v0 + 16));
  sub_1001077A8();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100215FB8()
{
  swift_unknownObjectRelease();

  sub_10021A7F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10021600C()
{
  sub_10021AEEC();
  type metadata accessor for StorefrontRequest();
  sub_1001BA8C8();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = (v0 + v3);
  type metadata accessor for ClientOverride(0);
  v5 = sub_1002199C0();
  if (!sub_10021A5F4(v5))
  {
    sub_100219AEC();
    if (!(!v8 & v7))
    {
      sub_10008E168(*v4, v6);
    }

    v9 = *(v1 + 28);
    v10 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_10021A97C(v10))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v11 + 8))(v4 + v9);
    }

    v12 = *(v1 + 40);
    v13 = type metadata accessor for UUID();
    if (!sub_1001BA958(v13))
    {
      sub_10012ADC8();
      (*(v14 + 8))(v4 + v12, v1);
    }
  }

  sub_10021A4C8();
  sub_1001BA978();

  sub_10021AED8();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_100216198()
{
  sub_100093D08();
  type metadata accessor for PurchaseIntentRequest.Query(0);
  sub_1001BA8C8();
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  swift_unknownObjectRelease();

  type metadata accessor for Date();
  sub_10013B618();
  (*(v5 + 8))(v1 + v4);
  v6 = (v1 + v4 + *(v0 + 20));
  type metadata accessor for ClientOverride(0);
  sub_10021A554();
  sub_100219EF0();
  if (!sub_100081D0C(v7, v8, v9))
  {
    sub_100219F2C();
    if (!(!v12 & v11))
    {
      sub_10008E168(*v6, v10);
    }

    v13 = *(v2 + 28);
    v14 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v6 + v13, 3, v14))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v15 + 8))(v6 + v13);
    }

    v16 = *(v2 + 40);
    v17 = type metadata accessor for UUID();
    sub_100219EF0();
    if (!sub_100081D0C(v18, v19, v20))
    {
      sub_10012ADC8();
      (*(v21 + 8))(v6 + v16, v17);
    }
  }

  sub_10021A4C8();
  sub_1001BA978();
  sub_10021AB20();

  sub_100093CB8();

  return _swift_deallocObject(v22, v23, v24);
}

uint64_t sub_100216380()
{
  sub_10021AEEC();
  type metadata accessor for PurchaseIntentRequest.Remove(0);
  sub_1001BA8C8();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  swift_unknownObjectRelease();
  v6 = (v0 + v3);
  type metadata accessor for ClientOverride(0);
  v7 = sub_1002199C0();
  if (!sub_10021A5F4(v7))
  {
    sub_100219AEC();
    if (!(!v10 & v9))
    {
      sub_10008E168(*v6, v8);
    }

    v11 = *(v1 + 28);
    v12 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_10021A97C(v12))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v13 + 8))(v6 + v11);
    }

    v14 = *(v1 + 40);
    v15 = type metadata accessor for UUID();
    if (!sub_1001BA958(v15))
    {
      sub_10012ADC8();
      (*(v16 + 8))(v6 + v14, v1);
    }
  }

  sub_1001BA978();
  sub_1001BA978();

  sub_10021AED8();

  return _swift_deallocObject(v17, v18, v19);
}

uint64_t sub_100216528()
{
  sub_10021AEEC();
  type metadata accessor for PurchaseIntentRequest.Add(0);
  sub_1001C5574();
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  sub_10021ABD4();
  swift_unknownObjectRelease();

  v3 = *(type metadata accessor for PurchaseIntentInternal() + 32);
  type metadata accessor for Date();
  sub_10013B618();
  (*(v4 + 8))(v0 + v2 + v3);

  sub_10021A7C0();
  sub_10021AED8();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100216668()
{
  type metadata accessor for ProductPageLookupRequest.URLRequest();
  sub_1001C5574();
  v3 = (*(v2 + 80) + 99) & ~*(v2 + 80);
  sub_10021A4C8();
  swift_unknownObjectRelease();

  v4 = *(v0 + 36);
  type metadata accessor for URL();
  sub_10013B618();
  (*(v5 + 8))(v1 + v3 + v4);
  sub_10021AB20();

  v6 = sub_10021A7B4();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_100216784()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 176, 7);
}

uint64_t sub_10021680C()
{
  sub_10021AEEC();
  type metadata accessor for ProductRequest();
  sub_1001BA8C8();
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  v4 = (v0 + v3);
  type metadata accessor for ClientOverride(0);
  v5 = sub_1002199C0();
  if (!sub_10021A5F4(v5))
  {
    sub_100219AEC();
    if (!(!v8 & v7))
    {
      sub_10008E168(*v4, v6);
    }

    v9 = *(v1 + 28);
    v10 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_10021A97C(v10))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v11 + 8))(v4 + v9);
    }

    v12 = *(v1 + 40);
    v13 = type metadata accessor for UUID();
    if (!sub_1001BA958(v13))
    {
      sub_10012ADC8();
      (*(v14 + 8))(v4 + v12, v1);
    }
  }

  sub_10021A4C8();
  j__swift_bridgeObjectRelease();

  sub_1001BA978();

  swift_unknownObjectRelease();

  sub_10021AED8();

  return _swift_deallocObject(v15, v16, v17);
}

uint64_t sub_100216A04()
{
  swift_unknownObjectRelease();

  sub_10021A790();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100216A94()
{
  sub_10021AC84();
  v2 = type metadata accessor for AcknowledgeMessageTask();
  v41 = *(*(v2 - 8) + 80);
  v3 = (v41 + 32) & ~v41;
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for SKLogger();
  sub_1000B046C(v5);
  v7 = (v4 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  type metadata accessor for AcknowledgeMessageRequest();
  sub_1001BA8C8();
  v40 = (v7 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  swift_unknownObjectRelease();
  v11 = v1 + v3;

  v12 = (v1 + v3 + *(v0 + 28));
  type metadata accessor for ClientOverride(0);
  v13 = sub_10021A0FC();
  if (!sub_100081D0C(v13, 1, v3))
  {
    sub_100219F2C();
    if (!(!v16 & v15))
    {
      sub_10008E168(*v12, v14);
    }

    v17 = *(((v41 + 32) & ~v41) + 0x1C);
    v18 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v12 + v17, 3, v18))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v19 + 8))(v12 + v17);
    }

    v20 = *(((v41 + 32) & ~v41) + 0x28);
    v21 = type metadata accessor for UUID();
    if (!sub_100081D0C(v12 + v20, 1, v21))
    {
      sub_10012ADC8();
      (*(v22 + 8))(v12 + v20, v21);
    }
  }

  v23 = *(v2 + 24);
  v24 = type metadata accessor for Logger();
  sub_100098B7C();
  v26 = *(v25 + 8);
  v26(v11 + v23, v24);

  v26(v1 + v7, v24);

  v27 = (v1 + v40 + *(v0 + 28));
  if (!sub_100081D0C(v27, 1, v3))
  {
    sub_100219F2C();
    if (!(!v16 & v15))
    {
      sub_10008E168(*v27, v28);
    }

    v29 = *(((v41 + 32) & ~v41) + 0x1C);
    v30 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v27 + v29, 3, v30))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v31 + 8))(v27 + v29);
    }

    v32 = *(((v41 + 32) & ~v41) + 0x28);
    v33 = type metadata accessor for UUID();
    if (!sub_100081D0C(v27 + v32, 1, v33))
    {
      sub_10012ADC8();
      (*(v34 + 8))(v27 + v32, v33);
    }
  }

  sub_10021A7B4();
  sub_10016C7F4();

  return _swift_deallocObject(v35, v36, v37);
}

uint64_t sub_100216EDC()
{

  sub_10021A178();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100216F60()
{

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_100216FB0(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 40));

  sub_10021A178();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100217004()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  sub_10021A7F0();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100217060()
{
  sub_10021AEEC();
  type metadata accessor for ExternalPurchaseTokenV2Response();
  sub_1001C5574();
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  v4 = *(v0 + 32);
  type metadata accessor for Date();
  sub_10013B618();
  (*(v5 + 8))(v1 + v3 + v4);

  sub_10021A7B4();
  sub_10021AED8();

  return _swift_deallocObject(v6, v7, v8);
}

uint64_t sub_100217158()
{
  sub_1000EDD30();
  sub_1000EDA60();
  v0 = type metadata accessor for ExternalPurchaseTokenV2Response();
  sub_1000B01B0(v0);
  v1 = swift_task_alloc();
  v2 = sub_1000AFE54(v1);
  *v2 = v3;
  v2[1] = sub_1000AFC98;
  sub_1002193F8();
  sub_1000EDC30();

  return sub_1001EEFE0(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_100217240(void (*a1)(void))
{
  a1(*(v1 + 32));
  a1(*(v1 + 48));
  sub_1000EDD24();

  return _swift_deallocObject(v3, v4, v5);
}

uint64_t sub_100217298()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1002172F8()
{

  sub_1000EDD24();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_10021733C()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_100219934();

  return sub_10020B1DC();
}

uint64_t sub_1002173CC()
{

  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_100217400()
{
  type metadata accessor for Date();
  sub_10013B618();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (((((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_1002174C0()
{
  sub_1000B06A8();
  v2 = type metadata accessor for Date();
  sub_1000B046C(v2);
  v4 = v3;
  v6 = v5;
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v1 + v9);
  v14 = (v1 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return sub_100141DEC(v0, v1 + v7, v11, v12, v13, v15, v16);
}

unint64_t sub_100217570()
{
  result = qword_1003D2790;
  if (!qword_1003D2790)
  {
    sub_1000852D4(&qword_1003D2788);
    sub_1002185B8(&qword_1003CFAD0, type metadata accessor for PurchaseIntentInternal);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2790);
  }

  return result;
}

unint64_t sub_100217680()
{
  result = qword_1003D27B0;
  if (!qword_1003D27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D27B0);
  }

  return result;
}

uint64_t sub_1002176D4(uint64_t a1, uint64_t a2)
{
  if ((a2 - 1) >= 3)
  {
  }

  return result;
}

uint64_t sub_1002176F0()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E7DB0(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100217788()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E7B2C(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100217820()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E78A8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002178B8()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E7624(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10021797C()
{
  sub_100098BB4();
  sub_100219894();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1002198B4(v1);

  return v4(v3);
}

uint64_t sub_100217A14()
{
  sub_100098BB4();
  sub_100219894();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1002198B4(v1);

  return v4(v3);
}

uint64_t sub_100217AAC()
{
  sub_100098BB4();
  sub_100219894();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v3 = sub_1002198B4(v1);

  return v4(v3);
}

unint64_t sub_100217B44()
{
  result = qword_1003D2808;
  if (!qword_1003D2808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2808);
  }

  return result;
}

uint64_t sub_100217B98()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E72E8(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100217C30()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E7064(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100217CD4()
{
  sub_100093D08();
  v1 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  sub_10021A148();
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for TransactionQuery(0);
  sub_1001BA8C8();
  swift_unknownObjectRelease();
  v8 = *(v3 + 8);
  v7 = v3 + 8;
  v8(v0 + ((v4 + 32) & ~v4), v1);

  v9 = sub_10021AAE4();
  type metadata accessor for ClientOverride(v9);
  v10 = sub_1002199C0();
  if (!sub_10021A5F4(v10))
  {
    sub_100219AEC();
    if (!(!v13 & v12))
    {
      sub_10008E168(*v1, v11);
    }

    v14 = *(v7 + 28);
    v15 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v1 + v14, 3, v15))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v16 + 8))(v1 + v14);
    }

    v17 = *(v7 + 40);
    v18 = type metadata accessor for UUID();
    if (!sub_10021A5F4(v1 + v17))
    {
      sub_10012ADC8();
      (*(v19 + 8))(v1 + v17, v18);
    }
  }

  v20 = sub_10021AAE4();
  type metadata accessor for TransactionQuery.Kind(v20);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:

      break;
    case 3u:
      type metadata accessor for Date();
      sub_10013B618();
      (*(v21 + 8))(v1);
      break;
    default:
      break;
  }

  sub_10021A3E8();

  sub_10021A7C0();
  sub_100093CB8();

  return _swift_deallocObject(v22, v23, v24);
}

uint64_t sub_100217F6C()
{
  sub_10013BAC0();
  sub_1000EDA60();
  v0 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000B046C(v0);
  sub_10021A148();
  v1 = type metadata accessor for TransactionQuery(0);
  sub_1000B046C(v1);
  sub_1002197F0();
  sub_10021AAD0();
  v2 = swift_task_alloc();
  v3 = sub_1001C5480(v2);
  *v3 = v4;
  sub_10021AC3C(v3);
  sub_1002197D8();
  sub_1001240F8();

  return sub_1001E35C0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1002180C4()
{
  sub_10021ACA0();
  type metadata accessor for TransactionQuery(0);
  sub_1001BA8C8();
  v28 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  v6 = v5;
  sub_10021A8C8();
  sub_10021A554();
  sub_100219EF0();
  if (!sub_100081D0C(v7, v8, v9))
  {
    sub_100219F2C();
    if (!(!v12 & v11))
    {
      sub_10008E168(*v2, v10);
    }

    v13 = *(v3 + 28);
    v14 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v2 + v13, 3, v14))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v15 + 8))(v2 + v13);
    }

    v16 = *(v3 + 40);
    v3 = type metadata accessor for UUID();
    sub_100219EF0();
    if (!sub_100081D0C(v17, v18, v19))
    {
      sub_10012ADC8();
      (*(v20 + 8))(v2 + v16, v3);
    }
  }

  v21 = v4 + *(v0 + 24);
  type metadata accessor for TransactionQuery.Kind(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 1u:
    case 2u:

      break;
    case 3u:
      type metadata accessor for Date();
      sub_10013B618();
      (*(v22 + 8))(v21);
      break;
    default:
      break;
  }

  sub_100219FE0();
  sub_10021AB20();

  (*(v6 + 8))(v1 + v3, v28);
  sub_10021A7B4();
  sub_10021A724();

  return _swift_deallocObject(v23, v24, v25);
}

uint64_t sub_10021837C()
{
  v1 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  v3 = v2;
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  v5 = sub_10021A7C0();

  return _swift_deallocObject(v5, v6, v7);
}

void sub_10021843C()
{
  sub_10021AB84();
  v0 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000B01B0(v0);

  sub_10008F770();
}

uint64_t sub_1002184E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100218508(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

uint64_t sub_100218560(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

uint64_t sub_1002185B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100218600()
{
  swift_unknownObjectRelease();

  sub_10021A790();

  return _swift_deallocObject(v1, v2, v3);
}

uint64_t sub_100218654()
{
  sub_1000EDD30();
  sub_1000EDA60();
  sub_1000EDA08();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  sub_10021938C();
  sub_100219B3C();
  sub_1000EDC30();

  return sub_1001E6DE0(v3, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t sub_1002186EC()
{
  result = qword_1003D2880;
  if (!qword_1003D2880)
  {
    sub_1000852D4(&qword_1003D2878);
    sub_100218770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2880);
  }

  return result;
}

unint64_t sub_100218770()
{
  result = qword_1003D2888;
  if (!qword_1003D2888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2888);
  }

  return result;
}

uint64_t sub_1002187D0()
{
  sub_100093D08();
  v1 = sub_100080FB4(&qword_1003D2898);
  sub_1000890DC();
  v3 = v2;
  v4 = *(v2 + 80);
  sub_10021A148();
  v6 = v5 & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for SubscriptionStatusQuery(0);
  sub_1001BA8C8();
  swift_unknownObjectRelease();
  v8 = *(v3 + 8);
  v7 = v3 + 8;
  v8(v0 + ((v4 + 32) & ~v4), v1);

  v9 = sub_10021AAE4();
  type metadata accessor for ClientOverride(v9);
  v10 = sub_1002199C0();
  if (!sub_10021A5F4(v10))
  {
    sub_100219AEC();
    if (!(!v13 & v12))
    {
      sub_10008E168(*v1, v11);
    }

    v14 = *(v7 + 28);
    v15 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v1 + v14, 3, v15))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v16 + 8))(v1 + v14);
    }

    v17 = *(v7 + 40);
    v18 = type metadata accessor for UUID();
    if (!sub_10021A5F4(v1 + v17))
    {
      sub_10012ADC8();
      (*(v19 + 8))(v1 + v17, v18);
    }
  }

  v20 = sub_10021AAE4();
  type metadata accessor for SubscriptionStatusQuery.Kind(v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for Date();
    sub_10013B618();
    (*(v22 + 8))(v1);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  sub_10021A3E8();

  sub_10021A7C0();
  sub_100093CB8();

  return _swift_deallocObject(v23, v24, v25);
}

uint64_t sub_100218A40()
{
  sub_10013BAC0();
  sub_1000EDA60();
  v0 = sub_100080FB4(&qword_1003D2898);
  sub_1000B046C(v0);
  sub_10021A148();
  v1 = type metadata accessor for SubscriptionStatusQuery(0);
  sub_1000B046C(v1);
  sub_1002197F0();
  sub_10021AAD0();
  v2 = swift_task_alloc();
  v3 = sub_1001C5480(v2);
  *v3 = v4;
  sub_10021AC3C(v3);
  sub_1002197D8();
  sub_1001240F8();

  return sub_1001E31C4(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_100218B98()
{
  sub_10021ACA0();
  type metadata accessor for SubscriptionStatusQuery(0);
  sub_1001BA8C8();
  v29 = sub_100080FB4(&qword_1003D2898);
  sub_1000890DC();
  v6 = v5;
  sub_10021A8C8();
  sub_10021A554();
  sub_100219EF0();
  if (!sub_100081D0C(v7, v8, v9))
  {
    sub_100219F2C();
    if (!(!v12 & v11))
    {
      sub_10008E168(*v2, v10);
    }

    v13 = *(v3 + 28);
    v14 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v2 + v13, 3, v14))
    {
      type metadata accessor for URL();
      sub_10013B618();
      (*(v15 + 8))(v2 + v13);
    }

    v16 = *(v3 + 40);
    v3 = type metadata accessor for UUID();
    sub_100219EF0();
    if (!sub_100081D0C(v17, v18, v19))
    {
      sub_10012ADC8();
      (*(v20 + 8))(v2 + v16, v3);
    }
  }

  v21 = v4 + *(v0 + 24);
  type metadata accessor for SubscriptionStatusQuery.Kind(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    type metadata accessor for Date();
    sub_10013B618();
    (*(v23 + 8))(v21);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
  }

  sub_100219FE0();
  sub_10021AB20();

  (*(v6 + 8))(v1 + v3, v29);
  sub_10021A7B4();
  sub_10021A724();

  return _swift_deallocObject(v24, v25, v26);
}

uint64_t sub_100218E28(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a2(0);
  sub_1000B046C(v8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  sub_10021ABD4();
  v11 = sub_100093DD0();
  v12 = sub_100080FB4(v11);
  sub_1000B01B0(v12);
  v14 = *(v5 + v6);
  v15 = *(v5 + v6 + 8);
  v16 = v5 + ((v6 + *(v13 + 80) + 16) & ~*(v13 + 80));

  return a5(a1, v5 + v10, v14, v15, v16);
}

uint64_t sub_100218F30()
{
  v1 = sub_100080FB4(&qword_1003D2898);
  sub_1000890DC();
  v3 = v2;
  v4 = (*(v2 + 80) + 56) & ~*(v2 + 80);

  (*(v3 + 8))(v0 + v4, v1);
  v5 = sub_10021A7C0();

  return _swift_deallocObject(v5, v6, v7);
}

uint64_t sub_100218FF8()
{
  sub_10021AB84();
  v4 = v3;
  v5 = sub_100080FB4(&qword_1003D2898);
  sub_1000B01B0(v5);
  return sub_100243CA4(v4, v2, v0, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

uint64_t sub_100219094(uint64_t a1, uint64_t a2)
{
  v3 = sub_1001B52B0();
  v4(v3);
  sub_100098B7C();
  v5 = sub_1001073F0();
  v6(v5);
  return a2;
}

uint64_t sub_1002190EC()
{
  v1 = sub_1000B06A8();
  v2(v1);
  sub_10013B618();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_100219444(uint64_t result)
{
  *(v1 - 112) = result;
  *(v1 - 104) = 91;
  *(v1 - 96) = 0xE100000000000000;
  return result;
}

uint64_t sub_1002194F0@<X0>(uint64_t a1@<X8>)
{
  v3 = (a1 + v1);
  *(v2 + 136) = *v3;
  result = v3[1];
  *(v2 + 144) = result;
  return result;
}

void sub_100219524(float a1)
{
  *v2 = a1;
  *(v1 + 232) = 91;
  *(v1 + 240) = 0xE100000000000000;
}

uint64_t sub_1002195A4()
{

  return swift_beginAccess();
}

uint64_t sub_10021968C()
{
  *(v1 + 4) = v2;
  *(v1 + 12) = 2082;
  return v0;
}

void sub_1002196A4()
{
  v1[12] = sub_1000D67A8;
  v1[13] = v0;
  v1[14] = v2;
}

uint64_t sub_1002196BC(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_100219718(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_100219748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  return a11;
}

void sub_100219784(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_1002198E4(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000032;

  v3 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v2);
}

unint64_t sub_10021990C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = a1;
  *(v3 + 12) = 2082;

  return sub_100080210(v4, v2, va);
}

uint64_t sub_100219988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(v9 + 16);
  v8[8] = a8;
  v8[9] = v10;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return 0;
}

unint64_t sub_100219A28(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 104));
}

uint64_t sub_100219A54()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

unint64_t sub_100219A70()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_100080210(v2, v3, (v0 - 88));
}

unint64_t sub_100219AA4()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_100080210(v2, v3, (v0 - 112));
}

unint64_t sub_100219AD0()
{

  return sub_100080210(0, 0xE000000000000000, (v0 - 104));
}

uint64_t sub_100219B28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100219B70(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

void sub_100219B8C(uint64_t a1@<X8>)
{
  *(v3 - 120) = a1;
  *(v3 - 112) = v1;
  v5 = *(v3 - 176);
  v6 = v2;

  String.append(_:)(*&v5);
}

uint64_t sub_100219CAC()
{

  return swift_arrayDestroy();
}

uint64_t sub_100219CC8()
{

  return sub_100219094(v1, v0);
}

uint64_t sub_100219CFC()
{

  return swift_dynamicCast();
}

uint64_t sub_100219D24()
{
  v3 = *(v1 - 296);

  return sub_100219094(v0, v3);
}

unint64_t sub_100219F38()
{
  v2 = v0[29];
  v3 = v0[30];

  return sub_100080210(v2, v3, v0 + 16);
}

unint64_t sub_100219F54()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);

  return sub_100080210(v2, v3, (v0 - 144));
}

unint64_t sub_100219F7C(float a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *v2 = a1;

  return sub_100080210(0, 0xE000000000000000, va);
}

uint64_t sub_100219FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = v11;
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  return a11;
}

uint64_t sub_100219FE0()
{
}

unint64_t sub_10021A1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17)
{
  v18 = a16;
  v19 = a17;

  return sub_100080210(v18, v19, &a15);
}

void sub_10021A1F8(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

void sub_10021A214(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10021A22C()
{

  return swift_arrayDestroy();
}

uint64_t sub_10021A2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = (v12 + v13);
  *v15 = a11;
  v15[1] = v11;
  return v12 + v14;
}

id sub_10021A300(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = v1;
  a1[5] = v4;
  v8 = *(v6 - 136);
  a1[6] = v2;
  a1[7] = v8;
  v9 = *(v6 - 120);
  a1[8] = v3;
  a1[9] = v9;
  a1[10] = v5;

  return v1;
}

uint64_t sub_10021A330()
{

  return swift_allocObject();
}

void sub_10021A348(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0x16u);
}

uint64_t sub_10021A368(uint64_t a1)
{

  return _BridgedStoredNSError.code.getter(v1, a1);
}

uint64_t sub_10021A388()
{

  return swift_arrayDestroy();
}

uint64_t sub_10021A3A0()
{

  return sub_100081DFC(v1, 0, 1, v0);
}

void sub_10021A3C0()
{
  v1 = *(v0 - 96);
  *(v0 - 104) = *(v0 - 104);
  *(v0 - 96) = v1;
}

uint64_t sub_10021A3CC()
{

  return dispatch thunk of CustomStringConvertible.description.getter();
}

uint64_t sub_10021A3E8()
{
}

id sub_10021A420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{

  return sub_1001DBDFC(v28, v26, 0xD000000000000029, a4, 150, v27, a7, v25 | 0x8000000000000000, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25);
}

__n128 sub_10021A44C(uint64_t a1)
{
  result = *(v2 - 168);
  v4 = *(v2 - 152);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = *(v2 - 136);
  *(a1 + 56) = v1;
  return result;
}

uint64_t sub_10021A480()
{
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  *(v1 + 112) = v3;
  v5 = *(v0 + 32);
  *(v1 + 40) = v4;
  *(v1 + 48) = v3;
  *(v1 + 56) = v5;
}

id sub_10021A4D4()
{

  return sub_10019E3E0(v1, v2, v3, v0, 0);
}

void sub_10021A500(uint64_t a1@<X8>)
{
  *(v1 - 104) = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  *(v1 - 96) = *(v1 - 128);
  v3 = 95;
  v4 = 0xE100000000000000;

  String.append(_:)(*&v3);
}

void sub_10021A52C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD000000000000019;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_10021A578()
{
  v3 = *(v1 - 232);

  return sub_100219094(v0, v3);
}

void sub_10021A5AC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10021A5C4()
{

  return sub_1002190EC();
}

void sub_10021A5DC(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

uint64_t sub_10021A5F4(uint64_t a1)
{

  return sub_100081D0C(a1, 1, v1);
}

uint64_t sub_10021A6AC()
{

  return static os_log_type_t.error.getter();
}

void sub_10021A6D4(uint64_t a1@<X8>)
{
  v2 = 0xD000000000000016;

  v3 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v2);
}

uint64_t sub_10021A6FC()
{

  return swift_task_alloc();
}

BOOL sub_10021A75C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10021A844(uint64_t a1, uint64_t a2)
{

  return sub_100219094(a1, a2);
}

uint64_t sub_10021A85C()
{
}

uint64_t sub_10021A874()
{

  return URLComponents.init(url:resolvingAgainstBaseURL:)();
}

BOOL sub_10021A898()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_10021A8B0()
{
}

uint64_t sub_10021A8C8()
{

  return type metadata accessor for ClientOverride(0);
}

uint64_t sub_10021A8EC()
{
  *(v1 + 144) = v0;

  return swift_errorRetain();
}

uint64_t sub_10021A908()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10021A920()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10021A93C()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

uint64_t sub_10021A958()
{

  return AsyncStream.init(_:bufferingPolicy:_:)();
}

uint64_t sub_10021A97C(uint64_t a1)
{

  return sub_100081D0C(v1 + v2, 3, a1);
}

uint64_t sub_10021A998()
{

  return static URL._unconditionallyBridgeFromObjectiveC(_:)();
}

void sub_10021A9BC(void *a1)
{
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);

  sub_1002141CC(v4, v5, a1);
}

void sub_10021A9E0(void *a1)
{
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);

  sub_1002141CC(v4, v5, a1);
}

uint64_t sub_10021A9FC()
{

  return sub_1002190EC();
}

uint64_t sub_10021AA18()
{
}

uint64_t sub_10021AA30()
{
}

uint64_t sub_10021AA48()
{
}

uint64_t sub_10021AA60()
{

  return TaskLocal.get()();
}

id sub_10021AA78(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_10021AB5C(void *a1)
{
  *(v4 - 104) = v3;
  a1[4] = v3;
  a1[5] = v2;
  a1[6] = v1;
  return 0;
}

uint64_t sub_10021ABA4(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10021AC54(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10021ACD8()
{
}

unint64_t sub_10021ACF8()
{

  return sub_100080210(0xD00000000000003ALL, v0 | 0x8000000000000000, (v1 - 144));
}

unint64_t sub_10021AD18()
{

  return sub_10008B5E0();
}

void *sub_10021AD38(int a1, int a2, int a3, void *aBlock)
{

  return _Block_copy(aBlock);
}

uint64_t sub_10021AD58()
{
  v3 = *(*(v1 - 112) + 48) + 40 * v0;

  return sub_10008E550(v3);
}

BOOL sub_10021AD78()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v0, v1);
}

uint64_t sub_10021AD98(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(a1 + 16) = v1;

  return swift_task_alloc();
}

uint64_t sub_10021ADB8()
{

  return _typeName(_:qualified:)();
}

void *sub_10021ADD0()
{
  v2 = *(v0 - 104);

  return sub_100086D24((v0 - 128), v2);
}

void sub_10021ADE8()
{
  v3 = *(v1 - 120);
  v4 = v0;

  String.append(_:)(*&v3);
}

uint64_t sub_10021AE00()
{
}

void sub_10021AE18()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

uint64_t sub_10021AE30()
{
}

uint64_t sub_10021AE48()
{

  return AnyHashable.init<A>(_:)();
}

uint64_t sub_10021AE60()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10021AE78()
{
}

BOOL sub_10021AE90(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t sub_10021AEA8()
{

  return sub_1002190EC();
}

void sub_10021AF00(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_100080FB4(&unk_1003CE610);
  __chkstk_darwin(v4 - 8);
  v6 = &v59 - v5;
  v7 = type metadata accessor for SKLogger();
  v8 = __chkstk_darwin(v7);
  v10 = (&v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v59 - v12);
  __chkstk_darwin(v11);
  v15 = (&v59 - v14);
  type = xpc_get_type(v2);
  if (XPC_TYPE_NULL.getter() == type)
  {
    [objc_allocWithZone(NSNull) init];
    sub_1001B52B0();
    v26 = sub_10021C22C();
    goto LABEL_17;
  }

  if (XPC_TYPE_INT64.getter() == type)
  {
    value = xpc_int64_get_value(v2);
    v28 = &type metadata for Int64;
LABEL_20:
    *(a1 + 24) = v28;
    *a1 = value;
    return;
  }

  if (XPC_TYPE_UINT64.getter() == type)
  {
    value = xpc_uint64_get_value(v2);
    v28 = &type metadata for UInt64;
    goto LABEL_20;
  }

  if (XPC_TYPE_BOOL.getter() == type)
  {
    v29 = xpc_BOOL_get_value(v2);
    *(a1 + 24) = &type metadata for Bool;
    *a1 = v29;
    return;
  }

  if (XPC_TYPE_DOUBLE.getter() == type)
  {
    v30 = xpc_double_get_value(v2);
    *(a1 + 24) = &type metadata for Double;
    *a1 = v30;
    return;
  }

  if (XPC_TYPE_STRING.getter() == type)
  {
    if (xpc_string_get_string_ptr(v2))
    {
      v31 = String.init(cString:)();
      v33 = &type metadata for String;
LABEL_25:
      *(a1 + 24) = v33;
      *a1 = v31;
      *(a1 + 8) = v32;
      return;
    }

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v37 = sub_10007EDA4(v7, qword_1003F26C8);
    sub_10007EDDC(v37, v15);
    swift_unknownObjectRetain();
    v18 = v15;
    Logger.logObject.getter();
    sub_1001B52B0();
    type metadata accessor for Logger();
    sub_10013B618();
    (*(v38 + 8))(v15);
    v39 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v15, v39))
    {
      goto LABEL_35;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v60 = v41;
    *v40 = 136315138;
    v42 = [v2 description];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = sub_100080210(v43, v45, &v60);

    *(v40 + 4) = v46;
    v47 = "Failed to get string pointer of XPC object: %s";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v18, v39, v47, v40, 0xCu);
    sub_100080F0C(v41);

    goto LABEL_34;
  }

  if (XPC_TYPE_UUID.getter() != type)
  {
    if (XPC_TYPE_DATE.getter() == type)
    {
      xpc_date_get_value_absolute();
      *(a1 + 24) = type metadata accessor for Date();
      sub_10009E720(a1);
      Date.init(timeIntervalSinceReferenceDate:)();
      return;
    }

    if (XPC_TYPE_DATA.getter() != type)
    {
      if (XPC_TYPE_ARRAY.getter() == type)
      {
        v49 = sub_10021B994(v2);
        if (!v49)
        {
          goto LABEL_36;
        }

        v7 = v49;
        v50 = &unk_1003D28E0;
      }

      else
      {
        if (XPC_TYPE_DICTIONARY.getter() != type)
        {
          if (qword_1003CBE58 != -1)
          {
            sub_100081C08();
          }

          v17 = sub_10007EDA4(v7, qword_1003F26C8);
          sub_10007EDDC(v17, v10);
          v18 = v10;
          Logger.logObject.getter();
          sub_1001B52B0();
          type metadata accessor for Logger();
          sub_10013B618();
          (*(v19 + 8))(v10);
          v20 = static os_log_type_t.error.getter();
          if (!os_log_type_enabled(v10, v20))
          {
            goto LABEL_35;
          }

          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v60 = v22;
          *v21 = 136315138;
          v23 = OpaquePointer.debugDescription.getter();
          v25 = sub_100080210(v23, v24, &v60);

          *(v21 + 4) = v25;
          _os_log_impl(&_mh_execute_header, v18, v20, "Unsupported XPC object type %s", v21, 0xCu);
          sub_100080F0C(v22);

LABEL_34:

LABEL_35:

          goto LABEL_36;
        }

        v51 = sub_10021BED8(v2);
        if (!v51)
        {
          goto LABEL_36;
        }

        v7 = v51;
        v50 = &unk_1003CC200;
      }

      v26 = sub_100080FB4(v50);
LABEL_17:
      *(a1 + 24) = v26;
      *a1 = v7;
      return;
    }

    if (xpc_data_get_bytes_ptr(v2))
    {
      xpc_data_get_length(v2);
      v31 = Data.init(bytes:count:)();
      v33 = &type metadata for Data;
      goto LABEL_25;
    }

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v52 = sub_10007EDA4(v7, qword_1003F26C8);
    sub_10007EDDC(v52, v13);
    swift_unknownObjectRetain();
    v18 = v13;
    Logger.logObject.getter();
    sub_1001B52B0();
    type metadata accessor for Logger();
    sub_10013B618();
    (*(v53 + 8))(v13);
    v39 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (!os_log_type_enabled(v13, v39))
    {
      goto LABEL_35;
    }

    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v60 = v41;
    *v40 = 136315138;
    v54 = [v2 description];
    v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v57 = v56;

    v58 = sub_100080210(v55, v57, &v60);

    *(v40 + 4) = v58;
    v47 = "Failed to get data pointer of XPC object: %s";
    goto LABEL_33;
  }

  v34 = [objc_allocWithZone(NSUUID) initWithUUIDBytes:xpc_uuid_get_bytes(v2)];
  v35 = [v34 UUIDString];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v36 = type metadata accessor for UUID();
  if (sub_100081D0C(v6, 1, v36) == 1)
  {

    sub_10013B1E8(v6, &unk_1003CE610);
LABEL_36:
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  *(a1 + 24) = v36;
  v48 = sub_10009E720(a1);
  (*(*(v36 - 8) + 32))(v48, v6, v36);
}

BOOL sub_10021B6C8()
{
  v0 = type metadata accessor for SKLogger();
  __chkstk_darwin(v0);
  v2 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = String.init(cString:)();
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_10021AF00(&v16, ObjectType);
  v7 = v17;
  if (v17)
  {
    sub_10008B5D0(&v16, v18);
    sub_100080F58(v18, &v16);
    sub_100234E50();
    sub_100080F0C(v18);
  }

  else
  {
    sub_10013B1E8(&v16, &unk_1003CCB70);
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v8 = sub_10007EDA4(v0, qword_1003F26C8);
    sub_10007EDDC(v8, v2);

    v9 = Logger.logObject.getter();
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 8))(v2, v10);
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v18[0] = v13;
      *v12 = 136315138;
      v14 = sub_100080210(v3, v5, v18);

      *(v12 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v9, v11, "Failed to get value in XPC dictionary for key: %s", v12, 0xCu);
      sub_100080F0C(v13);
    }

    else
    {
    }
  }

  return v7 != 0;
}

uint64_t sub_10021B93C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

size_t sub_10021B994(void *a1)
{
  v2 = type metadata accessor for SKLogger();
  v3 = (__chkstk_darwin)();
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v41 - v6;
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_ARRAY.getter())
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = sub_10007EDA4(v2, qword_1003F26C8);
    sub_10007EDDC(v9, v7);
    swift_unknownObjectRetain();
    v10 = Logger.logObject.getter();
    v11 = type metadata accessor for Logger();
    (*(*(v11 - 8) + 8))(v7, v11);
    v12 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v10, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *&v45 = v14;
      *v13 = 136315138;
      v15 = [a1 description];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = sub_100080210(v16, v18, &v45);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v12, "XPC object %s is not of type array", v13, 0xCu);
      sub_100080F0C(v14);
    }

    return 0;
  }

  result = xpc_array_get_count(a1);
  if ((result & 0x8000000000000000) == 0)
  {
    v23 = result;
    if (!result)
    {
      return &_swiftEmptyArrayStorage;
    }

    v24 = 0;
    v20 = &_swiftEmptyArrayStorage;
    *&v22 = 134217984;
    v41 = v22;
    v42 = v5;
    do
    {
      v25 = xpc_array_get_value(a1, v24);
      ObjectType = swift_getObjectType();
      sub_10021AF00(&v43, ObjectType);
      swift_unknownObjectRelease();
      if (v44)
      {
        sub_10008B5D0(&v43, &v45);
        sub_100080F58(&v45, &v43);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D99DC();
          v20 = v37;
        }

        v27 = v20[2];
        if (v27 >= v20[3] >> 1)
        {
          sub_1001D99DC();
          v20 = v38;
        }

        sub_100080F0C(&v45);
        v20[2] = v27 + 1;
        v28 = &v20[4 * v27];
        v29 = &v43;
      }

      else
      {
        sub_10013B1E8(&v43, &unk_1003CCB70);
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v30 = sub_10007EDA4(v2, qword_1003F26C8);
        sub_10007EDDC(v30, v5);
        v31 = Logger.logObject.getter();
        v32 = type metadata accessor for Logger();
        (*(*(v32 - 8) + 8))(v5, v32);
        v33 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = v41;
          *(v34 + 4) = v24;
          _os_log_impl(&_mh_execute_header, v31, v33, "Failed to get value in XPC array at index: %ld", v34, 0xCu);
          v5 = v42;
        }

        v35 = [objc_allocWithZone(NSNull) init];
        v46 = sub_10021C22C();
        *&v45 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1001D99DC();
          v20 = v39;
        }

        v36 = v20[2];
        if (v36 >= v20[3] >> 1)
        {
          sub_1001D99DC();
          v20 = v40;
        }

        v20[2] = v36 + 1;
        v28 = &v20[4 * v36];
        v29 = &v45;
      }

      sub_10008B5D0(v29, v28 + 2);
      ++v24;
    }

    while (v23 != v24);
    return v20;
  }

  __break(1u);
  return result;
}

uint64_t sub_10021BED8(void *a1)
{
  v2 = type metadata accessor for SKLogger();
  __chkstk_darwin(v2);
  v4 = &aBlock[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type = xpc_get_type(a1);
  if (type != XPC_TYPE_DICTIONARY.getter())
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v6 = sub_10007EDA4(v2, qword_1003F26C8);
    sub_10007EDDC(v6, v4);
    swift_unknownObjectRetain();
    v7 = Logger.logObject.getter();
    v8 = type metadata accessor for Logger();
    (*(*(v8 - 8) + 8))(v4, v8);
    v9 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v7, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315138;
      v12 = [a1 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = sub_100080210(v13, v15, aBlock);

      *(v10 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v7, v9, "XPC object %s is not of type dictionary", v10, 0xCu);
      sub_100080F0C(v11);
    }

    return 0;
  }

  v25 = &_swiftEmptyDictionarySingleton;
  v18 = swift_allocObject();
  *(v18 + 16) = &v25;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_10021C27C;
  *(v19 + 24) = v18;
  aBlock[4] = sub_10021C290;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10021B93C;
  aBlock[3] = &unk_100390DC8;
  v20 = _Block_copy(aBlock);

  xpc_dictionary_apply(a1, v20);
  _Block_release(v20);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v17 = v25;

    return v17;
  }

  __break(1u);
  return result;
}

unint64_t sub_10021C22C()
{
  result = qword_1003D28E8;
  if (!qword_1003D28E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D28E8);
  }

  return result;
}

uint64_t sub_10021C2BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10021C2E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100080FB4(&unk_1003D20F0);
    v9 = a1 + *(a3 + 28);

    return sub_100081D0C(v9, a2, v8);
  }
}

uint64_t sub_10021C390(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100080FB4(&unk_1003D20F0);
    v8 = v5 + *(a4 + 28);

    return sub_100081DFC(v8, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for AcknowledgeMessageRequest()
{
  result = qword_1003D2948;
  if (!qword_1003D2948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10021C468()
{
  sub_1000B784C();
  if (v0 <= 0x3F)
  {
    sub_100081F84();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_10021C508(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x546567617373656DLL && a2 == 0xEB00000000657079;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4449726566666FLL && a2 == 0xE700000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_10021C6B0(char a1)
{
  result = 0x546567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x4449656C646E7562;
      break;
    case 2:
      result = 0x4449726566666FLL;
      break;
    case 3:
      result = 0x764F746E65696C63;
      break;
    case 4:
      result = 0x79654B676F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10021C770(void *a1)
{
  v3 = sub_100080FB4(&qword_1003D29B0);
  sub_1000890DC();
  v5 = v4;
  __chkstk_darwin(v6);
  v8 = &v12[-v7];
  sub_100086D24(a1, a1[3]);
  sub_10021CF28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  sub_10021D2A8();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v12[14] = 1;
    sub_10021D2A8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12[13] = 2;
    sub_10021D2A8();
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for AcknowledgeMessageRequest();
    v12[12] = 3;
    type metadata accessor for ClientOverride(0);
    sub_10021D290();
    sub_10021D03C(v9, v10);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v12[11] = 4;
    sub_10021D2A8();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t sub_10021C970@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v3 - 8);
  v5 = v32 - v4;
  sub_100080FB4(&qword_1003D29A0);
  sub_1000890DC();
  v34 = v7;
  v35 = v6;
  __chkstk_darwin(v6);
  v9 = v32 - v8;
  v10 = type metadata accessor for AcknowledgeMessageRequest();
  v11 = __chkstk_darwin(v10);
  v13 = (v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *(v11 + 28);
  v15 = type metadata accessor for ClientOverride(0);
  v38 = v14;
  v16 = v13;
  sub_100081DFC(v13 + v14, 1, 1, v15);
  sub_100086D24(a1, a1[3]);
  sub_10021CF28();
  v36 = v9;
  v17 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_100080F0C(a1);
    return sub_100086DC0(v13 + v38);
  }

  else
  {
    v37 = v5;
    v18 = v34;
    v43 = 0;
    *v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[1] = v19;
    v42 = 1;
    v13[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13[3] = v20;
    v41 = 2;
    v32[1] = 0;
    v21 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v38;
    *(v16 + 32) = v21;
    *(v16 + 40) = v23;
    v40 = 3;
    sub_10021D290();
    sub_10021D03C(v24, v25);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000E0B18(v37, v16 + v22);
    v39 = 4;
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v37 = v27;
    v28 = v26;
    (*(v18 + 8))(v36, v35);
    v29 = (v16 + *(v10 + 32));
    v30 = v37;
    *v29 = v28;
    v29[1] = v30;
    sub_10021CF7C(v16, v33);
    sub_100080F0C(a1);
    return sub_10021CFE0(v16);
  }
}

uint64_t sub_10021CD7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10021C508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10021CDA4(uint64_t a1)
{
  v2 = sub_10021CF28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10021CDE0(uint64_t a1)
{
  v2 = sub_10021CF28();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10021CE4C(uint64_t a1)
{
  *(a1 + 8) = sub_10021D03C(&unk_1003D2110, type metadata accessor for AcknowledgeMessageRequest);
  result = sub_10021D03C(&qword_1003D2990, type metadata accessor for AcknowledgeMessageRequest);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10021CED0(uint64_t a1)
{
  result = sub_10021D03C(&qword_1003D2998, type metadata accessor for AcknowledgeMessageRequest);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10021CF28()
{
  result = qword_1003D29A8;
  if (!qword_1003D29A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D29A8);
  }

  return result;
}

uint64_t sub_10021CF7C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AcknowledgeMessageRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021CFE0(uint64_t a1)
{
  v2 = type metadata accessor for AcknowledgeMessageRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10021D03C(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for AcknowledgeMessageRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10021D150);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10021D18C()
{
  result = qword_1003D29B8;
  if (!qword_1003D29B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D29B8);
  }

  return result;
}

unint64_t sub_10021D1E4()
{
  result = qword_1003D29C0;
  if (!qword_1003D29C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D29C0);
  }

  return result;
}

unint64_t sub_10021D23C()
{
  result = qword_1003D29C8;
  if (!qword_1003D29C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D29C8);
  }

  return result;
}

char *sub_10021D2B8()
{
  v0 = Substring.distance(from:to:)();
  if (v0)
  {
    v1 = v0;
    result = sub_1002134EC(0, v0 & ~(v0 >> 63), 0);
    if (v1 < 0)
    {
      __break(1u);
      return result;
    }

    do
    {
      v3 = Substring.subscript.getter();
      v5 = v4;
      v6 = v3 == 45 && v4 == 0xE100000000000000;
      if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {

        v5 = 0xE100000000000000;
        v7 = 43;
      }

      else
      {
        v11 = v7 == 95 && v5 == 0xE100000000000000;
        if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v5 = 0xE100000000000000;
          v7 = 47;
        }
      }

      v9 = _swiftEmptyArrayStorage[2];
      v8 = _swiftEmptyArrayStorage[3];
      if (v9 >= v8 >> 1)
      {
        sub_1002134EC((v8 > 1), v9 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v9 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v9];
      v10[4] = v7;
      v10[5] = v5;
      Substring.index(after:)();
      --v1;
    }

    while (v1);
  }

  sub_100080FB4(&qword_1003D29D8);
  sub_10021DAC4();
  v15 = String.init<A>(_:)();

  v12 = String.count.getter();

  if (v12 % 4)
  {
    v13._countAndFlagsBits = 61;
    v13._object = 0xE100000000000000;
    v14 = String.init(repeating:count:)(v13, 4 - v12 % 4);
    String.append(_:)(v14);
  }

  return v15;
}

id sub_10021D4FC()
{
  v0 = objc_allocWithZone(type metadata accessor for SQLiteFunction());
  result = sub_10009F7D0(0xD000000000000013, 0x800000010031F680, 1, 0, 1, 0, sub_10021D574, 0);
  qword_1003F26E8 = result;
  return result;
}

uint64_t sub_10021D574(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (v3 != 1 || *(a1 + 48) != 2)
  {
    return 0;
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  sub_1001D940C(v6, v5, v14);
  if (!v14[3])
  {
    return 0;
  }

  sub_10021D2B8();
  v7 = Data.init(base64Encoded:options:)();
  v9 = v8;

  if (v9 >> 60 == 15)
  {
    sub_10021DA5C(v14);
    return 0;
  }

  static String.Encoding.utf8.getter();
  v10 = String.init(data:encoding:)();
  v13 = v12;
  sub_10021DA5C(v14);
  sub_1000BC8B4(v7, v9);
  if (!v13)
  {
    return 0;
  }

  return v10;
}

id sub_10021D728()
{
  v0 = objc_allocWithZone(type metadata accessor for SQLiteFunction());
  result = sub_10009F7D0(0xD000000000000019, 0x800000010031F660, 1, 0, 1, 0, sub_10021D7A0, 0);
  qword_1003F26F0 = result;
  return result;
}

uint64_t sub_10021D7A0(uint64_t a1)
{
  v2 = type metadata accessor for String.Encoding();
  __chkstk_darwin(v2 - 8);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  if (v3 != 1 || *(a1 + 48) != 3)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  sub_1000BC808(v8, v7);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = sub_100028E90(isa, 0);

  if (!v10)
  {
    sub_1000A0954(v8, v7, 3);
    return 0;
  }

  v19 = 0;
  v11 = [objc_opt_self() dataWithJSONObject:v10 options:0 error:&v19];

  v12 = v19;
  if (v11)
  {
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v17 = v16;
    sub_1000A0954(v8, v7, 3);
    sub_10008E168(v13, v15);
    if (v17)
    {
      return v5;
    }

    return 0;
  }

  v18 = v12;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  sub_1000A0954(v8, v7, 3);

  return 0;
}

id sub_10021D9C8(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = *a2;

  return v3;
}

uint64_t sub_10021DA5C(uint64_t a1)
{
  v2 = sub_100080FB4(&qword_1003D29D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10021DAC4()
{
  result = qword_1003D29E0;
  if (!qword_1003D29E0)
  {
    sub_1000852D4(&qword_1003D29D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D29E0);
  }

  return result;
}

id sub_10021DB28(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequest:a1];
  sub_10021DF28();

  return v4;
}

uint64_t sub_10021DB90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    v9 = a5;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for SKLogger();
    sub_10007EDA4(v10, qword_1003F26C8);
    sub_1001CA63C();
    a4 = v11;
    v9 = v12;
  }

  v13 = *(a3 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v14 = *(a3 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

  v18[0] = a4;
  v18[1] = v9;
  v18[2] = v13;
  v18[3] = v14;
  v18[4] = a1;
  v18[5] = a2;
  v19 = sub_1001AA204(v15);
  v20 = sub_1001A79F8(v19) & 1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  sub_1000BC808(a1, a2);
  JSONEncoder.init()();
  sub_100217B44();
  v16 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  sub_100172108(v18);
  return v16;
}

uint64_t sub_10021DEC0(char a1)
{
  if (a1)
  {
    return 0x786F62646E6173;
  }

  else
  {
    return 0x67696C6674736574;
  }
}

uint64_t sub_10021DEFC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10021DEC0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10021DF28()
{
  v1 = sub_1001A8808();
  [v0 setBag:{sub_1001A7AB4(objc_msgSend(v0, "setClientInfo:", v1))}];

  return swift_unknownObjectRelease();
}

id sub_10021DFAC(void *a1)
{
  v2 = v1;
  sub_10008E5A4(0, &qword_1003D2AB0);
  v4 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  sub_10008E5A4(0, &qword_1003D2AB8);
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {

LABEL_5:
    type metadata accessor for PaymentSheetRequest();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v7 = v6;
  *&v2[OBJC_IVAR___PaymentSheetRequest_request] = v5;
  *&v2[OBJC_IVAR___PaymentSheetRequest_purchaseInfo] = v6;
  v8 = v5;
  v9 = v7;
  v10 = sub_10021E36C();
  v11 = [a1 decodeBoolForKey:v10];

  v2[OBJC_IVAR___PaymentSheetRequest_sandbox] = v11;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for PaymentSheetRequest();
  v12 = objc_msgSendSuper2(&v14, "init");

  return v12;
}

void sub_10021E13C(void *a1)
{
  v3 = String._bridgeToObjectiveC()();
  sub_10021E390();

  v4 = String._bridgeToObjectiveC()();
  sub_10021E390();

  v5 = *(v1 + OBJC_IVAR___PaymentSheetRequest_sandbox);
  v6 = sub_10021E36C();
  [a1 encodeBool:v5 forKey:v6];
}

id sub_10021E2C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PaymentSheetRequest();
  return objc_msgSendSuper2(&v2, "dealloc");
}

NSString sub_10021E36C()
{

  return String._bridgeToObjectiveC()();
}

id sub_10021E390()
{
  v5 = *(v3 + 112);

  return [v0 v5];
}

id sub_10021E3B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v7 = v6;
  v14 = [sub_1001A7AB4(a1) URLForKey:a2];
  swift_unknownObjectRelease();
  v15 = objc_allocWithZone(v7);
  v16 = sub_10021E56C(a1, v14, a3, a4, a5, a6);

  return v16;
}

uint64_t sub_10021E46C()
{
  sub_100106050();
  if (sub_100223184())
  {

    return 0;
  }

  else if (sub_100223184())
  {

    return 1;
  }

  else
  {
    v1 = sub_100223184();

    if (v1)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

id sub_10021E56C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v8 = v6;
  sub_100219CE4();
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC9storekitd7Request_dialogContext] = 0;
  v15 = OBJC_IVAR____TtC9storekitd7Request_logKey;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v16 = &v8[v15];
  v17 = type metadata accessor for SKLogger();
  sub_10007EDA4(v17, qword_1003F26C8);
  sub_1001CA63C();
  *v16 = v18;
  v16[1] = v19;
  v8[OBJC_IVAR____TtC9storekitd7Request_useBiometrics] = 0;
  *&v8[OBJC_IVAR____TtC9storekitd7Request_client] = v7;
  *&v8[OBJC_IVAR____TtC9storekitd7Request_bagURL] = a2;
  *&v8[OBJC_IVAR____TtC9storekitd7Request_bodyEncoding] = a3;
  *&v8[OBJC_IVAR____TtC9storekitd7Request_parameters] = a6;
  *&v8[OBJC_IVAR____TtC9storekitd7Request_method] = a4;
  v8[OBJC_IVAR____TtC9storekitd7Request_accountRequirement] = a5;
  v21.receiver = v8;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

uint64_t sub_10021E960()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 408) = v0;

  if (!v0)
  {
    *(v5 + 416) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10021EA6C()
{
  sub_1000B0004();
  v1 = *(v0 + 416);
  v2 = *(v0 + 392);
  v3 = *(v0 + 352);
  [v2 setAccount:v1];

  v4 = sub_1001A8808();
  [v2 setClientInfo:v4];

  [v2 setRequestEncoding:*(v3 + OBJC_IVAR____TtC9storekitd7Request_bodyEncoding)];
  if (*(v3 + OBJC_IVAR____TtC9storekitd7Request_useBiometrics) == 1)
  {
    v5 = *(v0 + 392);
    v6 = [objc_allocWithZone(AMSKeychainOptions) init];
    [v6 setStyle:{objc_msgSend(objc_opt_self(), "preferredAttestationStyle")}];
    [v6 setPurpose:0];
    [v5 setKeychainOptions:v6];
  }

  v7 = *(v0 + 384);
  v8 = *(v0 + 352);
  v9 = objc_opt_self();
  v10 = sub_1001A8808();
  v11 = [v9 ams_configurationWithProcessInfo:v10 bag:sub_1001A7AB4(v10)];
  *(v0 + 424) = v11;
  swift_unknownObjectRelease();

  v12 = v7 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID;
  v13 = *(v7 + OBJC_IVAR____TtC9storekitd6Client_callerBundleID);
  v14 = *(v12 + 8);

  sub_100222D84(v13, v14, v11);
  sub_100222DE8();
  v15 = v11;
  v16 = v8;
  v17 = sub_1001AB3E4(v15, v8, 0);
  *(v0 + 432) = v17;
  v18 = *&v16[OBJC_IVAR____TtC9storekitd7Request_method];
  if (*&v16[OBJC_IVAR____TtC9storekitd7Request_parameters])
  {
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v19.super.isa = 0;
  }

  v20 = [*(v0 + 392) requestWithMethod:v18 bagURL:*(v0 + 368) parameters:v19.super.isa];
  *(v0 + 440) = v20;
  swift_unknownObjectRelease();
  v21 = [v17 dataTaskPromiseWithRequestPromise:v20];
  *(v0 + 448) = v21;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 304;
  *(v0 + 24) = sub_10021EDC8;
  v22 = swift_continuation_init();
  *(v0 + 136) = sub_100080FB4(&qword_1003CDC88);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1000D67A8;
  *(v0 + 104) = &unk_100391040;
  *(v0 + 112) = v22;
  [v21 resultWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16, v23, v24, v25, v26, v27, v28, v29);
}

uint64_t sub_10021EDC8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_10021F038()
{
  sub_10008BE9C();

  sub_100098AC4();

  return v1();
}

uint64_t sub_10021F094()
{
  v116 = v0;
  v3 = *(v0 + 448);
  swift_willThrow();

  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 userInfo];
  v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v7, v8, v6, (v0 + 144));

  if (!*(v0 + 168))
  {
    v14 = v0 + 144;
LABEL_14:
    sub_10008105C(v14);
    goto LABEL_15;
  }

  sub_100080FB4(&qword_1003CC200);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v9 = *(v0 + 328);
  sub_1001DA990(0x646F43726F727265, 0xE900000000000065, v9, (v0 + 176));
  if (!*(v0 + 200))
  {

    v14 = v0 + 176;
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_15:
    v15 = [v4 isCancelledError];
    v16 = *(v0 + 456);
    v17 = *(v0 + 360);
    if (v15)
    {
      v114 = 0;
      v115 = 0xE000000000000000;
      _StringGuts.grow(_:)(21);
      *(v0 + 256) = 0;
      *(v0 + 264) = 0xE000000000000000;
      v18._countAndFlagsBits = 0xD000000000000013;
      v18._object = 0x800000010031FB90;
      String.append(_:)(v18);
      *(v0 + 320) = v16;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v20 = *(v0 + 256);
      v19 = *(v0 + 264);

      static os_log_type_t.error.getter();
      sub_100223324();

      Logger.logObject.getter();
      sub_1000B0404();

      if (sub_10022330C())
      {
        v2 = sub_10008E688();
        v113 = sub_10008E670();
        *v2 = 136446466;
        sub_10009F0F8();
        sub_1002232D4(v21, v22, v23, v24, v25, v26, v27, v28, v100, v103, v4, v113, v114, v115);
        sub_10009F134();
        sub_1000E3F4C(v29, v30, v31, v32, v33, v34, v35, v36, v101, v104, v107, v113, v114, v115);

        v40 = sub_1002231D8(v37, v38, v39);

        *(v2 + 14) = v40;
        sub_1002232C8();
        _os_log_impl(v41, v42, v43, v44, v2, 0x16u);
        swift_arrayDestroy();
        v4 = v108;
        sub_100081C28();
        sub_100081C28();
      }

      else
      {
      }

      sub_100223154();
      sub_10008B5E0();
      sub_1000894A0();
      *v70 = 11;
    }

    else
    {
      v114 = 0;
      v115 = 0xE000000000000000;
      _StringGuts.grow(_:)(18);
      *(v0 + 240) = 0;
      *(v0 + 248) = 0xE000000000000000;
      v45._object = 0x8000000100319D70;
      v45._countAndFlagsBits = 0xD000000000000010;
      String.append(_:)(v45);
      *(v0 + 312) = v16;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v20 = *(v0 + 240);
      v19 = *(v0 + 248);

      static os_log_type_t.error.getter();
      sub_100223324();

      Logger.logObject.getter();
      sub_1000B0404();

      if (sub_10022330C())
      {
        v2 = sub_10008E688();
        v113 = sub_10008E670();
        *v2 = 136446466;
        sub_10009F0F8();
        sub_1002232D4(v46, v47, v48, v49, v50, v51, v52, v53, v100, v103, v4, v113, v114, v115);
        sub_10009F134();
        sub_1000E3F4C(v54, v55, v56, v57, v58, v59, v60, v61, v102, v105, v109, v113, v114, v115);

        v65 = sub_1002231D8(v62, v63, v64);

        *(v2 + 14) = v65;
        sub_1002232C8();
        _os_log_impl(v66, v67, v68, v69, v2, 0x16u);
        swift_arrayDestroy();
        v4 = v110;
        sub_100081C28();
        sub_100081C28();
      }

      else
      {
      }

      sub_100223154();
      sub_1000D35BC();
      sub_1000894A0();
      *v71 = xmmword_1002F0E20;
    }

    goto LABEL_24;
  }

  v10 = *(v0 + 336);
  sub_1001DA990(0x73654D726F727265, 0xEC00000065676173, v9, (v0 + 208));

  if (*(v0 + 232))
  {
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = *(v0 + 288);
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = *(v0 + 296);
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_10008105C(v0 + 208);
    v12 = 0;
    v13 = 0;
  }

  v74 = (*(v0 + 352) + *(v0 + 376));
  _StringGuts.grow(_:)(21);

  v114 = 0x2074736575716552;
  v115 = 0xEF2064656C696166;
  v106 = v10;
  *(v0 + 344) = v10;
  v75._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v75);

  v76._countAndFlagsBits = 8250;
  v76._object = 0xE200000000000000;
  String.append(_:)(v76);
  *(v0 + 272) = v12;
  *(v0 + 280) = v13;
  sub_100080FB4(&unk_1003CE550);
  v77._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v77);

  v78 = v114;
  v1 = v115;
  v2 = *v74;
  v79 = v74[1];

  v20 = static os_log_type_t.error.getter();

  v19 = Logger.logObject.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v111 = v4;
    v80 = sub_10008E688();
    sub_10008E670();
    *v80 = 136446466;
    sub_10009F0F8();
    v113 = v81;
    v114 = v82;
    v115 = v83;
    v84._countAndFlagsBits = v2;
    v84._object = v79;
    String.append(_:)(v84);
    sub_10009F134();
    v2 = v78;
    v93 = sub_1000E3F4C(v85, v86, v87, v88, v89, v90, v91, v92, v100, v106, v111, v113, v114, v115);

    *(v80 + 4) = v93;
    *(v80 + 12) = 2082;
    v94 = sub_100080210(v2, v1, &v113);

    *(v80 + 14) = v94;
    _os_log_impl(&_mh_execute_header, v19, v20, "%{public}s%{public}s", v80, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    v4 = v112;
    sub_100081C28();
  }

  else
  {
  }

  sub_100223154();
  v95 = sub_1000DF074(v106);
  v97 = v96;
  sub_1000DF640();
  sub_1000894A0();
  if (v97)
  {
    v99 = -1;
  }

  else
  {
    v99 = v95;
  }

  *v98 = v99;
LABEL_24:
  swift_willThrow();

  sub_100098AC4();

  return v72();
}

uint64_t sub_10021F878()
{
  *(v1 + 16) = v0;
  type metadata accessor for Client.Server(0);
  *(v1 + 24) = swift_task_alloc();

  return _swift_task_switch(sub_10021F908, 0, 0);
}

uint64_t sub_100220010()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_100220128()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_10009F198();

  return v0(0);
}

uint64_t sub_100220190()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_1000AFE64();
  *v5 = v4;
  v6 = *v0;
  sub_100098AB4();
  *v7 = v6;

  v8 = swift_task_alloc();
  *(v4 + 88) = v8;
  *v8 = v6;
  v8[1] = sub_1002202A8;

  return sub_1000A10AC(v2);
}

uint64_t sub_1002202A8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100220398()
{
  sub_1000B016C();
  v46 = v0;
  if (*(v0 + 96))
  {

    sub_10009F198();
    sub_1000B0178();

    __asm { BRAA            X2, X16 }
  }

  v5 = *(v0 + 120);
  v6 = (*(v0 + 16) + *(v0 + 72));
  v8 = *v6;
  v7 = v6[1];

  if ((v5 & 1) == 0)
  {
    v26 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_1000B02A4();
    if (os_log_type_enabled(v5, v26))
    {
      sub_1000B0064();
      sub_100143E48();
      *v1 = 136446466;
      sub_10008E5EC();
      v27._countAndFlagsBits = v8;
      v27._object = v7;
      String.append(_:)(v27);
      sub_10008E604();
      v36 = sub_10008E638(v28, v29, v30, v31, v32, v33, v34, v35, v43, v44, v45);

      *(v1 + 4) = v36;
      *(v1 + 12) = 2082;
      *(v1 + 14) = sub_100080210(0xD000000000000017, v2 | 0x8000000000000000, &v43);
      sub_1002231A8(&_mh_execute_header, v37, v38, "%{public}s%{public}s");
      sub_100098BC0();
      sub_10008BF3C();
      sub_1000AFF34();
    }

    sub_1000D35BC();
    v39 = sub_1000894A0();
    sub_100223288(xmmword_1002FB3A0, v39, v40);

    sub_100098AC4();
    sub_1000B0178();

    __asm { BRAA            X1, X16 }
  }

  v9 = static os_log_type_t.default.getter();

  Logger.logObject.getter();
  sub_1000B02A4();
  if (os_log_type_enabled(v5, v9))
  {
    sub_1000B0064();
    sub_100143E48();
    *v1 = 136446466;
    sub_10008E5EC();
    v10._countAndFlagsBits = v8;
    v10._object = v7;
    String.append(_:)(v10);
    sub_10008E604();
    v19 = sub_10008E638(v11, v12, v13, v14, v15, v16, v17, v18, v43, v44, v45);

    *(v1 + 4) = v19;
    *(v1 + 12) = 2082;
    *(v1 + 14) = sub_100080210(0xD00000000000001FLL, v2 | 0x8000000000000000, &v43);
    sub_1002231A8(&_mh_execute_header, v20, v21, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_1000AFF34();
  }

  v22 = swift_task_alloc();
  *(v0 + 104) = v22;
  *v22 = v0;
  sub_1002232A0(v22);
  sub_1000B0178();

  return sub_100220938(v23);
}

uint64_t sub_100220684()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {

    sub_1000AFF14();

    return v7();
  }

  else
  {

    v9 = sub_1002232B4();

    return v10(v9);
  }
}

uint64_t sub_1002207AC()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {

    sub_1000AFF14();

    return v7();
  }

  else
  {

    v9 = sub_1002232B4();

    return v10(v9);
  }
}

uint64_t sub_1002208D4()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100220938(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100220958, 0, 0);
}

uint64_t sub_100220C54()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_1000AFE64();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;
  *(v5 + 56) = v0;

  if (!v0)
  {

    *(v5 + 64) = v3;
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_100220D68()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();
  sub_10009F198();
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t sub_100220DC8()
{
  sub_10008BE9C();

  swift_unknownObjectRelease();
  sub_100098AC4();

  return v0();
}

uint64_t sub_100220E2C()
{
  sub_10008BE9C();
  v1[5] = v2;
  v1[6] = v0;
  v3 = type metadata accessor for URL();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002212AC()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    sub_100223120(*(v3 + 96));
  }

  else
  {
    sub_100223104(*(v3 + 96));
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1002213A8()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {
    sub_100223120(*(v3 + 112));
  }

  else
  {
    sub_100223104(*(v3 + 112));
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1002215EC()
{
  sub_10008BE9C();
  swift_unknownObjectRelease();

  sub_100098AC4();

  return v0();
}

uint64_t sub_100221670(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1002230B4;

  return sub_100220E2C();
}

uint64_t sub_100221750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  return sub_1000AFCB8();
}

uint64_t sub_100221A8C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100221D00()
{
  sub_100098BB4();
  swift_willThrow();
  swift_unknownObjectRelease();
  sub_100098AC4();

  return v0();
}

uint64_t sub_100221D8C(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_100221E6C;

  return sub_100221750(v13, v14, v12);
}

uint64_t sub_100221E6C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *(*v2 + 16);
  v10 = *v2;
  sub_100098AB4();
  *v11 = v10;

  v12 = *(v5 + 48);
  if (v3)
  {
    v13 = _convertErrorToNSError(_:)();

    (v12)[2](v12, 0, v13);

    _Block_release(v12);
  }

  else
  {
    (v12)[2](*(v5 + 48), a1, 0);
    _Block_release(v12);
  }

  sub_1000AFF14();

  return v14();
}

uint64_t sub_10022204C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 152) = a3;
  *(v4 + 160) = v3;
  return sub_1000AFCB8();
}

uint64_t sub_1002223A8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100222628()
{
  sub_100098BB4();
  swift_willThrow();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  sub_100098AC4();

  return v0();
}

uint64_t sub_1002226C0(void *a1, int a2, void *a3, void *a4, void *a5, void *aBlock, uint64_t a7, uint64_t a8)
{
  v13 = _Block_copy(aBlock);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = a5;
  v14[5] = v13;
  v14[6] = a1;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a1;

  return sub_100224DF8(a8, v14);
}

uint64_t sub_100222790(void *a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  v5[6] = _Block_copy(aBlock);
  v10 = a1;
  v11 = a2;
  v12 = a3;
  a5;
  v13 = swift_task_alloc();
  v5[7] = v13;
  *v13 = v5;
  v13[1] = sub_1002230B4;

  return sub_10022204C(v13, v14, v12);
}

uint64_t getEnumTagSinglePayload for Request.AccountRequirement(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD)
  {
    v2 = a2 + 3;
    if (a2 + 3 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = a1[1];
        if (!a1[1])
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      case 2:
        v5 = *(a1 + 1);
        if (*(a1 + 1))
        {
          return (*a1 | (v5 << 8)) - 3;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x1002229E8);
      case 4:
        v5 = *(a1 + 1);
        if (!v5)
        {
          break;
        }

        return (*a1 | (v5 << 8)) - 3;
      default:
        break;
    }
  }

  v7 = *a1;
  if (*a1 >= 2u && (v8 = (v7 & 0xFE) + 2147483646, (v8 & 0x7FFFFFFE) != 0))
  {
    return (v8 & 0x7FFFFFFE | v7 & 1u) - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *storeEnumTagSinglePayload for Request.AccountRequirement(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 3;
  if (a3 + 3 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFD)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFC)
  {
    v7 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v6)
    {
      case 1:
        result[1] = v7;
        break;
      case 2:
        *(result + 1) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        JUMPOUT(0x100222AD0);
      case 4:
        *(result + 1) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100222AF8(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100222B14(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t sub_100222B40()
{
  sub_1000B0004();
  sub_1002231C8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1002230DC(v1);

  return v3(v2);
}

uint64_t sub_100222BF4()
{
  sub_1000B0004();
  sub_1002231C8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1002230DC(v1);

  return v3(v2);
}

uint64_t sub_100222C90()
{
  _Block_release(*(v0 + 40));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_100222CE8()
{
  sub_1000B0004();
  sub_1002231C8();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_1002230DC(v1);

  return v3(v2);
}

void sub_100222D84(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  [a3 set_sourceApplicationBundleIdentifier:v4];
}

unint64_t sub_100222DE8()
{
  result = qword_1003D2C60;
  if (!qword_1003D2C60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D2C60);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Request.ResponseFormat(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100222EF8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100222F30(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100222F54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 16))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 2;
  if (v5 >= 4)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100222FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 3;
    }
  }

  return result;
}

void *sub_100223010(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

unint64_t sub_100223050()
{
  result = qword_1003D2C68;
  if (!qword_1003D2C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003D2C68);
  }

  return result;
}

void sub_100223104(uint64_t a1@<X8>)
{
  v2[16] = a1;
  v2[2] = v3;
  v2[3] = v1;
  v2[4] = 0;
}

uint64_t sub_100223134()
{

  return swift_slowAlloc();
}

uint64_t sub_100223168()
{

  return swift_slowAlloc();
}

uint64_t sub_100223184()
{

  return StringProtocol.contains<A>(_:)();
}

void sub_1002231A8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_1002231D8(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v6 + 4) = v3;
  *(v6 + 12) = 2082;

  return sub_100080210(v5, v4, va);
}

uint64_t sub_100223200()
{
}

BOOL sub_100223218()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100223230()
{
}

uint64_t sub_100223248()
{

  return swift_arrayDestroy();
}

void sub_100223264(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = v14;
  v17 = v13;

  String.append(_:)(*&v16);
}

uint64_t sub_100223288(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;

  return swift_willThrow();
}

void sub_1002232D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = v14;
  v18 = v15;

  String.append(_:)(*&v17);
}

unint64_t sub_1002232F4(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_100080210(a1, v2 | 0x8000000000000000, va);
}

BOOL sub_10022330C()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_100223324()
{
}

void sub_10022333C()
{
  v3 = v1;
  v4 = v0;

  String.append(_:)(*&v3);
}

void sub_100223354(void *a1)
{
  if (a1[2])
  {
    sub_100080FB4(&qword_1003D2E78);
    v2 = sub_10022E64C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  sub_10022E560();
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;
  v8 = (v2 + 8);

  v9 = 0;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v11 = __clz(__rbit64(v6)) | (v9 << 6);
    v12 = (a1[6] + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_100080F58(a1[7] + 32 * v11, v35);
    *&v34 = v14;
    *(&v34 + 1) = v13;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_10008B5D0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10008B5D0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10008B5D0(v31, v32);
    v15 = AnyHashable._rawHashValue(seed:)(v2[5]) & ~(-1 << *(v2 + 32));
    if (((-1 << v15) & ~*&v8[8 * (v15 >> 6)]) == 0)
    {
      sub_10022E4E8();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (*&v8[8 * v16] != -1)
        {
          sub_10022E4D4();
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    sub_10022E4FC();
LABEL_21:
    v6 &= v6 - 1;
    sub_10022E7B4();
    *&v8[v20] |= v21;
    v23 = v2[6] + 40 * v22;
    *v23 = v24;
    *(v23 + 16) = v25;
    *(v23 + 32) = v26;
    sub_10008B5D0(v32, (v2[7] + 32 * v22));
    sub_10022E688();
  }

  while (v6);
LABEL_8:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return;
    }

    v6 = a1[v10 + 8];
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

unint64_t sub_1002235CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100080FB4(&qword_1003CE650);
    v2 = sub_10022E64C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_10022E560();
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v3;
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (v6)
  {
    v10 = v9;
LABEL_12:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = (*(a1 + 48) + ((v10 << 10) | (16 * v11)));
    v14 = *v12;
    v13 = v12[1];

    swift_dynamicCast();
    sub_10008B5D0(&v23, v25);
    sub_10008B5D0(v25, v26);
    sub_10008B5D0(v26, &v24);
    result = sub_1000B6328(v14, v13);
    v15 = result;
    if (v16)
    {
      v17 = (v2[6] + 16 * result);
      *v17 = v14;
      v17[1] = v13;

      v18 = (v2[7] + 32 * v15);
      sub_100080F0C(v18);
      result = sub_10008B5D0(&v24, v18);
      v9 = v10;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_19;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v14;
      v19[1] = v13;
      result = sub_10008B5D0(&v24, (v2[7] + 32 * result));
      v20 = v2[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_20;
      }

      v2[2] = v22;
      v9 = v10;
    }
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      return v2;
    }

    v6 = *(a1 + 64 + 8 * v10);
    ++v9;
    if (v6)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

void sub_100223804(void *a1)
{
  if (a1[2])
  {
    sub_100080FB4(&qword_1003D2E80);
    v2 = sub_10022E64C();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  sub_10022E560();
  sub_10022E5CC();
  v4 = v3 >> 6;
  v5 = v2 + 8;

  v6 = 0;
  if (!v1)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v8 = __clz(__rbit64(v1)) | (v6 << 6);
    v9 = *(a1[6] + 8 * v8);
    v10 = (a1[7] + 16 * v8);
    v11 = v10[1];
    v22 = *v10;
    v23 = v11;
    v12 = v9;

    swift_dynamicCast();
    sub_10008B5D0((v24 + 8), v21);
    sub_10008B5D0(v21, v24);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v13 = Hasher._finalize()();

    v14 = v13 & ~(-1 << *(v2 + 32));
    if (((-1 << v14) & ~v5[v14 >> 6]) == 0)
    {
      sub_10022E4E8();
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        if (v5[v16] != -1)
        {
          sub_10022E4D4();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_10022E4FC();
LABEL_18:
    *(v5 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v1 &= v1 - 1;
    *(v2[6] + 8 * v15) = v12;
    sub_10008B5D0(v24, (v2[7] + 32 * v15));
    sub_10022E688();
  }

  while (v1);
LABEL_5:
  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v4)
    {

      return;
    }

    v1 = a1[v7 + 8];
    ++v6;
    if (v1)
    {
      v6 = v7;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

void sub_100223A50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100080FB4(&qword_1003D2E78);
    v3 = sub_10022E64C();
  }

  else
  {
    v3 = _swiftEmptyDictionarySingleton;
  }

  sub_10022E560();
  sub_10022E5CC();
  v5 = v4 >> 6;
  v6 = v3 + 8;

  v7 = 0;
  if (!v1)
  {
    goto LABEL_5;
  }

  do
  {
LABEL_9:
    v9 = (*(a1 + 48) + ((v7 << 10) | (16 * __clz(__rbit64(v1)))));
    v10 = v9[1];
    *&v28[0] = *v9;
    *(&v28[0] + 1) = v10;

    swift_dynamicCast();
    swift_dynamicCast();
    v24 = v20;
    v25 = v21;
    v26 = v22;
    sub_10008B5D0(&v23, v27);
    v20 = v24;
    v21 = v25;
    v22 = v26;
    sub_10008B5D0(v27, v28);
    v11 = AnyHashable._rawHashValue(seed:)(v3[5]) & ~(-1 << *(v3 + 32));
    if (((-1 << v11) & ~v6[v11 >> 6]) == 0)
    {
      sub_10022E4E8();
      while (++v12 != v14 || (v13 & 1) == 0)
      {
        v15 = v12 == v14;
        if (v12 == v14)
        {
          v12 = 0;
        }

        v13 |= v15;
        if (v6[v12] != -1)
        {
          sub_10022E4D4();
          goto LABEL_18;
        }
      }

      goto LABEL_22;
    }

    sub_10022E4FC();
LABEL_18:
    v1 &= v1 - 1;
    sub_10022E7B4();
    *(v6 + v16) |= v17;
    v19 = v3[6] + 40 * v18;
    *v19 = v20;
    *(v19 + 16) = v21;
    *(v19 + 32) = v22;
    sub_10008B5D0(v28, (v3[7] + 32 * v18));
    sub_10022E688();
  }

  while (v1);
LABEL_5:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v1 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v1)
    {
      v7 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_100223CB4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  sub_100086D24(a3, a3[3]);
  v5 = _bridgeAnythingToObjectiveC<A>(_:)();
  v6 = [swift_getObjCClassFromMetadata() predicateWithProperty:v4 equalToValue:v5];
  swift_unknownObjectRelease();

  sub_100080F0C(a3);
  return v6;
}

uint64_t sub_100223DA8()
{
  sub_10008BE9C();
  v0[10] = v1;
  v0[11] = v2;
  v3 = sub_100080FB4(&qword_1003CCEE8);
  sub_1000B01B0(v3);
  v0[12] = swift_task_alloc();
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v4 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v4);
  v0[16] = sub_1000B05D0();
  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100224048()
{
  sub_1000B061C();
  sub_1000B0004();
  sub_10022E794();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_1000B0518();

  return v4(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002241C0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 194) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1002242A8()
{
  sub_100098BB4();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 userDatabase];

  v3 = [objc_allocWithZone(type metadata accessor for StorefrontStore()) initWithDatabase:v2];
  *(v0 + 152) = v3;

  if (qword_1003CBE90 != -1)
  {
    sub_10022E480();
  }

  *(v0 + 160) = qword_1003F26F8;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 168) = v4;
  *v4 = v5;
  v4[1] = sub_1002243D8;
  v6 = *(v0 + 120);
  v7 = *(v0 + 194);

  return sub_100227A28(v6, v3, v7);
}

uint64_t sub_1002243D8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002249E0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100224D90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100224DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CE2B0);
  v5 = sub_1000B01B0(v4);
  __chkstk_darwin(v5);
  v7 = &v12 - v6;
  v8 = type metadata accessor for TaskPriority();
  sub_100081DFC(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = &unk_1002FB690;
  v10[5] = v9;
  sub_10022D3E8(0, 0, v7, &unk_1002FB6A0, v10);
}

uint64_t sub_100224F04()
{
  sub_10008BE9C();
  v1 = sub_100080FB4(&qword_1003CCEE8);
  sub_1000B01B0(v1);
  v0[2] = sub_100124174();
  v0[3] = swift_task_alloc();
  type metadata accessor for StorefrontManager();
  swift_task_alloc();
  sub_1000F2F10();
  v0[4] = v2;
  *v2 = v3;
  sub_10022E4A0(v2);

  return sub_100223DA8();
}

uint64_t sub_100224FCC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002250B0()
{
  sub_100098BB4();
  sub_10022DE24(*(v0 + 24), *(v0 + 16));
  type metadata accessor for StorefrontInternal();
  v1 = sub_100123E24();
  v4 = sub_100081D0C(v1, v2, v3);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_10013B1E8(*(v0 + 16), &qword_1003CCEE8);
  }

  else
  {

    sub_10022E264();
    sub_10022DE94(v5, v6);
  }

  v7 = sub_10022E7C8();

  return v8(v7);
}

uint64_t sub_1002251A0(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10022E25C;

  return sub_100224F04();
}

uint64_t sub_100225250()
{
  sub_10008BE9C();
  v1 = sub_100080FB4(&qword_1003CCEE8);
  sub_1000B01B0(v1);
  v0[2] = sub_100124174();
  v0[3] = swift_task_alloc();
  type metadata accessor for StorefrontManager();
  swift_task_alloc();
  sub_1000F2F10();
  v0[4] = v2;
  *v2 = v3;
  sub_10022E4A0(v2);

  return sub_100223DA8();
}

uint64_t sub_100225318()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1002253FC()
{
  sub_100098BB4();
  sub_10022DE24(*(v0 + 24), *(v0 + 16));
  type metadata accessor for StorefrontInternal();
  v1 = sub_100123E24();
  v4 = sub_100081D0C(v1, v2, v3);
  v5 = *(v0 + 16);
  if (v4 == 1)
  {
    sub_10013B1E8(*(v0 + 16), &qword_1003CCEE8);
  }

  else
  {

    sub_10022E264();
    sub_10022DE94(v5, v6);
  }

  v7 = sub_10022E7C8();

  return v8(v7);
}

uint64_t sub_1002254EC(uint64_t a1, int a2, void *a3, void *aBlock)
{
  v6 = _Block_copy(aBlock);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = a1;
  v8 = a3;
  v9 = sub_1001073F0();

  return sub_100224DF8(v9, v10);
}

uint64_t sub_100225580(void *a1, void *aBlock)
{
  v2[2] = a1;
  v2[3] = _Block_copy(aBlock);
  a1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_100225630;

  return sub_100225250();
}

uint64_t sub_100225630()
{
  sub_100098BB4();
  v2 = v1;
  v4 = v3;
  sub_10008C070();
  v6 = v5;
  v7 = *(v5 + 16);
  v8 = *v0;
  sub_100098AB4();
  *v9 = v8;

  if (v2)
  {
    String._bridgeToObjectiveC()();
    sub_1000B02A4();
  }

  else
  {
    v4 = 0;
  }

  v10 = *(v6 + 24);
  v11 = sub_1001B5400();
  v12(v11);

  _Block_release(v10);
  sub_100098AC4();

  return v13();
}

uint64_t sub_1002257E8()
{
  type metadata accessor for StorefrontManager();
  swift_allocObject();
  result = sub_100225824();
  qword_1003F26F8 = result;
  return result;
}

uint64_t sub_100225824()
{
  v1 = v0;
  v2 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v2 - 8);
  v36 = &v31 - v3;
  v4 = sub_100080FB4(&unk_1003D2840);
  v38 = *(v4 - 8);
  v39 = v4;
  __chkstk_darwin(v4);
  v37 = &v31 - v5;
  v35 = sub_100080FB4(&qword_1003D2838);
  v6 = *(v35 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v35);
  v34 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  swift_defaultActor_initialize();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  sub_10007EDA4(v11, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v12 = v41;
  v13 = v42;
  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v32 = "Storefront for accountType ";
    v16 = swift_slowAlloc();
    v33 = v0;
    v17 = v16;
    v18 = swift_slowAlloc();
    *v17 = 136446466;
    v40 = v18;
    v41 = 91;
    v42 = 0xE100000000000000;
    v19._countAndFlagsBits = v12;
    v19._object = v13;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21 = sub_100080210(v41, v42, &v40);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(0xD00000000000001ELL, v32 | 0x8000000000000000, &v40);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v1 = v33;
  }

  v41 = 0;
  __chkstk_darwin(v22);
  *(&v31 - 2) = &v41;
  (*(v38 + 104))(v37, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v39);
  result = AsyncStream.init(_:bufferingPolicy:_:)();
  v24 = v41;
  if (v41)
  {
    *(v1 + 112) = v41;
    v25 = type metadata accessor for TaskPriority();
    sub_100081DFC(v36, 1, 1, v25);
    v27 = v34;
    v26 = v35;
    (*(v6 + 16))(v34, v10, v35);
    v28 = (*(v6 + 80) + 40) & ~*(v6 + 80);
    v29 = swift_allocObject();
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    *(v29 + 4) = v1;
    (*(v6 + 32))(&v29[v28], v27, v26);
    v30 = v24;

    sub_100165CBC();

    (*(v6 + 8))(v10, v26);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100225D50(uint64_t a1, void **a2)
{
  v4 = sub_100080FB4(&qword_1003CCBD8);
  __chkstk_darwin(v4);
  v6 = &v11 - v5;
  (*(v7 + 16))(&v11 - v5, a1);
  v8 = objc_allocWithZone(type metadata accessor for BagNotificationListener());
  v9 = sub_10022BE4C(v6);
  v10 = *a2;
  *a2 = v9;
}

uint64_t sub_100225E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_100080FB4(&qword_1003D2830);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[11] = v7;
  *v7 = v5;
  v7[1] = sub_100225F38;

  return sub_100228490();
}

uint64_t sub_100225F38()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10022601C()
{
  sub_10008BE9C();
  sub_100080FB4(&qword_1003D2838);
  AsyncStream.makeAsyncIterator()();
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 96) = v1;
  *v1 = v2;
  v3 = sub_10022E348(v1);

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1002260B0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100226194()
{
  sub_100098BB4();
  v2 = v0[2];
  v1 = v0[3];
  v0[13] = v1;
  if (v1)
  {
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v0[4] = v2;
    v0[5] = v1;
    v3 = swift_task_alloc();
    v0[14] = v3;
    *v3 = v0;
    v3[1] = sub_100226310;

    return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    sub_100098AC4();

    return v4();
  }
}

uint64_t sub_100226310()
{
  sub_100098BB4();
  sub_10008C070();
  v2 = *v1;
  sub_100098AB4();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_10022643C, 0, 0);
  }
}

uint64_t sub_10022643C()
{
  sub_10008BE9C();
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 96) = v1;
  *v1 = v2;
  v3 = sub_10022E348();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1002264AC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100139264;

  return sub_100228490();
}

uint64_t sub_10022653C()
{
  sub_10008BE9C();
  v1[88] = v0;
  v1[87] = v2;
  v1[86] = v3;
  v1[85] = v4;
  v5 = sub_100080FB4(&qword_1003CF820);
  sub_1000B01B0(v5);
  v1[89] = sub_1000B05D0();
  v6 = type metadata accessor for Locale.Components();
  v1[90] = v6;
  sub_1000B046C(v6);
  v1[91] = v7;
  v1[92] = sub_100124174();
  v1[93] = swift_task_alloc();
  v8 = type metadata accessor for Locale();
  v1[94] = v8;
  sub_1000B046C(v8);
  v1[95] = v9;
  v1[96] = sub_1000B05D0();
  v10 = sub_1000B043C();

  return _swift_task_switch(v10, v11, v12);
}

uint64_t sub_100226670()
{
  sub_100098BB4();
  v1 = objc_allocWithZone(type metadata accessor for Bag.XcodeBag());

  v2 = sub_1001073F0();
  sub_10023BE00(v2, v3);
  v5 = v4;
  v0[97] = v4;
  if (qword_1003CC058 != -1)
  {
    swift_once();
  }

  v6 = [v5 stringForKey:qword_1003F28C0];
  sub_10022E5B4();
  v0[98] = v7;
  v0[2] = v8;
  v0[7] = v0 + 76;
  v0[3] = sub_1002267FC;
  v9 = sub_1000B0500();
  v10 = sub_100080FB4(&unk_1003D30E0);
  v0[99] = v10;
  v0[41] = v10;
  v0[34] = _NSConcreteStackBlock;
  v0[35] = 1107296256;
  v0[36] = sub_10023FCCC;
  v0[37] = &unk_100391318;
  v0[38] = v9;
  sub_10022E724(v10, "valueWithCompletion:");

  return _swift_continuation_await(v0 + 2, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1002267FC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 800) = *(v3 + 48);
  sub_10022E5C0();
  v5 = *(v4 + 704);
  if (v6)
  {
    v7 = sub_1002271C8;
  }

  else
  {
    v7 = sub_100226908;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100226908()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 784);
  *(v0 + 808) = *(v0 + 608);

  if (qword_1003CC050 != -1)
  {
    sub_10022E530();
  }

  v2 = *(v0 + 792);
  v3 = [*(v0 + 776) stringForKey:qword_1003F28B8];
  sub_10022E5B4();
  *(v0 + 816) = v4;
  *(v0 + 80) = v5;
  *(v0 + 120) = v0 + 624;
  *(v0 + 88) = sub_100226A28;
  sub_1000B0500();
  *(v0 + 392) = v2;
  sub_10022E424();
  *(v0 + 344) = 1107296256;
  sub_10022E410();
  *(v0 + 360) = v7;
  *(v0 + 368) = v6;
  sub_10022E724(v6, "valueWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_100226A28()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 824) = *(v3 + 112);
  sub_10022E5C0();
  v5 = *(v4 + 704);
  if (v6)
  {
    v7 = sub_1002273D4;
  }

  else
  {
    v7 = sub_100226B34;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100226B34()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 816);
  *(v0 + 832) = *(v0 + 624);

  if (qword_1003CBFB8 != -1)
  {
    sub_10022E510();
  }

  v2 = [*(v0 + 776) stringForKey:qword_1003F2820];
  sub_10022E5B4();
  *(v0 + 840) = v3;
  *(v0 + 144) = v4;
  *(v0 + 184) = v0 + 640;
  *(v0 + 152) = sub_100226C4C;
  sub_1000B0500();
  sub_10022E3C0();
  *(v0 + 408) = 1107296256;
  v6 = sub_10022E3E0(v5);
  sub_10022E724(v6, "valueWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100226C4C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 848) = *(v3 + 176);
  sub_10022E5C0();
  v5 = *(v4 + 704);
  if (v6)
  {
    v7 = sub_1002275E8;
  }

  else
  {
    v7 = sub_100226D58;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100226D58()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 840);
  *(v0 + 856) = *(v0 + 640);

  if (qword_1003CBF00 != -1)
  {
    sub_10022E4B4();
  }

  v2 = [*(v0 + 776) stringForKey:qword_1003F2768];
  sub_10022E5B4();
  *(v0 + 864) = v3;
  *(v0 + 208) = v4;
  *(v0 + 248) = v0 + 656;
  *(v0 + 216) = sub_100226E70;
  sub_1000B0500();
  sub_10022E3A0();
  *(v0 + 472) = 1107296256;
  v6 = sub_10022E3F8(v5);
  sub_10022E724(v6, "valueWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_100226E70()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 872) = *(v3 + 240);
  sub_10022E5C0();
  v5 = *(v4 + 704);
  if (v6)
  {
    v7 = sub_100227804;
  }

  else
  {
    v7 = sub_100226F7C;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_100226F7C()
{
  v28 = *(v0 + 832);
  v29 = *(v0 + 856);
  v27 = *(v0 + 808);
  v30 = *(v0 + 776);
  v25 = *(v0 + 768);
  v31 = *(v0 + 760);
  v32 = *(v0 + 752);
  v1 = *(v0 + 744);
  v2 = *(v0 + 728);
  v23 = *(v0 + 736);
  v24 = *(v0 + 720);
  v3 = *(v0 + 680);
  v26 = *(v0 + 656);

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v0 + 560) = v4;
  *(v0 + 568) = v6;
  sub_10022E620();
  sub_10022E570();

  sub_1001B5400();
  Locale.Components.init(identifier:)();
  Locale.Currency.init(_:)();
  type metadata accessor for Locale.Currency();
  sub_10022E614();
  sub_100081DFC(v7, v8, v9, v10);
  Locale.Components.currency.setter();
  (*(v2 + 16))(v23, v1, v24);
  Locale.init(components:)();
  (*(v2 + 8))(v1, v24);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  *v3 = v11;
  v3[1] = v13;
  v3[2] = v14;
  v3[3] = v16;
  v17 = type metadata accessor for StorefrontInternal();
  (*(v31 + 32))(v3 + *(v17 + 24), v25, v32);
  sub_10022E614();
  sub_100081DFC(v18, v19, v20, v17);
  sub_10022E380();

  sub_100098AC4();

  return v21();
}

uint64_t sub_100227A28(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 96) = a3;
  *(v4 + 40) = a1;
  v5 = sub_1000B043C();
  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100227A58()
{
  sub_100098BB4();
  v1 = *(v0 + 96);
  sub_100080FB4(&qword_1003CCEE8);
  v2 = swift_allocBox();
  v4 = v3;
  *(v0 + 64) = v2;
  *(v0 + 72) = v3;
  v5 = type metadata accessor for StorefrontInternal();
  sub_100081DFC(v4, 1, 1, v5);
  v6 = swift_allocObject();
  *(v0 + 80) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v2;

  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100227B78;

  return sub_1001D5D00(sub_10022D9DC, v6);
}

uint64_t sub_100227B78()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 56);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  return _swift_task_switch(sub_100227C94, v2, 0);
}

uint64_t sub_100227C94()
{
  sub_100098BB4();
  swift_beginAccess();
  v0 = sub_1001B5400();
  sub_10022DD1C(v0, v1, v2);

  sub_100098AC4();

  return v3();
}

uint64_t sub_100227D28(void *a1, char a2)
{
  v4 = swift_projectBox();
  sub_10008E5A4(0, &qword_1003CCBB8);
  v15 = &type metadata for Int8;
  LOBYTE(v14[0]) = a2 + 1;
  v5 = sub_100223CB4(0x745F746E65696C63, 0xEB00000000657079, v14);
  type metadata accessor for StorefrontEntity();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [a1 connection];
  v8 = [ObjCClassFromMetadata queryOnConnection:v7 predicate:v5];

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = v4;
  *(v9 + 32) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_10022DA20;
  *(v10 + 24) = v9;
  v16 = sub_10022DA3C;
  v17 = v10;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 1107296256;
  v14[2] = sub_100223D74;
  v15 = &unk_1003912F0;
  v11 = _Block_copy(v14);
  v12 = a1;

  [v8 enumeratePersistentIDsUsingBlock:v11];

  _Block_release(v11);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_100227F4C(uint64_t a1, uint64_t a2, _BYTE *a3, void *a4, uint64_t a5)
{
  v9 = sub_100080FB4(&qword_1003CCEE8);
  __chkstk_darwin(v9 - 8);
  v11 = (&v16 - v10);
  v12 = [a4 connection];
  v13 = [objc_allocWithZone(type metadata accessor for StorefrontEntity()) initWithPersistentID:a1 onConnection:v12];

  v14 = v13;
  sub_100228300(v14, v11);
  v15 = type metadata accessor for StorefrontInternal();
  sub_100081DFC(v11, 0, 1, v15);
  swift_beginAccess();
  sub_10022DA64(v11, a5);
  *a3 = 1;
}

void sub_100228300(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10022CEBC();
  if (v2)
  {
  }

  else
  {
    Locale.init(identifier:)();
    v9 = sub_10022CE8C();
    v11 = v10;
    v12 = sub_10022CE58();
    v14 = v13;
    v17 = v12;

    v15 = type metadata accessor for StorefrontInternal();
    (*(v6 + 32))(a2 + *(v15 + 24), v8, v5);
    *a2 = v9;
    a2[1] = v11;
    a2[2] = v17;
    a2[3] = v14;
  }
}

uint64_t sub_100228490()
{
  sub_10008BE9C();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100228520;

  return sub_100228868();
}

uint64_t sub_100228520()
{
  sub_100098BB4();
  sub_10022E794();
  sub_100098AB4();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v3;
  v4[1] = sub_100228654;

  return sub_100228868();
}

uint64_t sub_100228654()
{
  sub_100098BB4();
  sub_10022E794();
  sub_100098AB4();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v3;
  v4[1] = sub_100228788;

  return sub_100228868();
}

uint64_t sub_100228788()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AC4();

  return v3();
}

uint64_t sub_100228868()
{
  sub_10008BE9C();
  *(v1 + 176) = v0;
  *(v1 + 349) = v2;
  v3 = sub_100080FB4(&qword_1003D2E70);
  *(v1 + 184) = v3;
  sub_1000B01B0(v3);
  *(v1 + 192) = sub_1000B05D0();
  v4 = type metadata accessor for StorefrontInternal();
  *(v1 + 200) = v4;
  sub_1000B046C(v4);
  *(v1 + 208) = v5;
  *(v1 + 216) = *(v6 + 64);
  *(v1 + 224) = sub_100124174();
  *(v1 + 232) = swift_task_alloc();
  *(v1 + 240) = swift_task_alloc();
  *(v1 + 248) = swift_task_alloc();
  v7 = sub_100080FB4(&qword_1003CCEE8);
  sub_1000B01B0(v7);
  *(v1 + 256) = sub_100124174();
  *(v1 + 264) = swift_task_alloc();
  *(v1 + 272) = swift_task_alloc();
  *(v1 + 280) = swift_task_alloc();
  *(v1 + 288) = swift_task_alloc();
  v8 = sub_1000B043C();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_1002289C8()
{
  sub_100098BB4();
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 userDatabase];

  v3 = [objc_allocWithZone(type metadata accessor for StorefrontStore()) initWithDatabase:v2];
  *(v0 + 296) = v3;

  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 304) = v4;
  *v4 = v5;
  v4[1] = sub_100228AD0;
  v6 = *(v0 + 288);
  v7 = *(v0 + 349);

  return sub_100227A28(v6, v3, v7);
}

uint64_t sub_100228AD0()
{
  sub_100098BB4();
  sub_10022E794();
  sub_100098AB4();
  *v2 = v0;
  v3 = *v1;
  *v2 = *v1;

  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v3;
  v4[1] = sub_100228C1C;

  return sub_10022A050();
}

uint64_t sub_100228C1C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_1000B043C();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100228D14()
{
  v178 = v0;
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  sub_10022E668(v1);
  if (v112)
  {
    sub_10013B1E8(v1, &qword_1003CCEE8);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v3 = *(v0 + 349);
    v4 = type metadata accessor for SKLogger();
    sub_10007EDA4(v4, qword_1003F26C8);
    sub_1000DC87C();
    _StringGuts.grow(_:)(40);
    v5 = v177;
    *(v0 + 16) = v176;
    *(v0 + 24) = v5;
    v6._countAndFlagsBits = 0xD000000000000026;
    v6._object = 0x80000001003200C0;
    String.append(_:)(v6);
    *(v0 + 344) = v3;
    _print_unlocked<A, B>(_:_:)();
    v8 = *(v0 + 16);
    v7 = *(v0 + 24);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v10 = *(v0 + 32);
    v9 = *(v0 + 40);
    v11 = static os_log_type_t.fault.getter();

    v12 = Logger.logObject.getter();

    v13 = os_log_type_enabled(v12, v11);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    if (v13)
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      sub_10022E7A0();
      v16._countAndFlagsBits = v10;
      v16._object = v9;
      String.append(_:)(v16);
      sub_10009F134();
      sub_1000DEE28(v17, v18, v19, v20, v21, v22, v23, v24, v162, v163, v8, v170, v175, v176, v177);
      sub_1000B0494();
      *(v8 + 4) = v10;
      sub_100107150();
      v25 = sub_100080210(v167, v7, &v175);

      *(v8 + 14) = v25;
      _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v8, 0x16u);
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();

      v26 = v171;
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  v27 = *(v0 + 288);
  v28 = *(v0 + 272);
  v29 = *(v0 + 248);
  v31 = *(v0 + 184);
  v30 = *(v0 + 192);
  sub_10022D7EC(v1, v29);
  sub_1001287DC(v29, v28);
  sub_10022E614();
  sub_100081DFC(v32, v33, v34, v2);
  v35 = *(v31 + 48);
  sub_10022DD1C(v27, v30, &qword_1003CCEE8);
  sub_10022DD1C(v28, v30 + v35, &qword_1003CCEE8);
  v36 = sub_100123E24();
  v38 = sub_100081D0C(v36, v37, v2);
  if (v38 == 1)
  {
    sub_10013B1E8(*(v0 + 272), &qword_1003CCEE8);
    sub_10022E668(v30 + v35);
    if (!v112)
    {
      goto LABEL_17;
    }

    sub_10013B1E8(*(v0 + 192), &qword_1003CCEE8);
    goto LABEL_44;
  }

  sub_10022DD1C(*(v0 + 192), *(v0 + 264), &qword_1003CCEE8);
  sub_10022E668(v30 + v35);
  if (v112)
  {
    v39 = *(v0 + 264);
    sub_10013B1E8(*(v0 + 272), &qword_1003CCEE8);
    sub_10022E264();
    sub_10022DE94(v39, v40);
LABEL_17:
    v41 = *(v0 + 192);
    v42 = &unk_1003D2E70;
LABEL_18:
    sub_10013B1E8(v41, v42);
    goto LABEL_19;
  }

  v110 = *(v0 + 264);
  v111 = *(v0 + 240);
  sub_10022D7EC(v30 + v35, v111);
  v112 = *v110 == *v111 && v110[1] == v111[1];
  if (!v112 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_62;
  }

  v113 = *(v0 + 264);
  v114 = *(v0 + 240);
  if (*(v113 + 16) != *(v114 + 16) || *(v113 + 24) != *(v114 + 24))
  {
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      v113 = *(v0 + 264);
      v114 = *(v0 + 240);
      goto LABEL_43;
    }

LABEL_62:
    v159 = *(v0 + 264);
    v160 = *(v0 + 272);
    v161 = *(v0 + 192);
    sub_10022DE94(*(v0 + 240), type metadata accessor for StorefrontInternal);
    sub_10013B1E8(v160, &qword_1003CCEE8);
    sub_10022DE94(v159, type metadata accessor for StorefrontInternal);
    v41 = v161;
    v42 = &qword_1003CCEE8;
    goto LABEL_18;
  }

LABEL_43:
  v116 = *(v0 + 272);
  v117 = *(v0 + 192);
  v118 = static Locale.== infix(_:_:)();
  sub_10022DE94(v114, type metadata accessor for StorefrontInternal);
  sub_10013B1E8(v116, &qword_1003CCEE8);
  sub_10022DE94(v113, type metadata accessor for StorefrontInternal);
  sub_10013B1E8(v117, &qword_1003CCEE8);
  if (v118)
  {
LABEL_44:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v119 = *(v0 + 349);
    v120 = type metadata accessor for SKLogger();
    sub_10007EDA4(v120, qword_1003F26C8);
    sub_1000DC87C();
    _StringGuts.grow(_:)(35);
    v121 = v177;
    *(v0 + 144) = v176;
    *(v0 + 152) = v121;
    sub_1000B00A8();
    v122._countAndFlagsBits = 0xD000000000000021;
    String.append(_:)(v122);
    *(v0 + 348) = v119;
    _print_unlocked<A, B>(_:_:)();
    v124 = *(v0 + 144);
    v123 = *(v0 + 152);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v126 = *(v0 + 160);
    v125 = *(v0 + 168);
    v127 = static os_log_type_t.default.getter();

    v128 = Logger.logObject.getter();

    v129 = os_log_type_enabled(v128, v127);
    v14 = *(v0 + 288);
    v130 = *(v0 + 296);
    v131 = *(v0 + 248);
    if (v129)
    {
      sub_1000B7DC8();
      v164 = v124;
      v132 = swift_slowAlloc();
      v175 = sub_10008E670();
      *v132 = 136446466;
      v133._countAndFlagsBits = v126;
      v133._object = v125;
      String.append(_:)(v133);
      sub_10009F134();
      v142 = sub_1000DEE28(v134, v135, v136, v137, v138, v139, v140, v141, v162, v164, v14, v131, v175, 91, 0xE100000000000000);

      *(v132 + 4) = v142;
      *(v132 + 12) = 2082;
      sub_100080210(v165, v123, &v175);
      sub_1000B03CC();
      *(v132 + 14) = &v176;
      sub_10022E7DC(&_mh_execute_header, v143, v144, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10008BF3C();
      sub_1000B0080();

      sub_10022E264();
      sub_10022DE94(v174, v145);
      v26 = v169;
      goto LABEL_59;
    }

    sub_10022E264();
    sub_10022DE94(v131, v156);
LABEL_58:
    v26 = v14;
LABEL_59:
    sub_10013B1E8(v26, &qword_1003CCEE8);
    sub_10022E6C0();

    sub_100098AC4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

LABEL_19:
  v43 = *(v0 + 200);
  sub_10022DD1C(*(v0 + 288), *(v0 + 256), &qword_1003CCEE8);
  v44 = sub_100123E24();
  v46 = sub_100081D0C(v44, v45, v43);
  v47 = *(v0 + 256);
  if (v46 == 1)
  {
    sub_10013B1E8(v47, &qword_1003CCEE8);
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v48 = *(v0 + 248);
    v49 = *(v0 + 349);
    v50 = type metadata accessor for SKLogger();
    v51 = sub_10007EDA4(v50, qword_1003F26C8);
    sub_1000DC87C();
    _StringGuts.grow(_:)(35);
    v52 = v177;
    *(v0 + 48) = v176;
    *(v0 + 56) = v52;
    v53._countAndFlagsBits = 0x6F726665726F7453;
    v53._object = 0xEF20726F6620746ELL;
    String.append(_:)(v53);
    *(v0 + 345) = v49;
    _print_unlocked<A, B>(_:_:)();
    v54._object = 0xEC000000206F7420;
    v54._countAndFlagsBits = 0x6465676E61686320;
    String.append(_:)(v54);
    String.append(_:)(*v48);
    v55._countAndFlagsBits = 40;
    v55._object = 0xE100000000000000;
    String.append(_:)(v55);
    String.append(_:)(v48[1]);
    v56._countAndFlagsBits = 41;
    v56._object = 0xE100000000000000;
    String.append(_:)(v56);
    v58 = *(v0 + 48);
    v57 = *(v0 + 56);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v59 = qword_1003F2700;
    TaskLocal.get()();
    v61 = *(v0 + 64);
    v60 = *(v0 + 72);
    static os_log_type_t.default.getter();
    sub_1000B05A0();

    Logger.logObject.getter();
    sub_1000B0404();

    if (sub_1000B0588())
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      v175 = v62;
      v176 = v63;
      v177 = v64;
      v65._countAndFlagsBits = v61;
      v65._object = v60;
      String.append(_:)(v65);
      sub_10009F134();
      sub_1000DEE28(v66, v67, v68, v69, v70, v71, v72, v73, v162, v163, v166, v58, v175, v176, v177);
      sub_1000B0494();
      *(v58 + 4) = v61;
      sub_100107150();
      sub_100080210(v172, v57, &v175);
      sub_1000B047C();
      *(v58 + 14) = &v176;
      sub_1000AFFA8(&_mh_execute_header, v74, v75, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF90();
    }

    else
    {
    }
  }

  else
  {
    sub_10022D7EC(v47, *(v0 + 232));
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v76 = *(v0 + 248);
    v77 = *(v0 + 232);
    v78 = *(v0 + 349);
    v79 = type metadata accessor for SKLogger();
    sub_10007EDA4(v79, qword_1003F26C8);
    sub_1000DC87C();
    _StringGuts.grow(_:)(47);
    v80 = v177;
    *(v0 + 112) = v176;
    *(v0 + 120) = v80;
    v81._countAndFlagsBits = 0x6F726665726F7453;
    v81._object = 0xEF20726F6620746ELL;
    String.append(_:)(v81);
    *(v0 + 347) = v78;
    _print_unlocked<A, B>(_:_:)();
    v82._object = 0xEE00206D6F726620;
    v82._countAndFlagsBits = 0x6465676E61686320;
    String.append(_:)(v82);
    String.append(_:)(*v77);
    v83._countAndFlagsBits = 40;
    v83._object = 0xE100000000000000;
    String.append(_:)(v83);
    String.append(_:)(v77[1]);
    v84._countAndFlagsBits = 0x206F742029;
    v84._object = 0xE500000000000000;
    String.append(_:)(v84);
    String.append(_:)(*v76);
    v85._countAndFlagsBits = 40;
    v85._object = 0xE100000000000000;
    String.append(_:)(v85);
    String.append(_:)(v76[1]);
    v86._countAndFlagsBits = 41;
    v86._object = 0xE100000000000000;
    String.append(_:)(v86);
    v88 = *(v0 + 112);
    v87 = *(v0 + 120);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    v59 = qword_1003F2700;
    TaskLocal.get()();
    v90 = *(v0 + 128);
    v89 = *(v0 + 136);
    v91 = static os_log_type_t.default.getter();

    v92 = Logger.logObject.getter();

    v93 = os_log_type_enabled(v92, v91);
    v94 = *(v0 + 232);
    if (v93)
    {
      sub_1000B7DC8();
      v95 = swift_slowAlloc();
      sub_10008E670();
      *v95 = 136446466;
      sub_10022E7A0();
      v96._countAndFlagsBits = v90;
      v96._object = v89;
      String.append(_:)(v96);
      sub_10009F134();
      v105 = sub_1000DEE28(v97, v98, v99, v100, v101, v102, v103, v104, v162, v163, v88, v170, v175, v176, v177);

      *(v95 + 4) = v105;
      *(v95 + 12) = 2082;
      sub_100080210(v168, v87, &v175);
      sub_1000B047C();
      *(v95 + 14) = &v176;
      sub_10022E7DC(&_mh_execute_header, v106, v107, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_10008BF3C();
      sub_1000B0080();

      sub_10022E264();
      v109 = v173;
    }

    else
    {

      sub_10022E264();
      v109 = v94;
    }

    sub_10022DE94(v109, v108);
  }

  *(v0 + 320) = v59;
  v146 = *(v0 + 224);
  v147 = *(v0 + 208);
  v148 = *(v0 + 349);
  sub_1001287DC(*(v0 + 248), v146);
  v149 = (*(v147 + 80) + 17) & ~*(v147 + 80);
  v150 = swift_allocObject();
  *(v0 + 328) = v150;
  *(v150 + 16) = v148;
  sub_10022D7EC(v146, v150 + v149);
  v151 = swift_task_alloc();
  *(v0 + 336) = v151;
  *v151 = v0;
  v151[1] = sub_100229A84;
  sub_10009F1B8();

  return sub_1001D5E3C(v152, v153);
}

uint64_t sub_100229A84()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 176);
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  return _swift_task_switch(sub_100229BA0, v2, 0);
}

uint64_t sub_100229BA0()
{
  v24 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = *(v0 + 349);
  v2 = type metadata accessor for SKLogger();
  v3 = sub_10007EDA4(v2, qword_1003F26C8);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(46);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  v4._countAndFlagsBits = 0xD00000000000002CLL;
  v4._object = 0x80000001003200F0;
  String.append(_:)(v4);
  *(v0 + 346) = v1;
  _print_unlocked<A, B>(_:_:)();
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  static os_log_type_t.default.getter();
  sub_1000B0678();

  Logger.logObject.getter();
  sub_1000B02A4();

  if (sub_1000B0660())
  {
    sub_1000B7DC8();
    v9 = swift_slowAlloc();
    v10 = sub_10008E670();
    *v9 = 136446466;
    v21 = v10;
    v22 = 91;
    v23 = 0xE100000000000000;
    v11._countAndFlagsBits = v8;
    v11._object = v7;
    String.append(_:)(v11);
    sub_10009F134();
    sub_100080210(91, 0xE100000000000000, &v21);
    sub_1000B02C8();
    sub_10008BEC4();
    sub_100080210(v6, v5, &v21);
    sub_1000B03CC();
    *(v9 + 14) = 0xE100000000000000;
    sub_10008C0B8(&_mh_execute_header, v12, v13, "%{public}s%{public}s");
    sub_10008BF74();
    sub_10008BF90();
    sub_10008BF3C();
  }

  else
  {
  }

  v14 = *(v0 + 288);
  v15 = *(v0 + 296);
  v16 = *(v0 + 248);
  sub_1000B00A8();
  sub_10022E700();
  v17 = String.utf8CString.getter();
  notify_post((v17 + 32));

  sub_10022E264();
  sub_10022DE94(v16, v18);
  sub_10013B1E8(v14, &qword_1003CCEE8);

  sub_10022E6C0();

  sub_100098AC4();

  return v19();
}

BOOL sub_100229E78(void *a1, char a2, void *a3)
{
  sub_100080FB4(&qword_1003D30B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2E0;
  *(inited + 32) = 0x745F746E65696C63;
  *(inited + 40) = 0xEB00000000657079;
  *(inited + 48) = a2 + 1;
  *(inited + 72) = &type metadata for Int8;
  *(inited + 80) = 0x696669746E656469;
  *(inited + 88) = 0xEA00000000007265;
  v7 = a3[1];
  *(inited + 96) = *a3;
  *(inited + 104) = v7;
  *(inited + 120) = &type metadata for String;
  strcpy((inited + 128), "country_code");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  v8 = a3[3];
  *(inited + 144) = a3[2];
  *(inited + 152) = v8;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x800000010031FEA0;
  type metadata accessor for StorefrontInternal();
  v9 = Locale.identifier.getter();
  *(inited + 216) = &type metadata for String;
  *(inited + 192) = v9;
  *(inited + 200) = v10;

  v11 = Dictionary.init(dictionaryLiteral:)();
  type metadata accessor for StorefrontEntity();
  sub_100223354(v11);
  v13 = v12;

  v14 = sub_1000DC274(v13, [a1 connection]);
  v15 = [v14 persistentID];

  return v15 != 0;
}

uint64_t sub_10022A050()
{
  sub_10008BE9C();
  *(v1 + 712) = v0;
  *(v1 + 650) = v2;
  *(v1 + 704) = v3;
  v4 = sub_100080FB4(&qword_1003CF820);
  sub_1000B01B0(v4);
  *(v1 + 720) = sub_1000B05D0();
  v5 = type metadata accessor for Locale.Components();
  *(v1 + 728) = v5;
  sub_1000B046C(v5);
  *(v1 + 736) = v6;
  *(v1 + 744) = sub_100124174();
  *(v1 + 752) = swift_task_alloc();
  v7 = type metadata accessor for Locale();
  *(v1 + 760) = v7;
  sub_1000B046C(v7);
  *(v1 + 768) = v8;
  *(v1 + 776) = sub_100124174();
  *(v1 + 784) = swift_task_alloc();
  v9 = sub_1000B043C();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_10022A18C()
{
  sub_100098BB4();
  v1 = *(v0 + 650);
  type metadata accessor for Bag();
  v2 = sub_100239728(v1);
  *(v0 + 792) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 688;
  *(v0 + 24) = sub_10022A2C4;
  v3 = swift_continuation_init();
  *(v0 + 328) = sub_100080FB4(&qword_1003D2E68);
  *(v0 + 272) = _NSConcreteStackBlock;
  *(v0 + 280) = 1107296256;
  *(v0 + 288) = sub_1000D67A8;
  *(v0 + 296) = &unk_1003911B0;
  *(v0 + 304) = v3;
  [v2 createSnapshotWithCompletion:v0 + 272];

  return _swift_continuation_await(v0 + 16, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10022A2C4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 800) = *(v3 + 48);
  sub_10022E5C0();
  v5 = *(v4 + 712);
  if (v6)
  {
    v7 = sub_10022B5E4;
  }

  else
  {
    v7 = sub_10022A3D0;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10022A3D0()
{
  sub_100098BB4();
  v1 = v0[86];
  v0[101] = v1;
  swift_unknownObjectRelease();
  if (qword_1003CC050 != -1)
  {
    sub_10022E530();
  }

  v2 = [v1 stringForKey:qword_1003F28B8];
  sub_10022E5B4();
  v0[102] = v3;
  v0[10] = v4;
  v0[15] = v0 + 80;
  v0[11] = sub_10022A508;
  v5 = sub_1000B0500();
  v6 = sub_100080FB4(&unk_1003D30E0);
  v0[103] = v6;
  v0[49] = v6;
  sub_10022E424();
  v0[43] = 1107296256;
  sub_10022E410();
  v0[45] = v7;
  v0[46] = v5;
  sub_10022E724(v8, "valueWithCompletion:");

  return _swift_continuation_await(v0 + 10, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_10022A508()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 832) = *(v3 + 112);
  sub_10022E5C0();
  v5 = *(v4 + 712);
  if (v6)
  {
    v7 = sub_10022B7EC;
  }

  else
  {
    v7 = sub_10022A614;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10022A614()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 816);
  *(v0 + 840) = *(v0 + 640);

  if (qword_1003CBFB8 != -1)
  {
    sub_10022E510();
  }

  v2 = [*(v0 + 808) stringForKey:qword_1003F2820];
  sub_10022E5B4();
  *(v0 + 848) = v3;
  *(v0 + 144) = v4;
  *(v0 + 184) = v0 + 656;
  *(v0 + 152) = sub_10022A72C;
  sub_1000B0500();
  sub_10022E3C0();
  *(v0 + 408) = 1107296256;
  v6 = sub_10022E3E0(v5);
  sub_10022E724(v6, "valueWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10022A72C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 856) = *(v3 + 176);
  sub_10022E5C0();
  v5 = *(v4 + 712);
  if (v6)
  {
    v7 = sub_10022B9F8;
  }

  else
  {
    v7 = sub_10022A838;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10022A838()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 848);
  *(v0 + 864) = *(v0 + 656);

  if (qword_1003CBF00 != -1)
  {
    sub_10022E4B4();
  }

  v2 = [*(v0 + 808) stringForKey:qword_1003F2768];
  sub_10022E5B4();
  *(v0 + 872) = v3;
  *(v0 + 208) = v4;
  *(v0 + 248) = v0 + 672;
  *(v0 + 216) = sub_10022A950;
  sub_1000B0500();
  sub_10022E3A0();
  *(v0 + 472) = 1107296256;
  v6 = sub_10022E3F8(v5);
  sub_10022E724(v6, "valueWithCompletion:");
  sub_1000B0518();

  return _swift_continuation_await(v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_10022A950()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 880) = *(v3 + 240);
  sub_10022E5C0();
  v5 = *(v4 + 712);
  if (v6)
  {
    v7 = sub_10022BC0C;
  }

  else
  {
    v7 = sub_10022AA5C;
  }

  return _swift_task_switch(v7, v5, 0);
}

uint64_t sub_10022AA5C()
{
  v1 = v0[109];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v18 = v0[91];
  v0[111] = v0[84];

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0[70] = v5;
  v0[71] = v7;
  sub_10022E620();
  sub_10022E570();

  Locale.Components.init(identifier:)();
  Locale.Currency.init(_:)();
  type metadata accessor for Locale.Currency();
  sub_10022E614();
  sub_100081DFC(v8, v9, v10, v11);
  Locale.Components.currency.setter();
  (*(v4 + 16))(v3, v2, v18);
  Locale.init(components:)();
  v12 = sub_1001073F0();
  v13(v12);
  v14 = swift_task_alloc();
  v0[112] = v14;
  *v14 = v0;
  sub_10022E780(v14);
  sub_10009F1B8();

  return sub_1000A10AC(v15);
}

uint64_t sub_10022ABF8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 904) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10022ACF0()
{
  v61 = v1;
  v4 = *(v1 + 904);
  if (v4)
  {
    v5 = sub_10022E81C(**(&off_1003914D0 + *(v1 + 650)));

    if (v5)
    {
      v6 = sub_10022E440();
      v53 = v7;
      v55 = v6;

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = sub_10022E76C();
      v9 = (v2)(v8);
      v17 = sub_10022E7FC(v9, v10, v11, v12, v13, v14, v15, v16, v46, v47, v48, v49, v51, v53, v55);
      sub_10013BC74();
      (v2)();
      sub_10022E614();
      v21 = v17;
    }

    else
    {
      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v26 = *(v1 + 650);
      v27 = type metadata accessor for SKLogger();
      sub_10007EDA4(v27, qword_1003F26C8);
      sub_10022E85C();
      v28 = v60;
      *(v1 + 608) = v59;
      *(v1 + 616) = v28;
      sub_1000B00A8();
      sub_10022E73C(v29, v30);
      *(v1 + 649) = v26;
      _print_unlocked<A, B>(_:_:)();
      sub_10022E5E8();
      v50 = *(v1 + 608);
      v31 = *(v1 + 616);
      if (qword_1003CBE98 != -1)
      {
        sub_10008BCDC();
      }

      TaskLocal.get()();
      v32 = *(v1 + 632);
      v33 = static os_log_type_t.error.getter();

      v34 = Logger.logObject.getter();

      v35 = os_log_type_enabled(v34, v33);
      v56 = *(v1 + 888);
      v57 = *(v1 + 864);
      v52 = *(v1 + 808);
      v54 = *(v1 + 840);
      v36 = *(v1 + 784);
      v37 = *(v1 + 768);
      v38 = *(v1 + 760);
      if (v35)
      {
        sub_1000B7DC8();
        swift_slowAlloc();
        sub_1000AFED8();
        sub_1000AFD6C(4.8752e-34);
        v39._countAndFlagsBits = sub_10022E70C();
        v39._object = v32;
        String.append(_:)(v39);
        sub_10009F134();
        v40 = sub_100080210(v59, v60, &v58);

        *(v4 + 4) = v40;
        sub_100107150();
        v41 = sub_100080210(v50, v31, &v58);

        *(v4 + 14) = v41;
        sub_10022E83C(&_mh_execute_header, v42, v43, "%{public}s%{public}s");
        swift_arrayDestroy();

        sub_10008BF90();

        (*(v37 + 8))(v47, v38);
      }

      else
      {

        (*(v37 + 8))(v36, v38);
      }

      sub_10022E754();
      v18 = sub_10022E2AC();
    }

    sub_10022E2D0(v18, v19, v20, v21);

    sub_100098AC4();
    sub_100107C68();

    __asm { BRAA            X1, X16 }
  }

  v22 = swift_task_alloc();
  *(v1 + 912) = v22;
  *v22 = v1;
  sub_10022E780(v22);
  sub_100107C68();

  return sub_1000A8B60(v23);
}

uint64_t sub_10022B120()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 920) = v5;

  v7 = sub_1000B043C();

  return _swift_task_switch(v7, v8, v9);
}

void sub_10022B218()
{
  v4 = *(v1 + 920);
  if (v4 && (v5 = sub_10022E81C(**(&off_1003914D0 + *(v1 + 650))), v0, v5))
  {
    v6 = sub_10022E440();
    v52 = v7;
    v54 = v6;

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = sub_10022E76C();
    v9 = (v2)(v8);
    v17 = sub_10022E7FC(v9, v10, v11, v12, v13, v14, v15, v16, v45, v47, v48, v49, v50, v52, v54);
    sub_10013BC74();
    (v2)();
    sub_10022E614();
    v21 = v17;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v22 = *(v1 + 650);
    v23 = type metadata accessor for SKLogger();
    sub_10007EDA4(v23, qword_1003F26C8);
    sub_10022E85C();
    v24 = v59;
    *(v1 + 608) = v58;
    *(v1 + 616) = v24;
    sub_1000B00A8();
    sub_10022E73C(v25, v26);
    *(v1 + 649) = v22;
    _print_unlocked<A, B>(_:_:)();
    sub_10022E5E8();
    v51 = *(v1 + 608);
    v27 = *(v1 + 616);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v28 = *(v1 + 632);
    v29 = static os_log_type_t.error.getter();

    v30 = Logger.logObject.getter();

    v31 = os_log_type_enabled(v30, v29);
    v55 = *(v1 + 888);
    v56 = *(v1 + 864);
    v53 = *(v1 + 840);
    v32 = *(v1 + 768);
    v33 = *(v1 + 760);
    if (v31)
    {
      sub_1000B7DC8();
      v46 = v34;
      swift_slowAlloc();
      sub_1000B002C();
      sub_1000AFD6C(4.8752e-34);
      v35._countAndFlagsBits = sub_10022E70C();
      v35._object = v28;
      String.append(_:)(v35);
      sub_10009F134();
      v36 = sub_100080210(v58, v59, &v57);

      *(v4 + 4) = v36;
      sub_100107150();
      v37 = sub_100080210(v51, v27, &v57);

      *(v4 + 14) = v37;
      sub_10022E83C(&_mh_execute_header, v38, v39, "%{public}s%{public}s");
      swift_arrayDestroy();

      sub_10008BF90();

      (*(v32 + 8))(v47, v33);
    }

    else
    {

      v40 = sub_1001B5400();
      v42(v40, v41);
    }

    sub_10022E754();
    v18 = sub_10022E2AC();
  }

  sub_10022E2D0(v18, v19, v20, v21);

  sub_100098AC4();
  sub_100107C68();

  __asm { BRAA            X1, X16 }
}

id sub_10022BE4C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9storekitdP33_AF6EE5E6A32790C1A1159F4A44E8152D23BagNotificationListener_continuation;
  v4 = sub_100080FB4(&qword_1003CCBD8);
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v11.receiver = v1;
  v11.super_class = type metadata accessor for BagNotificationListener();
  v6 = objc_msgSendSuper2(&v11, "init");
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  [v9 addObserver:v8 selector:"bagChanged:" name:AMSBagChangedNotification object:0];
  [v9 addObserver:v8 selector:"bagChanged:" name:AMSBagInvalidatedNotification object:0];

  (*(v5 + 8))(a1, v4);
  return v8;
}

id sub_10022BFBC()
{
  v1 = v0;
  v2 = sub_100080FB4(&qword_1003CCBD8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - v4;
  (*(v3 + 16))(&v9 - v4, v1 + OBJC_IVAR____TtC9storekitdP33_AF6EE5E6A32790C1A1159F4A44E8152D23BagNotificationListener_continuation, v2);
  AsyncStream.Continuation.finish()();
  (*(v3 + 8))(v5, v2);
  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1 name:AMSBagChangedNotification object:0];
  [v6 removeObserver:v1 name:AMSBagInvalidatedNotification object:0];

  v7 = type metadata accessor for BagNotificationListener();
  v9.receiver = v1;
  v9.super_class = v7;
  return objc_msgSendSuper2(&v9, "dealloc");
}

uint64_t type metadata accessor for BagNotificationListener()
{
  result = qword_1003D2D98;
  if (!qword_1003D2D98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10022C22C()
{
  v0 = sub_100080FB4(&qword_1003CCBD0);
  v26 = *(v0 - 8);
  v27 = v0;
  __chkstk_darwin(v0);
  v2 = &v25 - v1;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for SKLogger();
  sub_10007EDA4(v3, qword_1003F26C8);
  sub_1001CA63C();
  v28 = v4;
  v6 = v5;
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v7._object = 0x800000010031FFE0;
  v7._countAndFlagsBits = 0xD000000000000030;
  String.append(_:)(v7);
  v8 = Notification.name.getter();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 34;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  v15 = v30;
  v14 = v31;

  v16 = static os_log_type_t.default.getter();

  v17 = Logger.logObject.getter();

  if (os_log_type_enabled(v17, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 136446466;
    v29 = v19;
    v30 = 91;
    v31 = 0xE100000000000000;
    v20._countAndFlagsBits = v28;
    v20._object = v6;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8285;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = sub_100080210(v30, v31, &v29);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2082;
    v23 = sub_100080210(v15, v14, &v29);

    *(v18 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v30 = v28;
  v31 = v6;
  sub_100080FB4(&qword_1003CCBD8);
  AsyncStream.Continuation.yield(_:)();
  return (*(v26 + 8))(v2, v27);
}

void sub_10022C6BC()
{
  sub_10022C74C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10022C74C()
{
  if (!qword_1003D2DA8)
  {
    v0 = type metadata accessor for AsyncStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1003D2DA8);
    }
  }
}

void sub_10022C79C(void *a1)
{
  v2 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v2];

  v3 = String._bridgeToObjectiveC()();
  [a1 executeStatement:v3];
}

id sub_10022C884()
{
  v0 = [objc_allocWithZone(SQLiteDatabaseStoreDescriptor) init];
  v1 = String._bridgeToObjectiveC()();
  [v0 setSchemaName:v1];

  sub_10008E5A4(0, &qword_1003CCED0);
  [v0 setSessionClass:swift_getObjCClassFromMetadata()];
  sub_10008E5A4(0, &qword_1003CCED8);
  [v0 setTransactionClass:swift_getObjCClassFromMetadata()];
  return v0;
}

BOOL sub_10022C958(id a1)
{
  while (1)
  {
    v2 = [a1 currentSchemaVersion];
    if (v2 > 16999)
    {
      return v2 > 16999;
    }

    v3 = [a1 currentSchemaVersion];
    if (!v3)
    {
      goto LABEL_5;
    }

    if (v3 != 17000)
    {
      if (v3 != 16000)
      {
        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v6 = type metadata accessor for SKLogger();
        sub_10007EDA4(v6, qword_1003F26C8);
        aBlock = 0;
        v18 = 0xE000000000000000;
        _StringGuts.grow(_:)(36);

        aBlock = 0xD00000000000001CLL;
        v18 = 0x800000010031FEC0;
        v23 = [a1 currentSchemaVersion];
        v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v7);

        v8._countAndFlagsBits = 540949792;
        v8._object = 0xE400000000000000;
        String.append(_:)(v8);
        v23 = 17000;
        v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v9);

        v11 = aBlock;
        v10 = v18;
        v12 = static os_log_type_t.error.getter();

        v13 = Logger.logObject.getter();

        if (os_log_type_enabled(v13, v12))
        {
          v14 = swift_slowAlloc();
          aBlock = swift_slowAlloc();
          *v14 = 136446466;
          *(v14 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
          *(v14 + 12) = 2082;
          v15 = sub_100080210(v11, v10, &aBlock);

          *(v14 + 14) = v15;
          _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v2 > 16999;
      }

LABEL_5:
      v21 = sub_10022C79C;
      v22 = 0;
      aBlock = _NSConcreteStackBlock;
      v18 = 1107296256;
      v19 = sub_100224D90;
      v20 = &unk_100391188;
      v4 = _Block_copy(&aBlock);

      v5 = [a1 migrateToVersion:17000 usingBlock:v4];
      _Block_release(v4);
      if ((v5 & 1) == 0)
      {
        return v2 > 16999;
      }
    }
  }
}

id sub_10022CCF0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for StorefrontStore();
  v3 = objc_msgSendSuper2(&v5, "initWithDatabase:", a1);

  return v3;
}

uint64_t sub_10022CEBC()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 stringValueForProperty:v1];

  if (v2)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {
    sub_10009E7E4();
    swift_allocError();
    *v5 = 0xD000000000000011;
    *(v5 + 8) = 0x800000010031FEA0;
    *(v5 + 48) = 0;
    return swift_willThrow();
  }
}

id sub_10022CF98(uint64_t a1, void *a2)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for StorefrontEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPropertyValues:onConnection:", isa, a2);

  return v5;
}

id sub_10022D094(uint64_t a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for StorefrontEntity();
  v5 = objc_msgSendSuper2(&v7, "initWithPersistentID:onConnection:", a1, a2);

  return v5;
}

id sub_10022D12C(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "init");
}

id sub_10022D1BC(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_10022D218(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1000AFC98;

  return v6();
}

uint64_t sub_10022D300(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1000A7644;

  return v7();
}

uint64_t sub_10022D3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v9 - 8);
  v11 = v22 - v10;
  sub_10022DD1C(a3, v22 - v10, &unk_1003CE2B0);
  v12 = type metadata accessor for TaskPriority();
  if (sub_100081D0C(v11, 1, v12) == 1)
  {
    sub_10013B1E8(v11, &unk_1003CE2B0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  if (*(a5 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();
    v15 = v14;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v16 = String.utf8CString.getter() + 32;
      v17 = swift_allocObject();
      *(v17 + 16) = a4;
      *(v17 + 24) = a5;

      if (v15 | v13)
      {
        v23[0] = 0;
        v23[1] = 0;
        v18 = v23;
        v23[2] = v13;
        v23[3] = v15;
      }

      else
      {
        v18 = 0;
      }

      v22[1] = 7;
      v22[2] = v18;
      v22[3] = v16;
      v20 = swift_task_create();

      sub_10013B1E8(a3, &unk_1003CE2B0);

      return v20;
    }
  }

  else
  {
    v13 = 0;
    v15 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_10013B1E8(a3, &unk_1003CE2B0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  if (v15 | v13)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v13;
    v23[7] = v15;
  }

  return swift_task_create();
}

uint64_t sub_10022D6C4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10016C6A4;

  return v6(a1);
}

uint64_t sub_10022D7BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10022D7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorefrontInternal();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022D850()
{
  v1 = (type metadata accessor for StorefrontInternal() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[8];
  type metadata accessor for Locale();
  sub_10013B618();
  (*(v6 + 8))(v0 + v3 + v5);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

BOOL sub_10022D934(void *a1)
{
  v3 = type metadata accessor for StorefrontInternal();
  sub_1000B01B0(v3);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v4 + 80) + 17) & ~*(v4 + 80)));

  return sub_100229E78(a1, v5, v6);
}

uint64_t sub_10022D9A4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10022D9E8()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_10022DA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCEE8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022DAD8()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100123BD0(v1);

  return v3(v2);
}

uint64_t sub_10022DB74()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1000AFC98;
  sub_10013BC74();
  sub_1000B0518();

  return v6(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10022DC24()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10022DC64()
{
  sub_1000B0004();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_10022E550();

  return v4(v3);
}

uint64_t sub_10022DD1C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_100080FB4(a3);
  v4 = sub_1001073F0();
  v5(v4);
  return a2;
}

uint64_t sub_10022DD80()
{
  sub_100098BB4();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  v1[1] = sub_1000AFC98;
  v3 = sub_10022E550();

  return v4(v3);
}

uint64_t sub_10022DE24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&qword_1003CCEE8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10022DE94(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_10013B618();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_10022DEF0()
{
  v1 = sub_100080FB4(&qword_1003D2838);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10022DFC8()
{
  sub_1000B0004();
  v1 = sub_100080FB4(&qword_1003D2838);
  sub_1000B01B0(v1);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  v5 = sub_1000AFE54(v4);
  *v5 = v6;
  v5[1] = sub_1000A7644;
  v7 = sub_10022E550();

  return sub_100225E3C(v7, v8, v2, v3, v9);
}

uint64_t sub_10022E0B4()
{
  sub_10008BE9C();
  v0 = swift_task_alloc();
  v1 = sub_1000AFE54(v0);
  *v1 = v2;
  sub_10022E4A0(v1);

  return sub_1002264AC();
}

uint64_t sub_10022E138()
{
  _Block_release(*(v0 + 24));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10022E178()
{
  sub_100098BB4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = sub_100123BD0(v1);

  return v3(v2);
}

void sub_10022E27C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  *v15 = a9;
  v17 = v14;
  v18 = v13;

  String.append(_:)(*&v17);
}

uint64_t sub_10022E2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100081DFC(a1, a2, a3, a4);
}

void sub_10022E318(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v15 = a9;
  v18 = v16;
  v19 = v14;

  String.append(_:)(*&v18);
}

uint64_t sub_10022E380()
{
}

uint64_t sub_10022E3E0(uint64_t result)
{
  v2[52] = sub_10023FCCC;
  v2[53] = v1;
  v2[54] = result;
  return result;
}

uint64_t sub_10022E3F8(uint64_t result)
{
  v2[60] = sub_10023FCCC;
  v2[61] = v1;
  v2[62] = result;
  return result;
}

uint64_t sub_10022E440()
{

  return static String._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_10022E480()
{

  return swift_once();
}

uint64_t sub_10022E4B4()
{

  return swift_once();
}

uint64_t sub_10022E510()
{

  return swift_once();
}

uint64_t sub_10022E530()
{

  return swift_once();
}

uint64_t sub_10022E570()
{

  return StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
}

void sub_10022E5E8()
{
  v1 = 0x746E756F63636120;
  v2 = 0xE90000000000002ELL;

  String.append(_:)(*&v1);
}

unint64_t sub_10022E620()
{
  v0[72] = 45;
  v0[73] = 0xE100000000000000;
  v0[74] = 95;
  v0[75] = 0xE100000000000000;

  return sub_100106050();
}

uint64_t sub_10022E64C()
{

  return static _DictionaryStorage.allocate(capacity:)();
}

void sub_10022E698()
{
  v1 = 0x6C696E20736920;
  v2 = 0xE700000000000000;

  String.append(_:)(*&v1);
}

uint64_t sub_10022E6C0()
{
}

uint64_t sub_10022E6E8()
{

  return static os_log_type_t.error.getter();
}

id sub_10022E724(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

void sub_10022E73C(uint64_t a1, uint64_t a2)
{
  v3 = 0xD00000000000001ELL;

  String.append(_:)(*(&a2 - 1));
}

uint64_t sub_10022E754()
{

  return type metadata accessor for StorefrontInternal();
}

void sub_10022E7DC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_10022E7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *v16 = a15;
  v16[1] = a14;
  v16[2] = v17;
  v16[3] = v15;

  return type metadata accessor for StorefrontInternal();
}

id sub_10022E81C(uint64_t a1)
{

  return [v2 v1];
}

void sub_10022E83C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void sub_10022E85C()
{

  _StringGuts.grow(_:)(41);
}

uint64_t sub_10022E87C()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10022E894()
{

  return _print_unlocked<A, B>(_:_:)();
}

uint64_t sub_10022E8AC()
{

  return type metadata accessor for StorefrontInternal();
}

uint64_t sub_10022E8C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v71 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v9 = type metadata accessor for SKLogger();
  v10 = sub_10007EDA4(v9, qword_1003F26C8);
  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v74 = 0x20676E6974697257;
  v75 = 0xE800000000000000;
  v65 = a1;
  v66 = a2;
  v76 = Data.count.getter();
  v11._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v11);

  v12._object = 0x80000001003202A0;
  v12._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v12);
  v13 = sub_10022FC18(&qword_1003CDF58, &type metadata accessor for URL);
  v72 = v6;
  v73 = a3;
  v68 = v13;
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  v15 = v75;
  v64 = v74;
  if (qword_1003CBE98 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v69 = qword_1003F2700;
  TaskLocal.get()();
  v17 = v74;
  v16 = v75;
  v18 = static os_log_type_t.default.getter();

  v19 = Logger.logObject.getter();

  v20 = os_log_type_enabled(v19, v18);
  v70 = v10;
  if (v20)
  {
    sub_1000B7DC8();
    v21 = swift_slowAlloc();
    sub_1000B7DBC();
    v76 = swift_slowAlloc();
    *v21 = 136446466;
    sub_10022FC6C();
    v22._countAndFlagsBits = v17;
    v22._object = v16;
    String.append(_:)(v22);
    v23._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v23);
    sub_10022FC60();
    v27 = sub_100080210(v24, v25, v26);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2082;
    v28 = sub_100080210(v64, v15, &v76);

    *(v21 + 14) = v28;
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_100080FB4(&qword_1003D2E88);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED020;
  *(inited + 32) = NSFileOwnerAccountName;
  *(inited + 40) = 0x656C69626F6DLL;
  *(inited + 48) = 0xE600000000000000;
  *(inited + 56) = NSFileGroupOwnerAccountName;
  *(inited + 64) = 0x656C69626F6DLL;
  *(inited + 72) = 0xE600000000000000;
  type metadata accessor for FileAttributeKey(0);
  sub_10022FC18(&qword_1003CC398, type metadata accessor for FileAttributeKey);
  v30 = NSFileOwnerAccountName;
  v31 = NSFileGroupOwnerAccountName;
  v32 = Dictionary.init(dictionaryLiteral:)();
  v33 = [objc_opt_self() defaultManager];
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v34);
  v36 = v35;
  (*(v71 + 8))(v8, v72);
  sub_100223804(v32);
  v38 = v37;

  v74 = 0;
  LOBYTE(v38) = sub_10022FB00(v36, 1, v38, &v74, v33);

  if (v38)
  {
    v39 = v74;
    v40 = v67;
    result = Data.write(to:options:)();
    v42 = v40;
    if (!v40)
    {
      return result;
    }
  }

  else
  {
    v43 = v74;
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v74 = 0;
  v75 = 0xE000000000000000;
  _StringGuts.grow(_:)(31);
  v44._countAndFlagsBits = 0xD000000000000019;
  v44._object = 0x80000001003202C0;
  String.append(_:)(v44);
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  v46._countAndFlagsBits = 8250;
  v46._object = 0xE200000000000000;
  String.append(_:)(v46);
  v76 = v42;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v48 = v74;
  v47 = v75;
  TaskLocal.get()();
  v50 = v74;
  v49 = v75;
  v51 = static os_log_type_t.error.getter();

  v52 = Logger.logObject.getter();

  if (os_log_type_enabled(v52, v51))
  {
    sub_1000B7DC8();
    v53 = swift_slowAlloc();
    v73 = v48;
    v54 = v53;
    sub_1000B7DBC();
    v76 = swift_slowAlloc();
    *v54 = 136446466;
    sub_10022FC6C();
    v55._countAndFlagsBits = v50;
    v55._object = v49;
    String.append(_:)(v55);
    v56._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v56);
    sub_10022FC60();
    sub_100080210(v57, v58, v59);

    sub_10022FC80();
    v61 = sub_100080210(v73, v47, v60);

    *(v54 + 14) = v61;
    _os_log_impl(&_mh_execute_header, v52, v51, "%{public}s%{public}s", v54, 0x16u);
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  else
  {
  }

  sub_10008B5E0();
  swift_allocError();
  *v62 = 10;
  swift_willThrow();
}

uint64_t sub_10022F060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  sub_100080FB4(&unk_1003D0540);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v3[24] = v4;
  v3[25] = *(v4 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10022F180, 0, 0);
}

uint64_t sub_10022F180()
{
  v86 = v0;
  v1 = v0[28];
  (*(v0[25] + 16))(v1, v0[21] + OBJC_IVAR____TtC9storekitd6Client_callerBundleURL, v0[24]);
  v2 = objc_allocWithZone(LSApplicationRecord);
  v3 = sub_1001B35E8(v1, 0);
  v5 = v0[23];
  v4 = v0[24];
  v6 = v3;
  sub_10017C284();

  v7 = &off_1003CB000;
  v74 = v6;
  if (sub_100081D0C(v5, 1, v4) == 1)
  {
    sub_100146014(v0[23]);
    sub_10008B5E0();
    v8 = swift_allocError();
    *v9 = 1;
    swift_willThrow();
    if (qword_1003CBE58 != -1)
    {
LABEL_42:
      sub_1000B7CD0();
      swift_once();
    }

    v13 = type metadata accessor for SKLogger();
    sub_10007EDA4(v13, qword_1003F26C8);
    v84 = 0;
    v85 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);
    v14 = v85;
    v0[7] = v84;
    v0[8] = v14;
    v15._object = 0x80000001003202E0;
    v15._countAndFlagsBits = 0xD000000000000025;
    String.append(_:)(v15);
    v0[15] = v8;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v17 = v0[7];
    v16 = v0[8];
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    TaskLocal.get()();
    v19 = v0[9];
    v18 = v0[10];
    v20 = static os_log_type_t.error.getter();

    v21 = Logger.logObject.getter();

    if (os_log_type_enabled(v21, v20))
    {
      sub_1000B7DC8();
      v22 = swift_slowAlloc();
      sub_1000B7DBC();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      v83 = v23;
      v84 = 91;
      v85 = 0xE100000000000000;
      v24._countAndFlagsBits = v19;
      v24._object = v18;
      String.append(_:)(v24);
      v25._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v25);
      sub_10022FC60();
      sub_100080210(v26, v27, v28);

      sub_10022FC80();
      v30 = sub_100080210(v17, v16, v29);

      *(v22 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
      sub_1000B7D68();

      v6 = v74;
      sub_1000B7D68();
    }

    else
    {
    }

    v7 = &off_1003CB000;
  }

  else
  {
    v10 = v0[27];
    v12 = v0[19];
    v11 = v0[20];
    (*(v0[25] + 32))(v10, v0[23], v0[24]);
    sub_10022E8C4(v12, v11, v10);
    (*(v0[25] + 8))(v0[27], v0[24]);
  }

  v31 = [v6 applicationExtensionRecords];
  sub_10022FBD4();
  sub_10022FC18(&qword_1003D2E98, sub_10022FBD4);
  v32 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v32 & 0xC000000000000001) != 0)
  {
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v32 = v0[2];
    v33 = v0[3];
    v34 = v0[4];
    v6 = v0[5];
    v35 = v0[6];
  }

  else
  {
    v6 = 0;
    v36 = -1 << *(v32 + 32);
    v33 = v32 + 56;
    v34 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = v38 & *(v32 + 56);
  }

  v73 = v34;
  v39 = (v34 + 64) >> 6;
  v40 = v0[25];
  v75 = (v40 + 8);
  v76 = (v40 + 32);
  v78 = v33;
  v79 = v32;
  v77 = v39;
  while ((v32 & 0x8000000000000000) == 0)
  {
    v41 = v6;
    v42 = v35;
    v8 = v6;
    if (!v35)
    {
      while (1)
      {
        v8 = (v41 + 1);
        if (__OFADD__(v41, 1))
        {
          break;
        }

        if (v8 >= v39)
        {
          goto LABEL_38;
        }

        v42 = *(v33 + 8 * v8);
        ++v41;
        if (v42)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_23:
    v43 = (v42 - 1) & v42;
    v44 = *(*(v32 + 48) + ((v8 << 9) | (8 * __clz(__rbit64(v42)))));
    if (!v44)
    {
      goto LABEL_38;
    }

LABEL_27:
    v82 = v43;
    v46 = v0[24];
    v47 = v0[22];
    v48 = v44;
    sub_10017C284();

    if (sub_100081D0C(v47, 1, v46) == 1)
    {
      sub_100146014(v0[22]);
      sub_10008B5E0();
      v49 = swift_allocError();
      *v50 = 1;
      swift_willThrow();
      if (v7[459] != -1)
      {
        sub_1000B7CD0();
        swift_once();
      }

      v81 = v48;
      v54 = type metadata accessor for SKLogger();
      sub_10007EDA4(v54, qword_1003F26C8);
      v84 = 0;
      v85 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      v55 = v85;
      v0[11] = v84;
      v0[12] = v55;
      v56._countAndFlagsBits = 0xD000000000000027;
      v56._object = 0x8000000100320310;
      String.append(_:)(v56);
      v0[16] = v49;
      sub_100080FB4(&qword_1003CCCB0);
      _print_unlocked<A, B>(_:_:)();
      v57 = v0[12];
      v80 = v0[11];
      if (qword_1003CBE98 != -1)
      {
        sub_1000ED744();
        swift_once();
      }

      TaskLocal.get()();
      v58 = v0[13];
      v59 = v0[14];
      v60 = static os_log_type_t.error.getter();

      v61 = Logger.logObject.getter();

      if (os_log_type_enabled(v61, v60))
      {
        sub_1000B7DC8();
        v62 = swift_slowAlloc();
        sub_1000B7DBC();
        v63 = swift_slowAlloc();
        *v62 = 136446466;
        v83 = v63;
        v84 = 91;
        v85 = 0xE100000000000000;
        v64._countAndFlagsBits = v58;
        v64._object = v59;
        String.append(_:)(v64);
        v65._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v65);
        sub_10022FC60();
        v69 = sub_100080210(v66, v67, v68);

        *(v62 + 4) = v69;
        *(v62 + 12) = 2082;
        v70 = sub_100080210(v80, v57, &v83);

        *(v62 + 14) = v70;
        _os_log_impl(&_mh_execute_header, v61, v60, "%{public}s%{public}s", v62, 0x16u);
        swift_arrayDestroy();
        v7 = &off_1003CB000;
        sub_1000B7D68();

        sub_1000B7D68();
      }

      else
      {
      }

      v6 = v8;
      v35 = v82;
      v33 = v78;
      v32 = v79;
      v39 = v77;
    }

    else
    {
      v51 = v0[26];
      v52 = v0[19];
      v53 = v0[20];
      (*v76)(v51, v0[22], v0[24]);
      sub_10022E8C4(v52, v53, v51);
      (*v75)(v0[26], v0[24]);

      v6 = v8;
      v35 = v82;
    }
  }

  v45 = __CocoaSet.Iterator.next()();
  if (v45)
  {
    v0[18] = v45;
    swift_dynamicCast();
    v44 = v0[17];
    v8 = v6;
    v43 = v35;
    if (v44)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  sub_100123174();

  v71 = v0[1];

  return v71();
}

id sub_10022FB00(uint64_t a1, char a2, uint64_t a3, uint64_t a4, void *a5)
{
  type metadata accessor for FileAttributeKey(0);
  sub_10022FC18(&qword_1003CC398, type metadata accessor for FileAttributeKey);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = [a5 createDirectoryAtURL:a1 withIntermediateDirectories:a2 & 1 attributes:isa error:a4];

  return v10;
}

unint64_t sub_10022FBD4()
{
  result = qword_1003D2E90;
  if (!qword_1003D2E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003D2E90);
  }

  return result;
}

uint64_t sub_10022FC18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10022FCA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v4[13] = type metadata accessor for SKLogger();
  v4[14] = swift_task_alloc();
  v7 = swift_task_alloc();
  v4[15] = v7;
  *v7 = v4;
  v7[1] = sub_10022FD8C;
  v8 = sub_100123E30();

  return sub_100230140(v8, v9, a3, a4);
}

uint64_t sub_10022FD8C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_10008BEFC();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10022FEB8, 0, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_10022FEB8()
{
  v25 = v0;
  if (qword_1003CBE50 != -1)
  {
    sub_1001C532C();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v21 = *(v0 + 88);
  sub_10007EDA4(*(v0 + 104), qword_1003F26B0);
  sub_10023477C();
  sub_100234658(v5, v2, v6);
  v23 = 0;
  v24 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 16) = v4;
  *(v0 + 24) = v3;
  *(v0 + 32) = v21;
  _print_unlocked<A, B>(_:_:)();
  v7._object = 0x8000000100320340;
  v7._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v7);
  *(v0 + 64) = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v9 = *(v0 + 48);
  v8 = *(v0 + 56);
  v10 = static os_log_type_t.error.getter();
  v11 = Logger.logObject.getter();
  v12 = os_log_type_enabled(v11, v10);
  v13 = *(v0 + 112);
  if (v12)
  {
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    sub_10008E688();
    v16 = sub_10008BF58();
    *v9 = 136446466;
    v22 = v16;
    v23 = 91;
    v24 = 0xE100000000000000;
    v17._countAndFlagsBits = v15;
    v17._object = v14;
    String.append(_:)(v17);
    sub_10009F134();
    sub_100080210(91, 0xE100000000000000, &v22);
    sub_10019DEC4();
    *(v9 + 4) = v14;
    *(v9 + 12) = 2082;
    sub_100080210(v9, v8, &v22);
    sub_1000B047C();
    *(v9 + 14) = 0xE100000000000000;
    sub_10013BE10(&_mh_execute_header, v11, v10, "%{public}s%{public}s");
    sub_1000B0048();
    sub_1000B0080();
    sub_10008BF3C();

    sub_100234764();
  }

  else
  {

    sub_100234764();
  }

  sub_100234710(v13, v18);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_100230140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  sub_100080FB4(&unk_1003CCCB8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = type metadata accessor for ConsultMessageListenerTask();
  v4[19] = swift_task_alloc();
  v5 = type metadata accessor for PurchaseIntentInternal();
  v4[20] = v5;
  v4[21] = *(v5 - 8);
  v4[22] = swift_task_alloc();
  sub_100080FB4(&qword_1003CE608);
  v4[23] = swift_task_alloc();
  v6 = type metadata accessor for Date();
  v4[24] = v6;
  v7 = *(v6 - 8);
  v4[25] = v7;
  v4[26] = *(v7 + 64);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = type metadata accessor for MessageServerResponse.MessageItem(0);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = type metadata accessor for MessageServerResponse(0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  type metadata accessor for Client.Server(0);
  v4[36] = swift_task_alloc();
  sub_100080FB4(&qword_1003CDC70);
  v4[37] = swift_task_alloc();
  v4[38] = swift_task_alloc();
  v4[39] = swift_task_alloc();
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v4[43] = swift_task_alloc();
  v4[44] = type metadata accessor for SKLogger();
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();

  return _swift_task_switch(sub_1002304B0, 0, 0);
}

uint64_t sub_100230BE4()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 616) = v5;
  *(v3 + 432) = v6;
  *(v3 + 440) = v0;

  if (v0)
  {
    v7 = *(v3 + 96);

    v8 = sub_1002339D0;
  }

  else
  {
    v8 = sub_100230D00;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_100231380()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 456) = v3;
  *(v1 + 617) = v4;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100231AFC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 480) = v3;
  *(v1 + 618) = v4;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100232130()
{
  sub_10008BE9C();
  *(v0 + 568) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100232190()
{
  v17 = v0[68];
  v15 = v0[69];
  v16 = v0[67];
  v1 = v0[52];
  v14 = v0[51];
  v2 = v0[27];
  v4 = v0[25];
  v3 = v0[26];
  v5 = v0[24];
  (*(v4 + 16))(v2, v0[28], v5);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = (v3 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[72] = v9;
  (*(v4 + 32))(v9 + v6, v2, v5);
  v10 = (v9 + v7);
  *v10 = v14;
  v10[1] = v1;
  *(v9 + v8) = v15;
  v11 = (v9 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v11 = v16;
  v11[1] = v17;

  v12 = swift_task_alloc();
  v0[73] = v12;
  *v12 = v0;
  v12[1] = sub_10023232C;

  return sub_1001D5D00(sub_10023459C, v9);
}

uint64_t sub_10023232C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_10008BEFC();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_100232430()
{
  v155 = v0;
  v1 = v0;
  v2 = v0[71];
  v3 = v0[69];
  v4 = v0[28];
  v5 = v1[24];
  v6 = v1[25];

  (*(v6 + 8))(v4, v5);
  swift_beginAccess();
  v7 = *(v3 + 16);

  v136 = *(v7 + 16);
  if (v136)
  {
    v8 = 0;
    v129 = v1 + 5;
    v140 = v1 + 7;
    v134 = v1[21];
    v135 = v1[22];
    v131 = v1[20];
    v133 = v7 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v139 = v1;
    v130 = v7;
    while (v8 < *(v7 + 16))
    {
      v10 = v1[63];
      v9 = v1[64];
      sub_100234658(v133 + *(v134 + 72) * v8, v1[22], type metadata accessor for PurchaseIntentInternal);
      v11 = *(v135 + 32) == v10 && *(v135 + 40) == v9;
      if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v12 = (v1[22] + *(v131 + 36));
        v13 = v12[1];
        if (!v13)
        {
          v40 = Dictionary.init(dictionaryLiteral:)();
          goto LABEL_40;
        }

        v132 = v8;
        v14 = *v12;
        v1[5] = 38;
        v1[6] = 0xE100000000000000;
        *(swift_task_alloc() + 16) = v129;

        v15 = sub_100234B00();
        v19 = sub_1001D95E4(v15, v16, v17, v18, v14, v13);

        v20 = v19[2];
        if (!v20)
        {

          v22 = _swiftEmptyArrayStorage;
          goto LABEL_26;
        }

        v154[0] = _swiftEmptyArrayStorage;
        sub_10021346C();
        v21 = 0;
        v22 = _swiftEmptyArrayStorage;
        v137 = v19;
        v138 = v20;
        do
        {
          if (v21 >= v19[2])
          {
            __break(1u);
            goto LABEL_66;
          }

          v148 = v22;

          v23 = static String._fromSubstring(_:)();
          v25 = v24;
          v1[7] = 61;
          v1[8] = 0xE100000000000000;
          *(swift_task_alloc() + 16) = v140;
          v26 = sub_100234B00();
          v30 = sub_1001D95E4(v26, v27, v28, v29, v23, v25);

          v31 = v30[2];
          if (v31)
          {
            sub_100213374(0, v31, 0);
            v32 = v30 + 7;
            do
            {

              v33 = static String._fromSubstring(_:)();
              v35 = v34;

              v37 = _swiftEmptyArrayStorage[2];
              v36 = _swiftEmptyArrayStorage[3];
              if (v37 >= v36 >> 1)
              {
                sub_100213374(v36 > 1, v37 + 1, 1);
              }

              _swiftEmptyArrayStorage[2] = v37 + 1;
              v38 = &_swiftEmptyArrayStorage[2 * v37];
              v38[4] = v33;
              v38[5] = v35;
              v32 += 4;
              --v31;
            }

            while (v31);

            v20 = v138;
            v1 = v139;
            v19 = v137;
          }

          else
          {
          }

          v22 = v148;
          v154[0] = v148;
          v39 = *(v148 + 16);
          if (v39 >= *(v148 + 24) >> 1)
          {
            sub_10021346C();
            v22 = v154[0];
          }

          ++v21;
          v22[2] = v39 + 1;
          v22[v39 + 4] = _swiftEmptyArrayStorage;
        }

        while (v21 != v20);

LABEL_26:
        v40 = Dictionary.init(dictionaryLiteral:)();
        v41 = 0;
        v42 = v22[2];
        while (v42 != v41)
        {
          if (v41 >= v22[2])
          {
            __break(1u);
            goto LABEL_55;
          }

          v43 = v22[v41++ + 4];
          if (v43[2] == 2)
          {
            v149 = v22;
            v45 = v43[4];
            v44 = v43[5];
            v46 = v43[7];
            v141 = v43[6];

            v143 = v46;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v153 = v40;
            v145 = v45;
            v48 = v40;
            v49 = v44;
            v50 = sub_1000B6328(v45, v44);
            v52 = *(v48 + 16);
            v53 = (v51 & 1) == 0;
            v54 = v52 + v53;
            if (__OFADD__(v52, v53))
            {
              goto LABEL_67;
            }

            v55 = v50;
            v56 = v51;
            sub_100080FB4(qword_1003D2EA0);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v54))
            {
              v57 = sub_1000B6328(v145, v49);
              if ((v56 & 1) != (v58 & 1))
              {
                sub_100143F94();

                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                return;
              }

              v55 = v57;
            }

            if (v56)
            {

              v40 = v153;
              v59 = (v153[7] + 16 * v55);
              *v59 = v141;
              v59[1] = v143;
            }

            else
            {
              v153[(v55 >> 6) + 8] |= 1 << v55;
              v60 = (v153[6] + 16 * v55);
              *v60 = v145;
              v60[1] = v49;
              v61 = (v153[7] + 16 * v55);
              *v61 = v141;
              v61[1] = v143;

              v62 = v153[2];
              v63 = __OFADD__(v62, 1);
              v64 = v62 + 1;
              if (v63)
              {
                goto LABEL_68;
              }

              v153[2] = v64;
              v40 = v153;
            }

            v1 = v139;
            v22 = v149;
          }
        }

        v7 = v130;
        v8 = v132;
LABEL_40:
        if (*(v40 + 16) && (v65 = sub_1000B6328(0x66664F636F486461, 0xEC00000064497265), (v66 & 1) != 0))
        {
          v67 = v8;
          v68 = v1[66];
          v69 = v1[65];
          v70 = (*(v40 + 56) + 16 * v65);
          v72 = *v70;
          v71 = v70[1];

          if (v72 == v69 && v71 == v68)
          {
            v93 = v1[62];

            goto LABEL_56;
          }

          v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v7 = v130;
          v8 = v67;
          if (v74)
          {
LABEL_55:
            v93 = v1[62];
LABEL_56:

            v94 = v1[66];
            v95 = v1[64];
            v146 = v1[63];
            v151 = v1[65];
            v96 = v1[50];
            v97 = v1[48];
            v98 = v1;
            v101 = v1 + 22;
            v100 = v1[22];
            v99 = v101[1];
            v102 = v98[20];
            v103 = v98[12];

            sub_1002346B4(v100, v99, type metadata accessor for PurchaseIntentInternal);
            sub_100081DFC(v99, 0, 1, v102);
            sub_10013B1E8(v99, &qword_1003CE608);
            sub_10023477C();
            sub_100234658(v96, v97, v104);
            _StringGuts.grow(_:)(67);
            v105._countAndFlagsBits = 0xD00000000000002BLL;
            v105._object = 0x80000001003203F0;
            String.append(_:)(v105);

            v106._countAndFlagsBits = v146;
            v106._object = v95;
            String.append(_:)(v106);

            v107._countAndFlagsBits = 32;
            v107._object = 0xE100000000000000;
            String.append(_:)(v107);

            v108._countAndFlagsBits = v151;
            v108._object = v94;
            String.append(_:)(v108);

            swift_bridgeObjectRelease_n();
            v109._object = 0x8000000100320420;
            v109._countAndFlagsBits = 0xD000000000000013;
            String.append(_:)(v109);
            v110 = static os_log_type_t.default.getter();
            v111 = Logger.logObject.getter();
            if (os_log_type_enabled(v111, v110))
            {
              v142 = v98[62];
              v144 = v98[48];
              v147 = v98[33];
              v152 = v98[43];
              v113 = v98[13];
              v112 = v98[14];
              v114 = sub_10008E688();
              v154[0] = sub_10008E670();
              *v114 = 136446466;
              v115._countAndFlagsBits = v113;
              v115._object = v112;
              String.append(_:)(v115);
              sub_10009F134();
              v116 = sub_100080210(91, 0xE100000000000000, v154);

              *(v114 + 4) = v116;
              *(v114 + 12) = 2082;
              sub_100080210(0, 0xE000000000000000, v154);
              sub_1000B047C();
              *(v114 + 14) = 0xE100000000000000;
              _os_log_impl(&_mh_execute_header, v111, v110, "%{public}s%{public}s", v114, 0x16u);
              swift_arrayDestroy();
              sub_100081C28();
              sub_100081C28();

              sub_100234764();
              sub_100234710(v144, v117);
              sub_100234794();
              sub_100234710(v147, v118);
              v119 = v152;
            }

            else
            {
              v120 = v98[62];
              v121 = v98[48];
              v122 = v98[43];
              v123 = v98[33];

              sub_100234764();
              sub_100234710(v121, v124);
              sub_100234794();
              sub_100234710(v123, v125);
              v119 = v122;
            }

            sub_10013B1E8(v119, &qword_1003CDC70);

            sub_100098AA4();
            sub_100143F94();

            __asm { BRAA            X1, X16 }
          }
        }

        else
        {
        }
      }

      ++v8;
      sub_100234710(v1[22], type metadata accessor for PurchaseIntentInternal);
      if (v8 == v136)
      {
        goto LABEL_50;
      }
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
  }

  else
  {
LABEL_50:

    v75 = v1[23];
    v76 = v1[20];

    v77 = sub_10023499C();
    sub_100081DFC(v77, v78, v79, v76);
    sub_10013B1E8(v75, &qword_1003CE608);
    v80 = v1[62];
    v81 = v1[50];
    v82 = v1[19];
    v83 = v1[15];
    v150 = *(v1 + 13);
    v84 = v1[12];
    sub_1002347AC();
    sub_100234658(v86, v82 + v85, v87);
    sub_10023477C();
    sub_100234658(v81, v82 + v88, v89);
    v82[1]._countAndFlagsBits = v84;
    v82[1]._object = v83;
    v82[2]._countAndFlagsBits = v80;
    *v82 = v150;
    v90 = v83;
    v91 = swift_task_alloc();
    v1[74] = v91;
    *v91 = v1;
    v91[1] = sub_100233080;
    sub_100143F94();

    sub_100094C6C();
  }
}

uint64_t sub_100233080()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_10008BEFC();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_100233168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38)
{
  sub_1001076D0();
  a37 = v40;
  a38 = v41;
  sub_100107AC8();
  a36 = v38;
  v42 = v38[29];
  v43 = v38[16];
  sub_100105C8C(v38[17], v43, &unk_1003CCCB8);
  if (sub_100081D0C(v43, 1, v42) == 1)
  {
    v44 = v38[33];
    v45 = v38[16];
    sub_10013B1E8(v38[17], &unk_1003CCCB8);
    sub_1002349AC();
    sub_100234794();
    sub_100234710(v44, v46);
    sub_10013B1E8(v45, &unk_1003CCCB8);
    v47 = v38[62];
    v48 = v38[46];
    sub_10023477C();
    sub_100234658(v49, v48, v50);
    sub_10023493C();
    _StringGuts.grow(_:)(38);

    sub_1002348D8("Completed checking for messages for ");
    sub_100234A9C();
    static os_log_type_t.default.getter();
    v51 = sub_100234AD0();
    if (os_log_type_enabled(v51, v39))
    {
      sub_100234A10();
      a22 = v47;
      v52 = sub_10008BF58();
      *v47 = 136446466;
      sub_100234814(v52);
      v53._countAndFlagsBits = sub_100123E30();
      String.append(_:)(v53);
      sub_10009F134();
      v54 = sub_100234980();

      *(v47 + 4) = v54;
      sub_100234970();
      sub_100234AE8(v55, v56, v57);
      sub_1000B047C();
      *(v47 + 14) = v44;
      sub_1000EDD4C(&_mh_execute_header, v58, v59, "%{public}s%{public}s");
      sub_1000B0048();
      sub_1000B0080();
      sub_10008BF3C();

      sub_100234764();
      sub_100234710(a23, v60);
      v61 = a24;
    }

    else
    {
      v79 = v38[46];
      v80 = v38[43];

      sub_100234764();
      sub_100234710(v79, v81);
      v61 = v80;
    }

    sub_10013B1E8(v61, &qword_1003CDC70);
    sub_1002347DC();
    sub_100234844();

    sub_100098AA4();
    sub_100107434();

    return v83(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30);
  }

  else
  {
    sub_1002346B4(v38[16], v38[30], type metadata accessor for MessageServerResponse.MessageItem);
    sub_10023477C();
    v62 = sub_100107174();
    sub_100234658(v62, v63, v64);
    v65 = static os_log_type_t.default.getter();
    v66 = Logger.logObject.getter();
    v67 = os_log_type_enabled(v66, v65);
    v68 = v38[47];
    if (v67)
    {
      v70 = v38[13];
      v69 = v38[14];
      v71 = sub_10008E688();
      v72 = sub_10008E670();
      *v71 = 136446466;
      sub_100234814(v72);
      v73._countAndFlagsBits = v70;
      v73._object = v69;
      String.append(_:)(v73);
      sub_10009F134();
      v74 = sub_100234980();

      *(v71 + 4) = v74;
      *(v71 + 12) = 2082;
      *(v71 + 14) = sub_100080210(0xD000000000000039, 0x80000001003203B0, &a25);
      _os_log_impl(&_mh_execute_header, v66, v65, "%{public}s%{public}s", v71, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    sub_100234764();
    sub_100234710(v68, v75);
    v38[75] = [objc_opt_self() sharedManager];
    v76 = swift_task_alloc();
    v38[76] = v76;
    *v76 = v38;
    v76[1] = sub_100233630;
    sub_100107434();

    return sub_1001C132C();
  }
}

uint64_t sub_100233630()
{
  sub_10008BE9C();
  sub_10008C070();
  v2 = *(v1 + 600);
  v3 = *v0;
  sub_10008BEFC();
  *v4 = v3;

  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}