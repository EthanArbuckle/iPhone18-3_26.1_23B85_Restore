uint64_t sub_10008E8E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E57F0);
  __chkstk_darwin(v4);
  v6 = &v21 - v5;
  sub_10008EC0C(a1, &v21 - v5);
  sub_10001A9D0();
  v7 = sub_1000A3190();
  v8 = sub_1000A3090();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = a2;
    v22 = 0;
    v11 = v10;
    *v9 = 136315138;
    v23 = 0xE000000000000000;
    v24 = v10;
    sub_1000A1810();
    sub_1000A3370();
    v25._countAndFlagsBits = 3026478;
    v25._object = 0xE300000000000000;
    sub_1000A2E10(v25);
    sub_1000A3370();
    v12 = v22;
    v13 = v23;
    sub_10001FE6C(v6, &qword_1000E57F0);
    v14 = sub_10008B5B0(v12, v13, &v24);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v7, v8, "event store querying for events in range %s", v9, 0xCu);
    sub_100018720(v11);
    a2 = v21;
  }

  else
  {

    sub_10001FE6C(v6, &qword_1000E57F0);
  }

  v15 = [objc_allocWithZone(ATXBiomeUIStream) init];
  isa = sub_1000A1770().super.isa;
  v17 = swift_allocObject();
  *(v17 + 16) = &_swiftEmptyArrayStorage;
  v18 = [v15 publisherFromStartTime:CFDateGetAbsoluteTime(isa)];
  *(&v21 - 4) = __chkstk_darwin(v18);
  *(&v21 - 3) = v17;
  *(&v21 - 2) = a1;
  *(&v21 - 1) = a2;
  sub_100017A54(&qword_1000E8BE8);
  swift_allocObject();
  v19 = sub_1000A1BD0();

  return v19;
}

uint64_t sub_10008EC0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100017A54(&qword_1000E57F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008EC7C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008ECC0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10008ECF8()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10008ED50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10008ED68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008EDCC()
{
  v1 = v0;
  v2 = (sub_100017A54(&qword_1000E57F0) - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(*v2 + 64);
  v6 = (type metadata accessor for TaskContext() - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v33 = *(*v6 + 64);
  v9 = v1 + v4;
  v10 = sub_1000A1810();
  v11 = *(*(v10 - 8) + 8);
  v11(v9, v10);
  v12 = v9 + v2[11];
  v13 = v8;
  v11(v12, v10);
  v14 = sub_1000A2C20();
  (*(*(v14 - 8) + 8))(v1 + v8, v14);
  v15 = v1 + v8 + v6[7];
  v16 = type metadata accessor for NewsTimelineEntry();
  v17 = (*(*(v16 - 8) + 48))(v15, 1, v16);
  v18 = v33;
  if (!v17)
  {
    v32 = v7;
    v11(v15, v10);
    v19 = (v15 + *(v16 + 20));

    v20 = type metadata accessor for TodayContent();
    v21 = v19 + *(v20 + 20);
    v22 = type metadata accessor for Banner();
    if (!(*(*(v22 - 1) + 48))(v21, 1, v22))
    {

      v23 = v22[7];
      v24 = sub_1000A1700();
      v25 = *(v24 - 8);
      if (!(*(v25 + 48))(&v21[v23], 1, v24))
      {
        (*(v25 + 8))(&v21[v23], v24);
      }

      v26 = *&v21[v22[9]];
      if (v26 != 1)
      {
      }

      sub_10002C2D8(*&v21[v22[10]], *&v21[v22[10] + 8]);
    }

    swift_unknownObjectRelease();
    v27 = *(v20 + 36);
    v28 = sub_1000A1700();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v19 + v27, 1, v28))
    {
      (*(v29 + 8))(v19 + v27, v28);
    }

    v13 = v8;
    v18 = v33;
    v7 = v32;
  }

  v30 = (v18 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v1, v30 + 8, v3 | v7 | 7);
}

void sub_10008F1F8(void *a1)
{
  v3 = *(sub_100017A54(&qword_1000E57F0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TaskContext() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10008DDAC(a1, v1 + v4, v1 + v7, v8);
}

unint64_t sub_10008F304()
{
  result = qword_1000E57F8;
  if (!qword_1000E57F8)
  {
    sub_1000A1810();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E57F8);
  }

  return result;
}

unint64_t sub_10008F35C()
{
  result = qword_1000E8BF8;
  if (!qword_1000E8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8BF8);
  }

  return result;
}

unint64_t sub_10008F3C4()
{
  result = qword_1000E8C00;
  if (!qword_1000E8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8C00);
  }

  return result;
}

Swift::Void __swiftcall TelemetryManager.flush()()
{
  v1 = v0;
  v2 = sub_1000A1810();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v54 - v7;
  sub_100018688((v0 + 16), *(v0 + 40));
  v9 = sub_10004B138();
  v59 = FCAnalyticsLog;
  sub_1000A3090();
  if (v9)
  {
    sub_1000A1DB0();

    sub_1000A1800();
    v10 = [objc_allocWithZone(NTPBTelemetry) init];
    if (!v10)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v11 = v10;
    v12 = *(v1 + 56);
    v13 = OBJC_IVAR____TtC7NewsTag16TelemetryManager_lastFlushDate;
    swift_beginAccess();
    v14 = *(v3 + 16);
    v59 = v13;
    v14(v6, &v13[v1], v2);
    isa = sub_1000A1770().super.isa;
    v16 = v6;
    v17 = *(v3 + 8);
    v17(v16, v2);
    v18 = sub_1000A1770().super.isa;
    [v12 populateTelemetry:v11 withNetworkEventsFromDate:isa toDate:v18];

    v19 = [v11 networkEventGroups];
    if (v19)
    {
      v20 = v19;
      if ([v20 count])
      {
        v57 = v17;
        [*(v1 + 64) annotateTelemetry:v11 withOptions:4095];
        v21 = [objc_opt_self() nss_envelopeWithIdentifier];
        if (!v21)
        {
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v22 = v21;
        [v21 setContentType:2];
        v23 = v11;
        v24 = [v23 data];
        if (!v24)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
          return;
        }

        v25 = v24;
        v58 = v3 + 8;
        v56 = v3;

        v26 = [v25 fc_zlibDeflate];
        v55 = v23;
        if (v26)
        {
          v27 = sub_1000A1730();
          v29 = v28;

          v30.super.isa = sub_1000A1720().super.isa;
          sub_10001AA1C(v27, v29);
        }

        else
        {
          v30.super.isa = 0;
        }

        [v22 setContent:v30.super.isa];

        v34 = FCAnalyticsLog;
        sub_100017A54(&unk_1000E5270);
        v35 = swift_allocObject();
        *(v35 + 16) = xmmword_1000AA450;
        v36 = v34;
        v37 = [v20 count];

        *(v35 + 56) = &type metadata for Int;
        *(v35 + 64) = &protocol witness table for Int;
        *(v35 + 32) = v37;
        v38 = [v22 content];
        if (!v38)
        {
          goto LABEL_34;
        }

        v39 = v38;
        v40 = sub_1000A1730();
        v42 = v41;

        v43 = v42;
        v44 = v42 >> 62;
        if ((v42 >> 62) <= 1)
        {
          if (!v44)
          {
            sub_10001AA1C(v40, v42);
            v45 = BYTE6(v42);
LABEL_25:
            v48 = v56;
LABEL_28:
            *(v35 + 96) = &type metadata for Int;
            *(v35 + 104) = &protocol witness table for Int;
            *(v35 + 72) = v45;
            sub_1000A3090();
            sub_1000A1DB0();

            v49 = [objc_allocWithZone(NSSNewsAnalyticsSubmitEnvelopesOperation) init];
            sub_100017A54(&qword_1000E88F0);
            v50 = swift_allocObject();
            *(v50 + 16) = xmmword_1000AF1A0;
            *(v50 + 32) = v22;
            sub_10008FC28();
            v51 = v22;
            v52 = sub_1000A2F00().super.isa;

            [v49 setEnvelopes:v52];

            [v49 start];
            v53 = v59;
            swift_beginAccess();
            (*(v48 + 24))(&v53[v1], v8, v2);
            swift_endAccess();
            v57(v8, v2);
            return;
          }

          goto LABEL_23;
        }

        if (v44 == 2)
        {
          v47 = *(v40 + 16);
          v46 = *(v40 + 24);
          sub_10001AA1C(v40, v43);
          v45 = v46 - v47;
          if (__OFSUB__(v46, v47))
          {
            __break(1u);
LABEL_23:
            sub_10001AA1C(v40, v43);
            LODWORD(v45) = HIDWORD(v40) - v40;
            if (!__OFSUB__(HIDWORD(v40), v40))
            {
              v45 = v45;
              goto LABEL_25;
            }

            __break(1u);
            goto LABEL_31;
          }
        }

        else
        {
          sub_10001AA1C(v40, v42);
          v45 = 0;
        }

        v48 = v56;
        goto LABEL_28;
      }
    }

    v32 = FCAnalyticsLog;
    sub_1000A3090();
    sub_1000A1DB0();

    v33 = v59;
    swift_beginAccess();
    (*(v3 + 24))(&v33[v1], v8, v2);
    swift_endAccess();
    v17(v8, v2);
    return;
  }

  sub_1000A1DB0();
  v31 = v59;
}

uint64_t TelemetryManager.deinit()
{
  sub_100018720(v0 + 16);

  v1 = OBJC_IVAR____TtC7NewsTag16TelemetryManager_lastFlushDate;
  v2 = sub_1000A1810();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t TelemetryManager.__deallocating_deinit()
{
  sub_100018720(v0 + 16);

  v1 = OBJC_IVAR____TtC7NewsTag16TelemetryManager_lastFlushDate;
  v2 = sub_1000A1810();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_10008FC28()
{
  result = qword_1000E8C10;
  if (!qword_1000E8C10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E8C10);
  }

  return result;
}

uint64_t type metadata accessor for TelemetryManager()
{
  result = qword_1000E8C40;
  if (!qword_1000E8C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10008FCC8()
{
  result = sub_1000A1810();
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

uint64_t NTPBTodaySectionConfigWebEmbed.conforms(to:)(__objc2_prot *a1)
{
  v3.super_class = NTPBTodaySectionConfigWebEmbed;
  LODWORD(result) = [(__objc2_prot *)&v3 conformsToProtocol:a1];
  if (&OBJC_PROTOCOL___NTTodayItem == a1)
  {
    return 1;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10008FE60()
{
  result = type metadata accessor for Item.Headline(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10008FEFC(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100017A54(&unk_1000E5DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_10008FFCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100017A54(&unk_1000E5DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_10009007C()
{
  sub_100090120();
  if (v0 <= 0x3F)
  {
    sub_1000369B4();
    if (v1 <= 0x3F)
    {
      sub_100090184();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100090120()
{
  result = qword_1000E8DF8;
  if (!qword_1000E8DF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1000E8DF8);
  }

  return result;
}

void sub_100090184()
{
  if (!qword_1000E8E68)
  {
    v0 = sub_1000A31A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E8E68);
    }
  }
}

void *sub_1000901D4()
{
  v1 = v0;
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100092CF8(v1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009299C(v7, type metadata accessor for Item);
    return 0;
  }

  else
  {
    sub_100092AA4(v7, v4, type metadata accessor for Item.Headline);
    v9 = &v4[*(v2 + 28)];
    v10 = *v9;
    v8 = *(v9 + 1);
    sub_1000278C4(*v9, v8);
    sub_10009299C(v4, type metadata accessor for Item.Headline);
    if (v8)
    {
    }
  }

  return v8;
}

id sub_100090358()
{
  v1 = v0;
  v2 = sub_100017A54(&qword_1000E6670);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = type metadata accessor for ImageStore.Key(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Item(0);
  __chkstk_darwin(v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100092CF8(v1, v14, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009299C(v14, type metadata accessor for Item);
    return 0;
  }

  else
  {
    sub_100092AA4(v14, v11, type metadata accessor for Item.Headline);
    sub_10009108C(v4);
    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {
      sub_10001FE6C(v4, &qword_1000E6670);
      v15 = 0;
    }

    else
    {
      sub_100092AA4(v4, v8, type metadata accessor for ImageStore.Key);
      v15 = sub_1000758B8(v8, *(v11 + 1));
      sub_10009299C(v8, type metadata accessor for ImageStore.Key);
    }

    sub_10009299C(v11, type metadata accessor for Item.Headline);
  }

  return v15;
}

id sub_100090618()
{
  v1 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_1000A1700();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Item.Headline(0);
  sub_10001AA70(v0 + *(v8 + 24), v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001FE6C(v3, &unk_1000E5DD0);
    return 0;
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1000A1670(v10);
    v12 = v11;
    v13 = [v11 nss_isAudioURL];

    (*(v5 + 8))(v7, v4);
    return v13;
  }
}

id sub_1000907C8()
{
  v1 = sub_100017A54(&qword_1000E6670);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = type metadata accessor for ImageStore.Key(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100090E90(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_10001FE6C(v3, &qword_1000E6670);
    return 0;
  }

  else
  {
    sub_100092AA4(v3, v7, type metadata accessor for ImageStore.Key);
    v9 = sub_1000758B8(v7, *(v0 + 8));
    if (v9)
    {
      v10 = v9;
      v8 = [v9 imageWithRenderingMode:2];
    }

    else
    {
      v8 = 0;
    }

    sub_10009299C(v7, type metadata accessor for ImageStore.Key);
  }

  return v8;
}

id sub_100090984()
{
  v1 = sub_100017A54(&qword_1000E8F90);
  __chkstk_darwin(v1 - 8);
  v3 = &v12 - v2;
  v4 = *v0;
  v5 = [*v0 compactSourceName];
  if (v5)
  {
    v6 = v5;
    sub_1000A2D40();
  }

  sub_1000A1530();
  v7 = sub_1000A1540();
  (*(*(v7 - 8) + 56))(v3, 0, 1, v7);
  v8 = sub_1000A1A20();

  sub_10001FE6C(v3, &qword_1000E8F90);
  if (v8)
  {
    result = [v4 sourceName];
    if (result)
    {
LABEL_7:
      v10 = result;
      v11 = sub_1000A2D40();

      return v11;
    }

    __break(1u);
  }

  result = [v4 compactSourceName];
  if (result)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_100090B18()
{
  v1 = *v0;
  v2 = [*v0 storyTypeColorLight];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1000A2D40();
    v6 = v5;

    v7 = [v1 storyTypeColorDark];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1000A2D40();
      v11 = v10;

      sub_100028E34(0, &unk_1000E5F20);
      v12._countAndFlagsBits = v4;
      v12._object = v6;
      isa = UIColor.init(hex:)(v12).super.isa;
      v14._countAndFlagsBits = v9;
      v14._object = v11;
      v15 = UIColor.init(hex:)(v14).super.isa;
      v16 = swift_allocObject();
      *(v16 + 16) = isa;
      *(v16 + 24) = v15;
      v17 = objc_allocWithZone(UIColor);
      v23[4] = sub_100035710;
      v23[5] = v16;
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 1107296256;
      v23[2] = sub_10004FE08;
      v23[3] = &unk_1000DA520;
      v18 = _Block_copy(v23);
      v19 = isa;
      v20 = v15;
      [v17 initWithDynamicProvider:v18];
      _Block_release(v18);

      v21 = sub_1000A2740();

      return v21;
    }
  }

  return sub_1000A2720();
}

uint64_t sub_100090CFC()
{
  v1 = v0;
  v2 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100092CF8(v1, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10009299C(v7, type metadata accessor for Item);
    return 0x6567617373656DLL;
  }

  else
  {
    sub_100092AA4(v7, v4, type metadata accessor for Item.Headline);
    v9 = [*v4 identifier];
    v10 = sub_1000A2D40();

    sub_10009299C(v4, type metadata accessor for Item.Headline);
    return v10;
  }
}

uint64_t sub_100090E90@<X0>(char *a1@<X8>)
{
  v3 = sub_1000A1700();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = [*v1 sourceNameImageRemoteURL];
  if (v10)
  {
    v11 = v10;
    sub_1000A16C0();

    v12 = *(v4 + 32);
    v12(v9, v7, v3);
    v12(a1, v9, v3);
    (*(v4 + 56))(a1, 0, 1, v3);
    v13 = type metadata accessor for ImageStore.Key(0);
    return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
  }

  else
  {
    v15 = type metadata accessor for ImageStore.Key(0);
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t sub_10009108C@<X0>(char *a1@<X8>)
{
  v3 = sub_1000A1700();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = *v1;
  if ([*v1 needsPlaceholderThumbnail])
  {
    (*(v4 + 56))(a1, 1, 1, v3);
    v11 = type metadata accessor for ImageStore.Key(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = v11;
    v14 = a1;
    v15 = 0;
  }

  else
  {
    v16 = [v10 thumbnailRemoteURL];
    if (v16)
    {
      v17 = v16;
      sub_1000A16C0();

      v18 = *(v4 + 32);
      v18(v9, v7, v3);
      v18(a1, v9, v3);
      (*(v4 + 56))(a1, 0, 1, v3);
      v19 = type metadata accessor for ImageStore.Key(0);
      return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
    }

    v21 = type metadata accessor for ImageStore.Key(0);
    v12 = *(*(v21 - 8) + 56);
    v13 = v21;
    v14 = a1;
    v15 = 1;
  }

  return v12(v14, v15, 1, v13);
}

uint64_t sub_1000912F4()
{
  v1 = [*v0 identifier];
  v2 = sub_1000A2D40();

  return v2;
}

uint64_t sub_100091350()
{
  v1 = 0x656E696C64616568;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000913A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009321C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000913CC(uint64_t a1)
{
  v2 = sub_1000929FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100091408(uint64_t a1)
{
  v2 = sub_1000929FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100091444(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567617373656DLL;
  }

  else
  {
    v3 = 0x656E696C64616568;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567617373656DLL;
  }

  else
  {
    v5 = 0x656E696C64616568;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A3560();
  }

  return v8 & 1;
}

Swift::Int sub_1000914EC()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100091570()
{
  sub_1000A2DD0();
}

Swift::Int sub_1000915E0()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100091660@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_1000D7870;
  v8._object = v3;
  v5 = sub_1000A3420(v4, v8);

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

void sub_1000916C0(uint64_t *a1@<X8>)
{
  v2 = 0x656E696C64616568;
  if (*v1)
  {
    v2 = 0x6567617373656DLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000917B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v24 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v24);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100017A54(&qword_1000E8EA0);
  v23 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = v22 - v7;
  v9 = type metadata accessor for Item(0);
  __chkstk_darwin(v9);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  sub_100018688(a1, v12);
  sub_1000929FC();
  sub_1000A3640();
  if (!v2)
  {
    v13 = v23;
    v22[0] = v11;
    v22[1] = v9;
    v14 = v25;
    v29 = 0;
    sub_100092A50();
    sub_1000A34B0();
    v15 = v6;
    if (v30)
    {
      v28 = 2;
      v17 = sub_1000A3480();
      v19 = v18;
      (*(v13 + 8))(v8, v15);
      v20 = v22[0];
      *v22[0] = v17;
      *(v20 + 8) = v19;
      v21 = v20;
    }

    else
    {
      v27 = 1;
      sub_100092B60(&qword_1000E8EB8, type metadata accessor for Item.Headline);
      sub_1000A34B0();
      (*(v13 + 8))(v8, v6);
      v21 = v22[0];
      sub_100092AA4(v5, v22[0], type metadata accessor for Item.Headline);
    }

    swift_storeEnumTagMultiPayload();
    sub_100092AA4(v21, v14, type metadata accessor for Item);
  }

  return sub_100018720(v26);
}

uint64_t sub_100091B0C(void *a1)
{
  v2 = v1;
  v17 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v17);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Item(0);
  __chkstk_darwin(v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E8EC0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v16 - v10;
  sub_100018688(a1, a1[3]);
  sub_1000929FC();
  sub_1000A3660();
  sub_100092CF8(v2, v7, type metadata accessor for Item);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = 1;
    v23 = 0;
    sub_100092B0C();
    v12 = v19;
    sub_1000A3520();
    if (!v12)
    {
      v22 = 2;
      sub_1000A34E0();
    }

    (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = v18;
    sub_100092AA4(v7, v18, type metadata accessor for Item.Headline);
    v21 = 0;
    sub_100092B0C();
    v15 = v19;
    sub_1000A3520();
    if (!v15)
    {
      v20 = 1;
      sub_100092B60(&qword_1000E8ED0, type metadata accessor for Item.Headline);
      sub_1000A3520();
    }

    sub_10009299C(v14, type metadata accessor for Item.Headline);
    return (*(v9 + 8))(v11, v8);
  }
}

uint64_t sub_100091EF0()
{
  v1 = 0x696C64616548746ELL;
  v2 = 0x72556E6F69746361;
  if (*v0 != 2)
  {
    v2 = 0x64657A796C616E61;
  }

  if (*v0)
  {
    v1 = 0x6F74536567616D69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100091F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100093388(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100091FC0(uint64_t a1)
{
  v2 = sub_100092BA8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100091FFC(uint64_t a1)
{
  v2 = sub_100092BA8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100092038(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v3);
  v5 = &v20 - v4;
  v6 = sub_100017A54(&qword_1000E8ED8);
  v25 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for Item.Headline(0);
  __chkstk_darwin(v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v27 = a1;
  sub_100018688(a1, v12);
  sub_100092BA8();
  v13 = v26;
  sub_1000A3640();
  if (v13)
  {
    goto LABEL_3;
  }

  v23 = v3;
  v26 = v5;
  v14 = v11;
  v15 = v25;
  v29 = 0;
  sub_100034B00();
  sub_1000A34B0();
  v16 = v28;
  sub_100028E34(0, &unk_1000E7DD0);
  sub_100028E34(0, &qword_1000E8EE8);
  v17 = sub_1000A30A0();
  v22 = v16;
  if (!v17)
  {
    sub_100092BFC();
    swift_allocError();
    swift_willThrow();
    sub_10001AA1C(v22, *(&v16 + 1));
    (*(v15 + 8))(v8, v6);
LABEL_3:
    sub_100018720(v27);
    return;
  }

  v21 = *(&v16 + 1);
  *v11 = v17;
  v29 = 1;
  v18 = v17;
  sub_100092C50();
  sub_1000A34B0();
  v20 = v18;
  *(v14 + 8) = v28;
  LOBYTE(v28) = 2;
  sub_100092DB4(&qword_1000E5FC0, &qword_1000E5FC8);
  v19 = v26;
  sub_1000A34B0();
  sub_10007B3AC(v19, v14 + *(v9 + 24));
  sub_100017A54(&qword_1000E8F00);
  v29 = 3;
  sub_100092E50(&qword_1000E8F08, sub_100092CA4);
  sub_1000A34B0();
  (*(v15 + 8))(v8, v6);
  sub_10001AA1C(v22, v21);
  *(v14 + *(v9 + 28)) = v28;
  sub_100092CF8(v14, v24, type metadata accessor for Item.Headline);
  sub_100018720(v27);
  sub_10009299C(v14, type metadata accessor for Item.Headline);
}

uint64_t sub_10009259C(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&unk_1000E8F18);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v21 - v7;
  sub_100018688(a1, a1[3]);
  sub_100092BA8();
  sub_1000A3660();
  v9 = objc_opt_self();
  v10 = *v3;
  v24 = 0;
  v11 = [v9 archivedDataWithRootObject:v10 requiringSecureCoding:1 error:&v24];
  v12 = v24;
  if (v11)
  {
    v13 = sub_1000A1730();
    v15 = v14;

    v24 = v13;
    v25 = v15;
    v23 = 0;
    sub_100034E3C();
    sub_1000A3520();
    if (v2)
    {
      (*(v6 + 8))(v8, v5);
      return sub_10001AA1C(v13, v15);
    }

    v24 = v3[1];
    v23 = 1;
    sub_100092D60();

    sub_1000A3520();

    v22 = type metadata accessor for Item.Headline(0);
    LOBYTE(v24) = 2;
    sub_100017A54(&unk_1000E5DD0);
    sub_100092DB4(&qword_1000E6000, &qword_1000E7A50);
    sub_1000A3520();
    v18 = v3 + *(v22 + 28);
    v20 = *(v18 + 1);
    v24 = *v18;
    v19 = v24;
    v25 = v20;
    v23 = 3;
    sub_1000278C4(v24, v20);
    sub_100017A54(&qword_1000E8F00);
    sub_100092E50(&qword_1000E8F30, sub_100092EC8);
    sub_1000A3520();
    sub_10001AA1C(v13, v15);
    sub_1000350F4(v19, v20);
  }

  else
  {
    v17 = v12;
    sub_1000A1600();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10009299C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1000929FC()
{
  result = qword_1000E8EA8;
  if (!qword_1000E8EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EA8);
  }

  return result;
}

unint64_t sub_100092A50()
{
  result = qword_1000E8EB0;
  if (!qword_1000E8EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EB0);
  }

  return result;
}

uint64_t sub_100092AA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100092B0C()
{
  result = qword_1000E8EC8;
  if (!qword_1000E8EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EC8);
  }

  return result;
}

uint64_t sub_100092B60(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100092BA8()
{
  result = qword_1000E8EE0;
  if (!qword_1000E8EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EE0);
  }

  return result;
}

unint64_t sub_100092BFC()
{
  result = qword_1000E8EF0;
  if (!qword_1000E8EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EF0);
  }

  return result;
}

unint64_t sub_100092C50()
{
  result = qword_1000E8EF8;
  if (!qword_1000E8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8EF8);
  }

  return result;
}

unint64_t sub_100092CA4()
{
  result = qword_1000E8F10;
  if (!qword_1000E8F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F10);
  }

  return result;
}

uint64_t sub_100092CF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100092D60()
{
  result = qword_1000E8F28;
  if (!qword_1000E8F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F28);
  }

  return result;
}

uint64_t sub_100092DB4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(&unk_1000E5DD0);
    sub_100092B60(a2, &type metadata accessor for URL);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100092E50(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(&qword_1000E8F00);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100092EC8()
{
  result = qword_1000E8F38;
  if (!qword_1000E8F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F38);
  }

  return result;
}

unint64_t sub_100092F60()
{
  result = qword_1000E8F40;
  if (!qword_1000E8F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F40);
  }

  return result;
}

unint64_t sub_100092FB8()
{
  result = qword_1000E8F48;
  if (!qword_1000E8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F48);
  }

  return result;
}

unint64_t sub_100093010()
{
  result = qword_1000E8F50;
  if (!qword_1000E8F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F50);
  }

  return result;
}

unint64_t sub_100093068()
{
  result = qword_1000E8F58;
  if (!qword_1000E8F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F58);
  }

  return result;
}

unint64_t sub_1000930C0()
{
  result = qword_1000E8F60;
  if (!qword_1000E8F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F60);
  }

  return result;
}

unint64_t sub_100093118()
{
  result = qword_1000E8F68;
  if (!qword_1000E8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F68);
  }

  return result;
}

unint64_t sub_100093170()
{
  result = qword_1000E8F70;
  if (!qword_1000E8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F70);
  }

  return result;
}

unint64_t sub_1000931C8()
{
  result = qword_1000E8F78;
  if (!qword_1000E8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F78);
  }

  return result;
}

uint64_t sub_10009321C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656E696C64616568 && a2 == 0xE800000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000A3560();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_100093334()
{
  result = qword_1000E8F80;
  if (!qword_1000E8F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E8F80);
  }

  return result;
}

uint64_t sub_100093388(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696C64616548746ELL && a2 == 0xEE0061746144656ELL;
  if (v4 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F74536567616D69 && a2 == 0xEA00000000006572 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72556E6F69746361 && a2 == 0xE90000000000006CLL || (sub_1000A3560() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64657A796C616E61 && a2 == 0xEE0073726F6C6F43)
  {

    return 3;
  }

  else
  {
    v6 = sub_1000A3560();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10009350C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10009354C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100093588(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100017A54(&unk_1000E5DD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100093658(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100017A54(&unk_1000E5DD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for Banner()
{
  result = qword_1000E8FF0;
  if (!qword_1000E8FF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100093754()
{
  sub_1000369B4();
  if (v0 <= 0x3F)
  {
    sub_100093830(319, &qword_1000E7AF0);
    if (v1 <= 0x3F)
    {
      sub_100093830(319, &unk_1000E9000);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100093830(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1000A31A0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1000938A4(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000938F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_100093948(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100093960(void *result, int a2)
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

void sub_100093990(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v80 = a3;
  v7 = sub_100017A54(&unk_1000E5DD0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v79 - v12;
  __chkstk_darwin(v11);
  v15 = &v79 - v14;
  v16 = [a1 identifier];
  v17 = sub_1000A2D40();
  v19 = v18;

  *a4 = v17;
  a4[1] = v19;
  v20 = [a1 title];
  v21 = sub_1000A2D40();
  v23 = v22;

  a4[2] = v21;
  a4[3] = v23;
  v24 = [a1 body];
  v25 = sub_1000A2D40();
  v27 = v26;

  a4[4] = v25;
  a4[5] = v27;
  v79 = a2;
  sub_10001AA70(a2, v13);
  v28 = sub_1000A1700();
  v29 = *(v28 - 8);
  v30 = *(v29 + 48);
  if (v30(v13, 1, v28) == 1)
  {
    v31 = [a1 actionURL];
    if (v31)
    {
      v32 = v31;
      sub_1000A16C0();

      v33 = 0;
    }

    else
    {
      v33 = 1;
    }

    (*(v29 + 56))(v10, v33, 1, v28);
    sub_10007B3AC(v10, v15);
    if (v30(v13, 1, v28) != 1)
    {
      sub_10001AAE0(v13);
    }
  }

  else
  {
    (*(v29 + 32))(v15, v13, v28);
    (*(v29 + 56))(v15, 0, 1, v28);
  }

  v34 = type metadata accessor for Banner();
  sub_10007B3AC(v15, a4 + v34[7]);
  v35 = [a1 actionButtonText];
  v36 = v80;
  if (v35)
  {
    v37 = v35;
    v38 = sub_1000A2D40();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0;
  }

  v41 = (a4 + v34[8]);
  *v41 = v38;
  v41[1] = v40;
  v42 = [a1 imageMethod];
  if (v42 == 1)
  {
    *(a4 + v34[9]) = 0;
    goto LABEL_17;
  }

  if (v42 == 2)
  {
    if (v36)
    {
      *(a4 + v34[9]) = v36;
      v43 = v36;
      goto LABEL_17;
    }

    if (qword_1000E46F0 == -1)
    {
      goto LABEL_42;
    }

    goto LABEL_64;
  }

  while (1)
  {
    *(a4 + v34[9]) = 1;
LABEL_17:
    v44 = &stru_1000E1000;
    v45 = [a1 solidBackgroundColorPair];
    if (v45)
    {
      sub_100028E34(0, &qword_1000E85F0);
      v46 = sub_1000A2F10();

      if (v46 >> 62)
      {
        v45 = sub_1000A33D0();
      }

      else
      {
        v45 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LODWORD(v45) = v45 > 1;
    }

    v47 = [a1 backgroundMethod];
    if (v47 == 2)
    {
      v64 = [a1 gradientBackgroundPair];
      sub_100028E34(0, &qword_1000E9098);
      v65 = sub_1000A2F10();

      if (v65 >> 62)
      {
        v66 = sub_1000A33D0();
      }

      else
      {
        v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v66 > 1)
      {
        goto LABEL_48;
      }

LABEL_40:
      v67 = objc_opt_self();
      v61 = [v67 whiteColor];
      v62 = [v67 blackColor];

      v63 = 0;
LABEL_55:

      sub_10001AAE0(v79);
      v78 = a4 + v34[10];
      *v78 = v61;
      *(v78 + 1) = v62;
      v78[16] = v63;
      return;
    }

    if (v47 != 1 || !v45)
    {
      goto LABEL_40;
    }

    v48 = [a1 solidBackgroundColorPair];
    if (!v48)
    {
      sub_100028E34(0, &qword_1000E76B0);
      v72 = sub_1000A3190();
      sub_1000A3070();
      sub_1000A1DB0();
      goto LABEL_47;
    }

    v49 = v48;
    sub_100028E34(0, &qword_1000E85F0);
    v50 = sub_1000A2F10();

    if ((v50 & 0xC000000000000001) != 0)
    {
      goto LABEL_62;
    }

    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    __break(1u);
LABEL_64:
    swift_once();
LABEL_42:
    v68 = sub_1000A1DF0();
    sub_10002FDC4(v68, static Logger.todayWidgetBanner);
    v69 = sub_1000A1DD0();
    v70 = sub_1000A3070();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&_mh_execute_header, v69, v70, "Image URL method indicated but no resolved image provided", v71, 2u);
    }
  }

  for (i = *(v50 + 32); ; i = sub_1000A32D0())
  {
    v52 = i;

    v53 = [v52 hex];

    if (!v53)
    {
      sub_1000A2D40();
      v53 = sub_1000A2D10();
    }

    v54 = [a1 v44[211].attr];
    if (v54)
    {
      break;
    }

    sub_100028E34(0, &qword_1000E76B0);
    v72 = sub_1000A3190();
    sub_1000A3070();
    sub_1000A1DB0();
    v36 = v80;
LABEL_47:

LABEL_48:
    v73 = [a1 gradientBackgroundPair];
    sub_100028E34(0, &qword_1000E9098);
    v74 = sub_1000A2F10();

    if ((v74 & 0xC000000000000001) != 0)
    {
      v75 = sub_1000A32D0();
    }

    else
    {
      if (!*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_61;
      }

      v75 = *(v74 + 32);
    }

    v61 = v75;

    v44 = [a1 gradientBackgroundPair];
    v76 = sub_1000A2F10();

    if ((v76 & 0xC000000000000001) != 0)
    {
      v77 = sub_1000A32D0();
      goto LABEL_54;
    }

    if (*((v76 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v77 = *(v76 + 40);
LABEL_54:
      v62 = v77;

      v63 = 1;
      goto LABEL_55;
    }

LABEL_61:
    __break(1u);
LABEL_62:
    ;
  }

  v55 = v54;
  v56 = sub_1000A2F10();

  if ((v56 & 0xC000000000000001) != 0)
  {
    v57 = sub_1000A32D0();
LABEL_34:
    v58 = v57;

    v59 = [v58 hex];

    if (!v59)
    {
      sub_1000A2D40();
      v59 = sub_1000A2D10();
    }

    v60 = objc_opt_self();
    v61 = [v60 colorWithHexString:v53];

    v62 = [v60 colorWithHexString:v59];
    v63 = 0;
    v36 = v80;
    goto LABEL_55;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
  {
    v57 = *(v56 + 40);
    goto LABEL_34;
  }

  __break(1u);
}

uint64_t sub_1000942BC(void *a1)
{
  v3 = sub_100017A54(&qword_1000E9108);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8 - v5;
  sub_100018688(a1, a1[3]);
  sub_100097510();
  sub_1000A3660();
  v10 = 0;
  sub_1000A3510();
  if (!v1)
  {
    v9 = 1;
    sub_1000A3510();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100094444()
{
  if (*v0)
  {
    return 0x664F7265626D756ELL;
  }

  else
  {
    return 0xD000000000000013;
  }
}

uint64_t sub_10009448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001000B5E30 == a2 || (sub_1000A3560() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEC00000073706154)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1000A3560();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100094578(uint64_t a1)
{
  v2 = sub_100097510();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000945B4(uint64_t a1)
{
  v2 = sub_100097510();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000945F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100096660(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100094638()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6567616D69;
  if (v1 != 5)
  {
    v3 = 0x756F72676B636162;
  }

  v4 = 0x52556E6F69746361;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 2036625250;
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

uint64_t sub_100094710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096808(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100094744(uint64_t a1)
{
  v2 = sub_1000962B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100094780(uint64_t a1)
{
  v2 = sub_1000962B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000947BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_100017A54(&unk_1000E5DD0);
  __chkstk_darwin(v3);
  v5 = &v24 - v4;
  v6 = sub_100017A54(&qword_1000E9048);
  v26 = *(v6 - 8);
  v27 = v6;
  __chkstk_darwin(v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Banner();
  __chkstk_darwin(v9);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[3];
  v29 = a1;
  sub_100018688(a1, v12);
  sub_1000962B8();
  v13 = v28;
  sub_1000A3640();
  if (v13)
  {
    sub_100018720(v29);
  }

  else
  {
    v14 = v5;
    v15 = v26;
    LOBYTE(v30) = 0;
    *v11 = sub_1000A3480();
    v11[1] = v16;
    v24 = v16;
    LOBYTE(v30) = 1;
    v11[2] = sub_1000A3480();
    v11[3] = v17;
    LOBYTE(v30) = 2;
    v18 = sub_1000A3480();
    v28 = 0;
    v11[4] = v18;
    v11[5] = v19;
    LOBYTE(v30) = 3;
    sub_1000964EC(&qword_1000E5FC0, &qword_1000E5FC8);
    v21 = v27;
    v20 = v28;
    sub_1000A34B0();
    if (v20)
    {
      (*(v15 + 8))(v8, v21);
      sub_100018720(v29);
    }

    else
    {
      sub_10007B3AC(v14, v11 + v9[7]);
      sub_100017A54(&unk_1000E7E10);
      v32 = 4;
      sub_100063DB0(&qword_1000E7A10);
      sub_1000A34B0();
      *(v11 + v9[8]) = v30;
      sub_100017A54(&qword_1000E9058);
      v32 = 5;
      sub_10009630C(&qword_1000E9060, sub_100096384);
      sub_1000A34B0();
      *(v11 + v9[9]) = v30;
      v32 = 6;
      sub_1000963D8();
      sub_1000A34B0();
      MEMORY[8](v8, v27);
      v22 = v31;
      v23 = v11 + v9[10];
      *v23 = v30;
      v23[16] = v22;
      sub_10009642C(v11, v25);
      sub_100018720(v29);
      sub_100096490(v11);
    }
  }
}

uint64_t sub_100094D90(void *a1)
{
  v3 = v1;
  v5 = sub_100017A54(&qword_1000E9078);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_100018688(a1, a1[3]);
  sub_1000962B8();
  sub_1000A3660();
  LOBYTE(v13) = 0;
  sub_1000A34E0();
  if (!v2)
  {
    LOBYTE(v13) = 1;
    sub_1000A34E0();
    LOBYTE(v13) = 2;
    sub_1000A34E0();
    v9 = type metadata accessor for Banner();
    LOBYTE(v13) = 3;
    sub_100017A54(&unk_1000E5DD0);
    sub_1000964EC(&qword_1000E6000, &qword_1000E7A50);
    sub_1000A3520();
    v13 = *(v3 + v9[8]);
    v15 = 4;
    sub_100017A54(&unk_1000E7E10);
    sub_100063DB0(&qword_1000E7A60);
    sub_1000A3520();
    *&v13 = *(v3 + v9[9]);
    v15 = 5;
    sub_100017A54(&qword_1000E9058);
    sub_10009630C(&qword_1000E9080, sub_1000965B8);
    sub_1000A3520();
    v10 = (v3 + v9[10]);
    v11 = *(v10 + 16);
    v13 = *v10;
    v14 = v11;
    v15 = 6;
    sub_10009660C();
    sub_1000A3520();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_100095168()
{
  if (*v0)
  {
    return 0x6172576567616D69;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1000951A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1000A3560() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6172576567616D69 && a2 == 0xEC00000072657070)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1000A3560();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100095284(uint64_t a1)
{
  v2 = sub_100096C64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000952C0(uint64_t a1)
{
  v2 = sub_100096C64();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000952FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x536D75696D657270;
  }

  if (v2)
  {
    v4 = 0xEB000000006C6165;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x536D75696D657270;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEB000000006C6165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A3560();
  }

  return v8 & 1;
}

Swift::Int sub_1000953A8()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100095430()
{
  sub_1000A2DD0();
}

Swift::Int sub_1000954A4()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

void sub_100095534(uint64_t *a1@<X8>)
{
  v2 = 0x536D75696D657270;
  if (*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xEB000000006C6165;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100095628(void *a1, void *a2)
{
  v5 = sub_1000A1840();
  v20 = *(v5 - 8);
  v21 = v5;
  __chkstk_darwin(v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100017A54(&qword_1000E90B8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - v10;
  sub_100018688(a1, a1[3]);
  sub_100096C64();
  sub_1000A3660();
  if (a2)
  {
    LOBYTE(v22) = 1;
    v25 = 0;
    sub_100096D0C();
    sub_1000A3520();
    if (!v2)
    {
      v12 = a2;
      sub_1000A1830();
      v13 = sub_1000A1820();
      v15 = v14;
      (*(v20 + 8))(v7, v21);
      v22 = v13;
      v23 = v15;
      v26._countAndFlagsBits = 1735290926;
      v26._object = 0xE400000000000000;
      sub_1000A2E10(v26);
      v16 = v22;
      v17 = v23;
      v22 = v12;
      v23 = v16;
      v24 = v17;
      v25 = 1;
      sub_1000787E4();
      sub_1000A3520();
    }
  }

  else
  {
    LOBYTE(v22) = 0;
    v25 = 0;
    sub_100096D0C();
    sub_1000A3520();
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_1000958D0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_100096A68(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_100095918()
{
  v1 = 0x746144746867696CLL;
  if (*v0 != 1)
  {
    v1 = 0x617461446B726164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_100095970@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100096D60(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100095998(uint64_t a1)
{
  v2 = sub_1000973C0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000959D4(uint64_t a1)
{
  v2 = sub_1000973C0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100095A10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x746E656964617267;
  }

  else
  {
    v3 = 0x64696C6F73;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x746E656964617267;
  }

  else
  {
    v5 = 0x64696C6F73;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1000A3560();
  }

  return v8 & 1;
}

Swift::Int sub_100095AB4()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100095B34()
{
  sub_1000A2DD0();
}

Swift::Int sub_100095BA0()
{
  sub_1000A35F0();
  sub_1000A2DD0();

  return sub_1000A3620();
}

uint64_t sub_100095C28@<X0>(uint64_t *a1@<X0>, Swift::OpaquePointer a2@<X3>, char *a3@<X8>)
{
  v9._countAndFlagsBits = *a1;
  v4 = a1[1];
  v9._object = v4;
  v6 = sub_1000A3420(a2, v9);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

void sub_100095C84(uint64_t *a1@<X8>)
{
  v2 = 0x64696C6F73;
  if (*v1)
  {
    v2 = 0x746E656964617267;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100095D70(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v46 = a3;
  v8 = sub_100017A54(&qword_1000E90E8);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v43 - v10;
  sub_100018688(a1, a1[3]);
  sub_1000973C0();
  sub_1000A3660();
  if (a4)
  {
    *v47 = 256;
    sub_1000974BC();
    sub_1000A3520();
    if (!v4)
    {
      v12 = objc_opt_self();
      *&v47[1] = 0;
      v13 = [v12 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v47[1]];
      v14 = *&v47[1];
      if (v13)
      {
        v15 = sub_1000A1730();
        v17 = v16;

        *&v47[1] = v15;
        v48 = v17;
        v47[0] = 1;
        sub_100034E3C();
        sub_1000A3520();
        *&v47[1] = 0;
        v18 = [v12 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v47[1]];
        v19 = *&v47[1];
        if (v18)
        {
          v20 = sub_1000A1730();
          v45 = v21;
          v46 = v20;

          *&v47[1] = v20;
          v22 = v45;
          v48 = v45;
          v47[0] = 2;
          sub_1000A3520();
          (*(v9 + 8))(v11, v8);
          sub_10001AA1C(v15, v17);
          v23 = v46;
          v24 = v22;
          return sub_10001AA1C(v23, v24);
        }

        v39 = v19;
        sub_1000A1600();

        swift_willThrow();
        v40 = v15;
        v41 = v17;
LABEL_16:
        sub_10001AA1C(v40, v41);
        return (*(v9 + 8))(v11, v8);
      }

LABEL_10:
      v31 = v14;
      sub_1000A1600();

      swift_willThrow();
    }
  }

  else
  {
    *v47 = 0;
    sub_1000974BC();
    sub_1000A3520();
    if (!v4)
    {
      v25 = objc_opt_self();
      *&v47[1] = 0;
      v26 = [v25 archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v47[1]];
      v14 = *&v47[1];
      if (v26)
      {
        v27 = sub_1000A1730();
        v29 = v28;

        *&v47[1] = v27;
        v48 = v29;
        v47[0] = 1;
        sub_100034E3C();
        sub_1000A3520();
        v44 = v27;
        v45 = v29;
        *&v47[1] = 0;
        v32 = [v25 archivedDataWithRootObject:v46 requiringSecureCoding:1 error:&v47[1]];
        v33 = *&v47[1];
        if (v32)
        {
          v34 = sub_1000A1730();
          v36 = v35;

          *&v47[1] = v34;
          v48 = v36;
          v47[0] = 2;
          sub_1000A3520();
          v38 = v44;
          v37 = v45;
          (*(v9 + 8))(v11, v8);
          sub_10001AA1C(v38, v37);
          v23 = v34;
          v24 = v36;
          return sub_10001AA1C(v23, v24);
        }

        v42 = v33;
        sub_1000A1600();

        swift_willThrow();
        v40 = v44;
        v41 = v45;
        goto LABEL_16;
      }

      goto LABEL_10;
    }
  }

  return (*(v9 + 8))(v11, v8);
}

void *sub_100096264@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100096E80(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6 & 1;
  }

  return result;
}

unint64_t sub_1000962B8()
{
  result = qword_1000E9050;
  if (!qword_1000E9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9050);
  }

  return result;
}

uint64_t sub_10009630C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(&qword_1000E9058);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100096384()
{
  result = qword_1000E9068;
  if (!qword_1000E9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9068);
  }

  return result;
}

unint64_t sub_1000963D8()
{
  result = qword_1000E9070;
  if (!qword_1000E9070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9070);
  }

  return result;
}

uint64_t sub_10009642C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Banner();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100096490(uint64_t a1)
{
  v2 = type metadata accessor for Banner();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000964EC(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_100017A9C(&unk_1000E5DD0);
    sub_100096574(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100096574(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000A1700();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000965B8()
{
  result = qword_1000E9088;
  if (!qword_1000E9088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9088);
  }

  return result;
}

unint64_t sub_10009660C()
{
  result = qword_1000E9090;
  if (!qword_1000E9090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9090);
  }

  return result;
}

uint64_t sub_100096660(void *a1)
{
  v2 = sub_100017A54(&qword_1000E90F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8[-v4];
  sub_100018688(a1, a1[3]);
  sub_100097510();
  sub_1000A3640();
  v8[15] = 0;
  v6 = sub_1000A34A0();
  v8[14] = 1;
  sub_1000A34A0();
  (*(v3 + 8))(v5, v2);
  sub_100018720(a1);
  return v6;
}

uint64_t sub_100096808(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x52556E6F69746361 && a2 == 0xE90000000000004CLL || (sub_1000A3560() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000B5E10 == a2 || (sub_1000A3560() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6567616D69 && a2 == 0xE500000000000000 || (sub_1000A3560() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 6;
  }

  else
  {
    v5 = sub_1000A3560();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

void *sub_100096A68(void *a1)
{
  v3 = sub_100017A54(&qword_1000E90A0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100018688(a1, a1[3]);
  sub_100096C64();
  sub_1000A3640();
  if (!v1)
  {
    v10 = 0;
    sub_100096CB8();
    sub_1000A34B0();
    if (v9)
    {
      v10 = 1;
      sub_10007873C();
      sub_1000A34B0();
      (*(v4 + 8))(v6, v3);
      v7 = v9;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v7 = 0;
    }
  }

  sub_100018720(a1);
  return v7;
}

unint64_t sub_100096C64()
{
  result = qword_1000E90A8;
  if (!qword_1000E90A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90A8);
  }

  return result;
}

unint64_t sub_100096CB8()
{
  result = qword_1000E90B0;
  if (!qword_1000E90B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90B0);
  }

  return result;
}

unint64_t sub_100096D0C()
{
  result = qword_1000E90C0;
  if (!qword_1000E90C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90C0);
  }

  return result;
}

uint64_t sub_100096D60(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1000A3560() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746867696CLL && a2 == 0xE900000000000061 || (sub_1000A3560() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617461446B726164 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1000A3560();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

void *sub_100096E80(void *a1)
{
  v3 = sub_100017A54(&qword_1000E90C8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v23 - v5;
  v7 = a1[3];
  sub_100018688(a1, v7);
  sub_1000973C0();
  sub_1000A3640();
  if (v1)
  {
    goto LABEL_4;
  }

  v29 = 0;
  sub_100097414();
  sub_1000A34B0();
  if (v27)
  {
    v29 = 1;
    v9 = sub_100034B00();
    sub_1000A34B0();
    v24 = v9;
    v10 = v28;
    v26 = v27;
    v11 = sub_100028E34(0, &unk_1000E7DD0);
    sub_100028E34(0, &qword_1000E9098);
    v25 = v10;
    v23 = v11;
    v7 = sub_1000A30A0();
    if (v7)
    {
      v29 = 2;
      sub_1000A34B0();
      v12 = v27;
      v24 = v28;
      v13 = sub_1000A30A0();
      v23 = v12;
      if (!v13)
      {
        sub_100097468();
        swift_allocError();
        *v14 = 1;
LABEL_18:
        swift_willThrow();
        sub_10001AA1C(v26, v25);
        sub_10001AA1C(v23, v24);

        goto LABEL_3;
      }

      goto LABEL_16;
    }

    sub_100097468();
    swift_allocError();
    *v18 = 1;
  }

  else
  {
    v29 = 1;
    v15 = sub_100034B00();
    sub_1000A34B0();
    v24 = v15;
    v16 = v28;
    v26 = v27;
    v17 = sub_100028E34(0, &unk_1000E7DD0);
    sub_100028E34(0, &qword_1000E85F0);
    v25 = v16;
    v23 = v17;
    v7 = sub_1000A30A0();
    if (v7)
    {
      v29 = 2;
      sub_1000A34B0();
      v20 = v27;
      v24 = v28;
      v21 = sub_1000A30A0();
      v23 = v20;
      if (!v21)
      {
        sub_100097468();
        swift_allocError();
        *v22 = 0;
        goto LABEL_18;
      }

LABEL_16:
      (*(v4 + 8))(v6, v3);
      sub_10001AA1C(v26, v25);
      sub_10001AA1C(v23, v24);
      sub_100018720(a1);
      return v7;
    }

    sub_100097468();
    swift_allocError();
    *v19 = 0;
  }

  swift_willThrow();
  sub_10001AA1C(v26, v25);
LABEL_3:
  (*(v4 + 8))(v6, v3);
LABEL_4:
  sub_100018720(a1);
  return v7;
}

unint64_t sub_1000973C0()
{
  result = qword_1000E90D0;
  if (!qword_1000E90D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90D0);
  }

  return result;
}

unint64_t sub_100097414()
{
  result = qword_1000E90D8;
  if (!qword_1000E90D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90D8);
  }

  return result;
}

unint64_t sub_100097468()
{
  result = qword_1000E90E0;
  if (!qword_1000E90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90E0);
  }

  return result;
}

unint64_t sub_1000974BC()
{
  result = qword_1000E90F0;
  if (!qword_1000E90F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E90F0);
  }

  return result;
}

unint64_t sub_100097510()
{
  result = qword_1000E9100;
  if (!qword_1000E9100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9100);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Banner.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Banner.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100097718()
{
  result = qword_1000E9110;
  if (!qword_1000E9110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9110);
  }

  return result;
}

unint64_t sub_100097770()
{
  result = qword_1000E9118;
  if (!qword_1000E9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9118);
  }

  return result;
}

unint64_t sub_1000977C8()
{
  result = qword_1000E9120;
  if (!qword_1000E9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9120);
  }

  return result;
}

unint64_t sub_100097820()
{
  result = qword_1000E9128;
  if (!qword_1000E9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9128);
  }

  return result;
}

unint64_t sub_100097878()
{
  result = qword_1000E9130;
  if (!qword_1000E9130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9130);
  }

  return result;
}

unint64_t sub_1000978D0()
{
  result = qword_1000E9138;
  if (!qword_1000E9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9138);
  }

  return result;
}

unint64_t sub_100097928()
{
  result = qword_1000E9140;
  if (!qword_1000E9140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9140);
  }

  return result;
}

unint64_t sub_100097980()
{
  result = qword_1000E9148;
  if (!qword_1000E9148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9148);
  }

  return result;
}

unint64_t sub_1000979D8()
{
  result = qword_1000E9150;
  if (!qword_1000E9150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9150);
  }

  return result;
}

unint64_t sub_100097A30()
{
  result = qword_1000E9158;
  if (!qword_1000E9158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9158);
  }

  return result;
}

unint64_t sub_100097A88()
{
  result = qword_1000E9160;
  if (!qword_1000E9160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9160);
  }

  return result;
}

unint64_t sub_100097AE0()
{
  result = qword_1000E9168;
  if (!qword_1000E9168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9168);
  }

  return result;
}

unint64_t sub_100097B38()
{
  result = qword_1000E9170;
  if (!qword_1000E9170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9170);
  }

  return result;
}

unint64_t sub_100097B90()
{
  result = qword_1000E9178;
  if (!qword_1000E9178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9178);
  }

  return result;
}

unint64_t sub_100097BE8()
{
  result = qword_1000E9180;
  if (!qword_1000E9180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9180);
  }

  return result;
}

unint64_t sub_100097C3C()
{
  result = qword_1000E9188;
  if (!qword_1000E9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9188);
  }

  return result;
}

unint64_t sub_100097C90()
{
  result = qword_1000E9190;
  if (!qword_1000E9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9190);
  }

  return result;
}

void *sub_100097CE8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9290);
  result = sub_1000A1A10();
  if (!v51)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E9280);
  result = sub_1000A1A00();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = result;
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9268);
  result = sub_1000A1A00();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = result;
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E92B0);
  result = sub_1000A1A00();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v7 = result;
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E92A0);
  result = sub_1000A1A10();
  if (!v49)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v40 = v7;
  v41 = v6;
  v42 = v5;
  v43 = a2;
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E9270);
  result = sub_1000A19E0();
  if (result)
  {
    v8 = result;
    v38 = [result nonVideoContentEventTracker];

    v9 = sub_10002F1F4(v50, v51);
    v39 = &v37;
    __chkstk_darwin(v9);
    v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11);
    v13 = sub_10002F1F4(v48, v49);
    v37 = &v37;
    __chkstk_darwin(v13);
    v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15);
    v17 = *v11;
    v18 = *v15;
    v19 = type metadata accessor for NTTodayContextResultsService();
    v47[3] = v19;
    v47[4] = &off_1000DA0B8;
    v47[0] = v17;
    v20 = type metadata accessor for WidgetAssetStore();
    v45 = v20;
    v46 = &off_1000D7EF8;
    v44[0] = v18;
    v21 = type metadata accessor for ContentService();
    v22 = swift_allocObject();
    v23 = sub_10002F1F4(v47, v19);
    __chkstk_darwin(v23);
    v25 = (&v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = sub_10002F1F4(v44, v45);
    __chkstk_darwin(v27);
    v29 = (&v37 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29);
    v31 = *v25;
    v32 = *v29;
    v22[7] = v19;
    v22[3] = 0;
    v22[4] = v31;
    v22[15] = v20;
    v22[16] = &off_1000D7EF8;
    v22[2] = 0;
    v33 = v42;
    v22[8] = &off_1000DA0B8;
    v22[9] = v33;
    v34 = v41;
    v22[12] = v32;
    v35 = v40;
    v22[10] = v34;
    v22[11] = v35;
    v22[17] = v38;
    sub_100018720(v44);
    sub_100018720(v47);
    sub_100018720(v48);
    result = sub_100018720(v50);
    v36 = v43;
    v43[3] = v21;
    v36[4] = &off_1000D9C70;
    *v36 = v22;
    return result;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1000982AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9238);
  result = sub_1000A1A10();
  if (v19)
  {
    v4 = sub_10002F1F4(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for ContentService();
    v17[3] = v9;
    v17[4] = &off_1000D9C70;
    v17[0] = v8;
    v10 = type metadata accessor for EntryService();
    v11 = swift_allocObject();
    v12 = sub_10002F1F4(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1000D9C70;
    v11[2] = v16;
    sub_100018720(v17);
    result = sub_100018720(v18);
    a2[3] = v10;
    a2[4] = &off_1000D8CF8;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000984D0(void *a1)
{
  sub_100018688(a1, a1[3]);
  type metadata accessor for FeedPersonalizerFactory();
  result = sub_1000A1A00();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_100098524()
{
  v0 = [objc_opt_self() widgetEventTrackerWithMaxRowCount:10];

  return v0;
}

id sub_100098570()
{
  v0 = objc_allocWithZone(FTNewsAnalyticsUserIDWidgetEventTracker);

  return [v0 init];
}

uint64_t sub_1000985A8(void *a1)
{
  sub_100017A54(&qword_1000E88F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1000AF1A0;
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E9278);
  result = sub_1000A1A00();
  if (result)
  {
    *(v2 + 32) = result;
    v4 = objc_allocWithZone(FTAggregateWidgetEventTracker);
    sub_100017A54(&unk_1000E5AC0);
    isa = sub_1000A2F00().super.isa;

    v6 = [v4 initWithEventTrackers:isa];

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000986B8(void *a1, unint64_t *a2)
{
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, a2);
  result = sub_1000A1A00();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098728@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E92A0);
  result = sub_1000A1A10();
  if (v19)
  {
    v4 = sub_10002F1F4(v18, v19);
    __chkstk_darwin(v4);
    v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for WidgetAssetStore();
    v17[3] = v9;
    v17[4] = &off_1000D7EF8;
    v17[0] = v8;
    v10 = type metadata accessor for EntryStore();
    v11 = swift_allocObject();
    v12 = sub_10002F1F4(v17, v9);
    __chkstk_darwin(v12);
    v14 = (v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v15 + 16))(v14);
    v16 = *v14;
    v11[5] = v9;
    v11[6] = &off_1000D7EF8;
    v11[2] = v16;
    v11[7] = 0x7972746E65;
    v11[8] = 0xE500000000000000;
    sub_100018720(v17);
    result = sub_100018720(v18);
    a2[3] = v10;
    a2[4] = &off_1000D7CB0;
    *a2 = v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100098960(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9250);
  result = sub_1000A1A10();
  if (v9 == 1)
  {
    __break(1u);
  }

  else
  {
    sub_100018688(a1, a1[3]);
    type metadata accessor for FCFeedPersonalizationConfigurationSet(0);
    result = sub_1000A1A10();
    if ((v8 & 1) == 0)
    {
      v3 = v7;
      v4 = type metadata accessor for FeedPersonalizerFactory();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC7NewsTag23FeedPersonalizerFactory_translationProvider] = v9;
      *&v5[OBJC_IVAR____TtC7NewsTag23FeedPersonalizerFactory_configurationSet] = v3;
      v6.receiver = v5;
      v6.super_class = v4;
      return objc_msgSendSuper2(&v6, "init");
    }
  }

  __break(1u);
  return result;
}

void *sub_100098A5C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9258);
  result = sub_1000A1A00();
  if (result)
  {
    v4 = [result possiblyUnfetchedTranslationProvider];
    result = swift_unknownObjectRelease();
    *a2 = v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098B20()
{
  type metadata accessor for ImageJoeColorAnalyzer();

  return swift_allocObject();
}

uint64_t sub_100098B78(void *a1, uint64_t *a2, uint64_t a3, Class *a4, SEL *a5)
{
  sub_100018688(a1, a1[3]);
  sub_100017A54(a2);
  result = sub_1000A1A00();
  if (result)
  {
    v9 = [objc_allocWithZone(*a4) *a5];
    swift_unknownObjectRelease();
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100098C1C(void *a1)
{
  v2 = sub_1000A1700();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E9288);
  result = sub_1000A1A00();
  if (result)
  {
    v7 = result;
    result = FCURLForContainerizedUserAccountDocumentDirectory();
    if (result)
    {
      v8 = result;
      sub_1000A16C0();

      v9 = objc_allocWithZone(FTSeenHeadlineWidgetEventTracker);
      sub_1000A1670(v10);
      v12 = v11;
      v13 = [v9 initWithTodayEventTracker:v7 documentsDirectory:v11];
      swift_unknownObjectRelease();

      (*(v3 + 8))(v5, v2);
      return v13;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100098D94(void *a1)
{
  sub_100018688(a1, a1[3]);
  sub_100028E34(0, &qword_1000E9298);
  result = sub_1000A1A00();
  if (result)
  {
    v2 = result;
    v3 = [objc_allocWithZone(FTEngagementURLProvider) initWithAvailabilityMonitor:result];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100098E38(void *a1, void *a2)
{
  sub_100018688(a2, a2[3]);
  sub_100017A54(&qword_1000E5A10);
  result = sub_1000A1A00();
  if (result)
  {
    v4 = result;
    v5 = sub_100018688(a1, a1[3]);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    v7 = *v5;
    v8 = *(*v5 + 16);
    *(v7 + 16) = sub_10009A770;
    *(v7 + 24) = v6;

    return sub_1000862F8(v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100098EFC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  if (a3)
  {
    v8 = a5;
    v9 = sub_1000A15F0();
    a5 = v8;
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;
  [a4 widgetPerformedUpdateWithTodayResults:a1 fetchInfo:a2 error:a5 updateFetchDuration:?];
}

void sub_100098F8C(void *a1)
{
  v3[4] = TodayIntentResponseCode.rawValue.getter;
  v3[5] = 0;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 1107296256;
  v3[2] = sub_100099034;
  v3[3] = &unk_1000DAAD8;
  v2 = _Block_copy(v3);
  [a1 fetchTranslationProvider:v2];
  _Block_release(v2);
}

uint64_t sub_100099034(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

id sub_1000990B4()
{
  v0 = objc_allocWithZone(FCNewsAvailabilityMonitor);

  return [v0 initWithProcessVariant:0];
}

void sub_1000990F0(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1000A1700();
  __chkstk_darwin(v4 - 8);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100018688(a1, a1[3]);
  sub_100017A54(&qword_1000E92A8);
  sub_1000A1A10();
  if (v26)
  {
    v7 = [objc_opt_self() mainBundle];
    v8 = [v7 bundleIdentifier];

    v9 = FCURLForWidgetReferralItems();
    if (v9)
    {
      sub_1000A16C0();

      v10 = sub_10002F1F4(v25, v26);
      __chkstk_darwin(v10);
      v12 = (v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v23 = sub_1000A2B00();
      v24 = &off_1000D9510;
      v22[0] = v14;
      v15 = type metadata accessor for WidgetAssetStore();
      v16 = objc_allocWithZone(v15);
      v17 = sub_10002F1F4(v22, v23);
      __chkstk_darwin(v17);
      v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v20 + 16))(v19);
      v21 = sub_100099474(*v19, v6, v16);
      sub_100018720(v22);
      sub_100018720(v25);
      a2[3] = v15;
      a2[4] = &off_1000D7EF8;
      *a2 = v21;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1000993D4@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1000A2B00();
  result = sub_1000A2AF0();
  a1[3] = v2;
  a1[4] = &off_1000D9510;
  *a1 = result;
  return result;
}

id sub_100099414()
{
  v0 = objc_allocWithZone(FTContentPrefetchManager);

  return [v0 init];
}

id sub_100099474(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1000A1980();
  __chkstk_darwin(v6 - 8);
  v43[3] = sub_1000A2B00();
  v43[4] = &off_1000D9510;
  v43[0] = a1;
  *&a3[OBJC_IVAR____TtC7NewsTag16WidgetAssetStore____lazy_storage___pruneThrottler] = 0;
  v7 = OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_lock;
  sub_1000A1970();
  sub_1000A19A0();
  swift_allocObject();
  *&a3[v7] = sub_1000A1990();
  sub_10002F244(v43, &a3[OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_infoService]);
  v8 = OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_directoryUrl;
  v9 = sub_1000A1700();
  v39 = *(v9 - 8);
  (*(v39 + 16))(&a3[v8], a2, v9);
  v10 = [objc_opt_self() defaultManager];
  sub_1000A1670(v11);
  v13 = v12;
  v42[0] = 0;
  v14 = [v10 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:v42];

  if (v14)
  {
    v15 = v42[0];
  }

  else
  {
    v16 = v42[0];
    sub_1000A1600();

    swift_willThrow();
    v17 = sub_1000A15F0();
    v18 = [v17 code];

    if (v18 == 516)
    {
    }

    else
    {
      v19 = PrefetchLog();
      sub_1000A3070();
      sub_100017A54(&unk_1000E5270);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1000AA7C0;
      sub_100070450();
      v21 = sub_1000A3550();
      v23 = v22;
      *(v20 + 56) = &type metadata for String;
      *(v20 + 64) = sub_10001A97C();
      *(v20 + 32) = v21;
      *(v20 + 40) = v23;
      sub_1000A1DB0();
    }
  }

  v24 = sub_10001BA80();
  v25 = sub_10001FD08(v24);

  *&a3[OBJC_IVAR____TtC7NewsTag16WidgetAssetStore_keysOfInterest] = v25;
  v26 = PrefetchLog();
  sub_1000A3060();
  sub_100017A54(&unk_1000E5270);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1000AA450;
  sub_100070450();
  v28 = sub_1000A3550();
  v29 = v9;
  v30 = a2;
  v32 = v31;
  *(v27 + 56) = &type metadata for String;
  v33 = sub_10001A97C();
  *(v27 + 64) = v33;
  *(v27 + 32) = v28;
  *(v27 + 40) = v32;
  swift_beginAccess();

  v34 = sub_1000A3020();
  v36 = v35;

  *(v27 + 96) = &type metadata for String;
  *(v27 + 104) = v33;
  *(v27 + 72) = v34;
  *(v27 + 80) = v36;
  sub_1000A1DB0();

  v41.receiver = a3;
  v41.super_class = ObjectType;
  v37 = objc_msgSendSuper2(&v41, "init");
  (*(v39 + 8))(v30, v29);
  sub_100018720(v43);
  return v37;
}

uint64_t sub_1000998EC(uint64_t a1)
{
  v37 = sub_1000A1A30();
  v41 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1000A1B50();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E9238);
  sub_1000A1AE0();

  sub_1000A1A60();
  sub_100017A54(&unk_1000E9240);
  sub_1000A1AE0();

  v7 = enum case for Scope.singleton(_:);
  v8 = *(v4 + 104);
  v40 = enum case for Scope.singleton(_:);
  v8(v6, enum case for Scope.singleton(_:), v3);
  sub_1000A1960();

  v9 = *(v4 + 8);
  v9(v6, v3);
  v38 = v9;
  v42 = v4 + 8;
  sub_1000A1A60();
  sub_100017A54(&qword_1000E5AF8);
  sub_1000A1AD0();

  v8(v6, v7, v3);
  v10 = v8;
  v39 = v8;
  sub_1000A1960();

  v9(v6, v3);
  sub_1000A1A60();
  sub_100017A54(&unk_1000E5C10);
  sub_1000A1AD0();

  sub_1000A1A60();
  sub_100028E34(0, &unk_1000E5AB0);
  sub_1000A1AD0();

  v11 = v40;
  v10(v6, v40, v3);
  v12 = v4 + 104;
  sub_1000A1960();

  v13 = v3;
  v14 = v38;
  v38(v6, v3);
  sub_1000A1A60();
  sub_1000A1AD0();

  sub_1000A1A60();
  sub_100017A54(&unk_1000E5C00);
  sub_1000A1AD0();

  v15 = v11;
  v16 = v11;
  v17 = v39;
  v39(v6, v16, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A60();
  sub_100017A54(&qword_1000E8A38);
  sub_1000A1AE0();

  v17(v6, v15, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  type metadata accessor for FeedPersonalizerFactory();
  sub_1000A1AD0();

  sub_1000A1A70();
  sub_100017A54(&qword_1000E9250);
  sub_1000A1AE0();

  v17(v6, v15, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  v35 = sub_100017A54(&qword_1000E9258);
  sub_1000A1AD0();

  v18 = v40;
  v17(v6, v40, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E9260);
  sub_1000A1AD0();

  v17(v6, v18, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  sub_100017A54(&qword_1000E9268);
  sub_1000A1AD0();

  v17(v6, v18, v13);
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E9270);
  sub_1000A1AD0();

  v17(v6, v18, v13);
  v34 = v12;
  sub_1000A1960();

  v14(v6, v13);
  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E9278);
  sub_1000A1AD0();

  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E9280);
  sub_1000A1AD0();

  v33 = v13;
  v17(v6, v18, v13);
  sub_1000A1960();

  v14(v6, v13);
  v32 = a1;
  sub_1000A1A70();
  sub_100017A54(&qword_1000E9288);
  sub_1000A1AD0();

  sub_1000A1A80();
  sub_100018688(v43, v44);
  sub_100017A54(&qword_1000E9290);
  v19 = enum case for CallbackScope.any(_:);
  v20 = v41;
  v31 = *(v41 + 104);
  v21 = v36;
  v22 = v37;
  v31(v36, enum case for CallbackScope.any(_:), v37);
  sub_1000A1B00();
  v23 = v20 + 8;
  v24 = *(v20 + 8);
  v41 = v23;
  v24(v21, v22);
  sub_100018720(v43);
  sub_1000A1A80();
  sub_100018688(v43, v44);
  v31(v21, v19, v22);
  sub_1000A1AF0();
  v24(v21, v22);
  sub_100018720(v43);
  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E9298);
  sub_1000A1AD0();

  v25 = v40;
  v26 = v33;
  v27 = v39;
  v39(v6, v40, v33);
  sub_1000A1960();

  v28 = v38;
  v38(v6, v26);
  sub_1000A1A70();
  sub_100017A54(&qword_1000E92A0);
  sub_1000A1AE0();

  v27(v6, v25, v26);
  sub_1000A1960();

  v28(v6, v26);
  sub_1000A1A70();
  sub_100017A54(&qword_1000E92A8);
  sub_1000A1AE0();

  v27(v6, v25, v26);
  sub_1000A1960();

  v28(v6, v26);
  sub_1000A1A70();
  sub_100028E34(0, &qword_1000E92B0);
  sub_1000A1AD0();

  v27(v6, v25, v26);
  sub_1000A1960();

  return (v28)(v6, v26);
}

uint64_t sub_10009A720(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009A738()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24, 7);
}

id TagIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TagIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntent.__allocating_init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1000A2D10();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithIdentifier:v6 backingStore:a3];

  return v7;
}

id TagIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000A2D10();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TagIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TodayIntent.__allocating_init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000A2D10();

  v8 = sub_1000A2D10();

  if (a5)
  {
    v9.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v7 verb:v8 parametersByName:v9.super.isa];

  return v10;
}

id TagIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000A2D10();

  v8 = sub_1000A2D10();

  if (a5)
  {
    v9.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TagIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

Swift::Int sub_10009AD54()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_1000A3600(v1);
  return sub_1000A3620();
}

Swift::Int sub_10009ADC8()
{
  v1 = *v0;
  sub_1000A35F0();
  sub_1000A3600(v1);
  return sub_1000A3620();
}

unint64_t sub_10009AE0C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10009B538(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t TagIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TagIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *TagIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TagIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TagIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TagIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TagIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntent.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

id TagIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntentResponse.__allocating_init(backingStore:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBackingStore:a1];

  return v3;
}

id TagIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10009B2E4(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TagIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TagIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TodayIntentResponse.__allocating_init(propertiesByName:)(uint64_t a1)
{
  if (a1)
  {
    v2.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v3 = [objc_allocWithZone(v1) initWithPropertiesByName:v2.super.isa];

  return v3;
}

id TagIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TagIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TagIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10009B500(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009B538(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_10009B570()
{
  result = qword_1000E92C0;
  if (!qword_1000E92C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E92C0);
  }

  return result;
}

uint64_t sub_10009B5C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10009B61C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TagIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id TodayIntent.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntent();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntent.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntent();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntent.init(identifier:backingStore:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1000A2D10();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for TodayIntent();
  v6 = objc_msgSendSuper2(&v8, "initWithIdentifier:backingStore:", v5, a3);

  return v6;
}

id TodayIntent.init(domain:verb:parametersByName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1000A2D10();

  v8 = sub_1000A2D10();

  if (a5)
  {
    v9.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v9.super.isa = 0;
  }

  v12.receiver = v5;
  v12.super_class = type metadata accessor for TodayIntent();
  v10 = objc_msgSendSuper2(&v12, "initWithDomain:verb:parametersByName:", v7, v8, v9.super.isa);

  return v10;
}

uint64_t TodayIntentResponse.code.getter()
{
  v1 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  return *(v0 + v1);
}

char *TodayIntentResponse.__allocating_init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

char *TodayIntentResponse.init(code:userActivity:)(uint64_t a1, void *a2)
{
  v5 = [v2 init];
  v6 = OBJC_IVAR___TodayIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = a1;
  v7 = v5;
  [v7 setUserActivity:a2];

  return v7;
}

id TodayIntentResponse.init()()
{
  *&v0[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TodayIntentResponse();
  return objc_msgSendSuper2(&v2, "init");
}

id TodayIntentResponse.init(coder:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id TodayIntentResponse.init(backingStore:)(void *a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithBackingStore:", a1);

  if (v3)
  {
  }

  return v3;
}

id sub_10009BF18(char *a1, uint64_t a2, void *a3, const char **a4)
{
  *&a1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  v10.receiver = a1;
  v10.super_class = type metadata accessor for TodayIntentResponse();
  v6 = *a4;
  v7 = a3;
  v8 = objc_msgSendSuper2(&v10, v6, v7);

  if (v8)
  {
  }

  return v8;
}

id TodayIntentResponse.init(propertiesByName:)(uint64_t a1)
{
  *&v1[OBJC_IVAR___TodayIntentResponse_code] = 0;
  if (a1)
  {
    v2.super.isa = sub_1000A2C50().super.isa;
  }

  else
  {
    v2.super.isa = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for TodayIntentResponse();
  v3 = objc_msgSendSuper2(&v5, "initWithPropertiesByName:", v2.super.isa);

  if (v3)
  {
  }

  return v3;
}

id sub_10009C0B0(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

unint64_t sub_10009C110()
{
  result = qword_1000E9320;
  if (!qword_1000E9320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E9320);
  }

  return result;
}

uint64_t sub_10009C164@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_10009C1BC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___TodayIntentResponse_code;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

id Tag.__allocating_init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1000A2D10();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000A2D10();

  if (a6)
  {
    v10 = sub_1000A2D10();
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(v6) initWithIdentifier:v8 displayString:v9 pronunciationHint:v10];

  return v11;
}

id Tag.init(identifier:display:pronunciationHint:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v8 = sub_1000A2D10();
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1000A2D10();

  if (a6)
  {
    v10 = sub_1000A2D10();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v6;
  v13.super_class = type metadata accessor for Tag();
  v11 = objc_msgSendSuper2(&v13, "initWithIdentifier:displayString:pronunciationHint:", v8, v9, v10);

  return v11;
}

id Tag.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for Tag();
  v3 = objc_msgSendSuper2(&v5, "initWithCoder:", a1);

  if (v3)
  {
  }

  return v3;
}

id static TagResolutionResult.success(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "successWithResolvedObject:", a1);

  return v2;
}

id static TagResolutionResult.disambiguation(with:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_10009C740();

    sub_1000A33C0();
  }

  else
  {

    sub_1000A3570();
    sub_10009C740();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_10009C740();
  isa = sub_1000A2F00().super.isa;

  v5.receiver = ObjCClassFromMetadata;
  v5.super_class = &OBJC_METACLASS___TagResolutionResult;
  v3 = objc_msgSendSuper2(&v5, "disambiguationWithObjectsToDisambiguate:", isa);

  return v3;
}

unint64_t sub_10009C740()
{
  result = qword_1000E93A0;
  if (!qword_1000E93A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000E93A0);
  }

  return result;
}

id static TagResolutionResult.confirmationRequired(with:)(uint64_t a1)
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS___TagResolutionResult;
  v2 = objc_msgSendSuper2(&v4, "confirmationRequiredWithObjectToConfirm:", a1);

  return v2;
}

id TagResolutionResult.__allocating_init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = sub_1000A2C50().super.isa;

  v6 = [v4 initWithJSONDictionary:isa forIntent:a2];

  return v6;
}

id TagResolutionResult.init(JSONDictionary:intent:)(uint64_t a1, void *a2)
{
  isa = sub_1000A2C50().super.isa;

  v7.receiver = v2;
  v7.super_class = type metadata accessor for TagResolutionResult();
  v5 = objc_msgSendSuper2(&v7, "initWithJSONDictionary:forIntent:", isa, a2);

  if (v5)
  {
  }

  return v5;
}

id sub_10009CCCC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10009CD30(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_1000F1B78 == -1)
  {
    if (qword_1000F1B80)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1000A1460();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1000F1B80)
    {
      return _availability_version_check();
    }
  }

  if (qword_1000F1B70 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1000A1478();
    a3 = v10;
    a4 = v9;
    v8 = dword_1000F1B60 < v11;
    if (dword_1000F1B60 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1000F1B64 > a3)
      {
        return 1;
      }

      if (dword_1000F1B64 >= a3)
      {
        return dword_1000F1B68 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1000F1B60 < a2;
  if (dword_1000F1B60 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_10009CEC4(uint64_t result)
{
  v1 = qword_1000F1B80;
  if (qword_1000F1B80)
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
      qword_1000F1B80 = &__availability_version_check;
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
                                          sscanf(v28, "%d.%d.%d", &dword_1000F1B60, &dword_1000F1B64, &dword_1000F1B68);
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

void sub_10009D1F8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_10009D2BC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_10009D380()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009D444()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009D508()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_10009D5E0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_10009D6A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "flintDocumentURLAssetHandlesByRemoteURL", v6, 2u);
}

void sub_10009D768()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_10009D82C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "encodableElement", v6, 2u);
}

void sub_10009D8F0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_10009D9B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "JSONArray", v6, 2u);
}

void sub_10009DA78()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todaySourceIdentifier", v6, 2u);
}

void sub_10009DB3C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "a", v6, 2u);
}

void sub_10009DC00()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "b", v6, 2u);
}

void sub_10009DCC4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_10009DD88()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todaySourceIdentifier", v6, 2u);
}

void sub_10009DE4C()
{
  v0 = [[NSString alloc] initWithFormat:@"start and end events must be balanced!"];
  v1 = 136315906;
  v2 = "[FTWidgetLingerEventTracker trackWidgetLingerEventExtremity:atDate:withTodaySource:appConfigTreatmentID:widgetDisplayMode:appearanceType:]";
  v3 = 2080;
  v4 = "FTWidgetLingerEventTracker.m";
  v5 = 1024;
  sub_10000B4B8();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10009DF20()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "startState", v6, 2u);
}

void sub_10009DFE4()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "startDate", v6, 2u);
}

void sub_10009E0A8()
{
  v0 = [[NSString alloc] initWithFormat:@"start and end events must be balanced!"];
  v1 = 136315906;
  v2 = "[FTWidgetLingerEventTracker trackWidgetLingerEventExtremity:atDate:withTodaySource:appConfigTreatmentID:widgetDisplayMode:appearanceType:]";
  v3 = 2080;
  v4 = "FTWidgetLingerEventTracker.m";
  v5 = 1024;
  sub_10000B4B8();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10009E17C()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.startState", v6, 2u);
}

void sub_10009E240()
{
  v0 = [[NSString alloc] initWithFormat:@"expected nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "self.startDate", v6, 2u);
}

void sub_10009E304()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "endTodaySourceIdentifier", v6, 2u);
}

void sub_10009E3C8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sessionManager", v6, 2u);
}

void sub_10009E48C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "userIDProvider", v6, 2u);
}

void sub_10009E550()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "changeDate", v6, 2u);
}

void sub_10009E614()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009E6D8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "lastVisibleItemsChangeDate", v6, 2u);
}

void sub_10009E79C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_10009E860()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "engagement", v6, 2u);
}

void sub_10009E924()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009E9E8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "event", v6, 2u);
}

void sub_10009EAAC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009EB70()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySource"];
  *buf = 136315906;
  v2 = "[NTHeadlineEngagementEventTracker trackEngagementWithTodaySource:appConfigTreatmentID:section:otherVisibleSections:headlineOrder:widgetDisplayMode:]";
  v3 = 2080;
  v4 = "FTHeadlineEngagementEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009EC50()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "section"];
  *buf = 136315906;
  v2 = "[NTHeadlineEngagementEventTracker trackEngagementWithTodaySource:appConfigTreatmentID:section:otherVisibleSections:headlineOrder:widgetDisplayMode:]";
  v3 = 2080;
  v4 = "FTHeadlineEngagementEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009ED30()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "URL", v6, 2u);
}

void sub_10009EDF4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "reporter", v6, 2u);
}

void sub_10009EEB8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_10009EF7C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009F040()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_10009F104()
{
  v0 = [[NSString alloc] initWithFormat:@"Case not implemented"];
  v1 = 136315906;
  v2 = "NSString *FTCampaignIdentifierForSourceIdentifier(NSString *__strong)";
  v3 = 2080;
  v4 = "FTConstants.m";
  v5 = 1024;
  v6 = 30;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

void sub_10009F1E4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "appearanceDate"];
  *buf = 136315906;
  v2 = "[FTWidgetAppearanceEventTracker trackAppearanceAtDate:withHeadlineSource:appConfigTreatmentID:appearanceType:allItemsCount:]";
  v3 = 2080;
  v4 = "FTWidgetAppearanceEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009F2C4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySource"];
  *buf = 136315906;
  v2 = "[FTWidgetAppearanceEventTracker trackAppearanceAtDate:withHeadlineSource:appConfigTreatmentID:appearanceType:allItemsCount:]";
  v3 = 2080;
  v4 = "FTWidgetAppearanceEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009F3A4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headlines", v6, 2u);
}

void sub_10009F468()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sectionsByHeadline", v6, 2u);
}

void sub_10009F52C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetHandlesByRemoteURL", v6, 2u);
}

void sub_10009F5F0()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "NewsArticleID", v6, 2u);
}

void sub_10009F6B4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "unvalidatedValue"];
  *buf = 136315906;
  v2 = "NSString *FTValidatedFreeValuedPropertyValue(NSString *__strong)";
  v3 = 2080;
  v4 = "FTEventTrackingConstants.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009F794()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "name"];
  *buf = 136315906;
  v2 = "+[PETEventProperty(FTAdditions) ft_BOOLeanPropertyWithName:]";
  v3 = 2080;
  v4 = "FTEventTrackingConstants.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009F874()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "userIDProvider"];
  *buf = 136315906;
  v2 = "[FTNewsAnalyticsWidgetEventTracker initWithUserIDProvider:]";
  v3 = 2080;
  v4 = "FTNewsAnalyticsWidgetEventTracker.m";
  v5 = 1024;
  v6 = 41;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009F960()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "eventTrackers"];
  *buf = 136315906;
  v2 = "[FTAggregateWidgetEventTracker initWithEventTrackers:]";
  v3 = 2080;
  v4 = "FTAggregateWidgetEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009FA40()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "trackableWidgetState"];
  *buf = 136315906;
  v2 = "[FTAggregateWidgetEventTracker widgetDidAppearAtDate:withTrackableWidgetState:]";
  v3 = 2080;
  v4 = "FTAggregateWidgetEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_10009FB20()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "referralItem", v6, 2u);
}

void sub_10009FBE4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sharedDirectoryFileURL", v6, 2u);
}

void sub_10009FCA8()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "sourceFilePath", v6, 2u);
}

void sub_10009FD6C()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "assetManager", v6, 2u);
}

void sub_10009FE30()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "itemClass", v6, 2u);
}

void sub_10009FEF4()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "queryValue", v6, 2u);
}

void sub_10009FFB8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "availabilityMonitor"];
  *buf = 136315906;
  v2 = "[FTEngagementURLProvider initWithAvailabilityMonitor:]";
  v3 = 2080;
  v4 = "FTEngagementURLProvider.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A0098()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "engagementDescriptor"];
  *buf = 136315906;
  v2 = "[FTEngagementURLProvider URLForEngagement:event:trackableWidgetState:prefetchAssetsByRemoteURL:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "FTEngagementURLProvider.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A018C(uint64_t a1, id *a2)
{
  v3 = [*(a1 + 40) identifier];
  v4 = [*a2 downloadError];
  sub_1000124FC();
  sub_100012514(&_mh_execute_header, v5, v6, "failed to download JSON for banner %{public}@ with error %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A0234(uint64_t a1, id *a2)
{
  v3 = [*(a1 + 40) identifier];
  v4 = [*a2 downloadError];
  sub_1000124FC();
  sub_100012514(&_mh_execute_header, v5, v6, "failed to download JSON for headline %{public}@ with error %{public}@", v7, v8, v9, v10, v11);
}

void sub_1000A02F0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "todaySourceIdentifier"];
  *buf = 136315906;
  v2 = "[FTWidgetUpdateEventTracker trackUpdateWithTodaySource:appConfigTreatmentID:error:updateFetchDuration:wifiReachable:cellularRadioAccessTechnology:]";
  v3 = 2080;
  v4 = "FTWidgetUpdateEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A03D0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "updateFetchDuration >= 0"];
  *buf = 136315906;
  v2 = "[FTWidgetUpdateEventTracker trackUpdateWithTodaySource:appConfigTreatmentID:error:updateFetchDuration:wifiReachable:cellularRadioAccessTechnology:]";
  v3 = 2080;
  v4 = "FTWidgetUpdateEventTracker.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A04B0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "widgetEventTracker", v6, 2u);
}

void sub_1000A0574()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "predicate", v6, 2u);
}

void sub_1000A0638()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000A06FC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000A07C0()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000A0884()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "fetchInfo", v6, 2u);
}

void sub_1000A0948()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "sourceIdentifier"];
  *buf = 136315906;
  v2 = "[NSURL(FTReferralAdditions) ft_referralURLWithSourceIdentifier:appConfigTreatmentID:widgetEngagement:otherQueryItems:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "NSURL+FTReferralAdditions.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A0A28()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "otherQueryItems"];
  *buf = 136315906;
  v2 = "[NSURL(FTReferralAdditions) ft_referralURLWithSourceIdentifier:appConfigTreatmentID:widgetEngagement:otherQueryItems:sharedDirectoryFileURL:]";
  v3 = 2080;
  v4 = "NSURL+FTReferralAdditions.m";
  v5 = 1024;
  sub_100009DDC();
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A0B08()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000A0BCC()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "headline", v6, 2u);
}

void sub_1000A0C90()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "section", v6, 2u);
}

void sub_1000A0D54()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "trackableWidgetState", v6, 2u);
}

void sub_1000A0E18()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s", "trackableWidgetState"];
  *buf = 136315906;
  v2 = "[FTProactiveWidgetEventTracker widgetDidAppearAtDate:withTrackableWidgetState:]";
  v3 = 2080;
  v4 = "FTProactiveWidgetEventTracker.m";
  v5 = 1024;
  v6 = 59;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
}

void sub_1000A0F04()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "todayEventTracker", v6, 2u);
}

void sub_1000A0FC8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "documentsDirectoryFileURL", v6, 2u);
}

void sub_1000A108C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlines", v6, 2u);
}

void sub_1000A1150()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlinesAppearanceDate", v6, 2u);
}

void sub_1000A1214()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "date", v6, 2u);
}

void sub_1000A12D8()
{
  v0 = [[NSString alloc] initWithFormat:@"Invalid parameter not satisfying %s"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "visibleHeadlines", v6, 2u);
}

void sub_1000A139C()
{
  v0 = [[NSString alloc] initWithFormat:@"invalid nil value for '%s'"];
  sub_100009E00();
  sub_100009DF0();
  sub_100009DDC();
  sub_100009E10(&_mh_execute_header, &_os_log_default, v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, "contentContext", v6, 2u);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}