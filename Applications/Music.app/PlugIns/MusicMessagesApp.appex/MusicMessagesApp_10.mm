uint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_1004DF0DC();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000FF49C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsEvent.Page(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF500(uint64_t a1, uint64_t a2)
{
  v4 = sub_100004CB8(&qword_100634B30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_1004DF0DC();

  if (v0 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v0;
  }
}

double sub_1000FF68C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 domainLookupStartTime];
  v70 = v4;
  [a1 domainLookupEndTime];
  v6 = v5;
  [a1 connectionStartTime];
  v8 = v7;
  [a1 secureConnectionStartTime];
  v10 = v9;
  [a1 connectionEndTime];
  v12 = v11;
  [a1 requestStartTime];
  v14 = v13;
  [a1 responseStartTime];
  v16 = v15;
  [a1 responseEndTime];
  v18 = v17;
  [a1 fetchStartTime];
  v20 = v19;
  v69 = [a1 redirectCount];
  v21 = [a1 requestUrl];
  if (v21)
  {
    v22 = v21;
    v23 = sub_1004DD43C();
    v67 = v24;
    v68 = v23;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 cachedResponse];
  v65 = [a1 connectionReused];
  v25 = [a1 appleTimingApp];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1004DD43C();
    v63 = v28;
    v64 = v27;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v29 = [a1 connectionType];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1004DD43C();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = [a1 edgeNodeCacheStatus];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1004DD43C();
    v59 = v36;
    v60 = v35;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v37 = [a1 environmentDataCenter];
  if (v37)
  {
    v38 = v37;
    v39 = sub_1004DD43C();
    v55 = v40;
    v57 = v39;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v41 = [a1 responseDate];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1004DD43C();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [a1 statusCode];
  v47 = [a1 requestMessageSize];
  v48 = [a1 responseMessageSize];
  v49 = [a1 resolvedIPAddress];
  if (v49)
  {
    v50 = v49;
    v51 = sub_1004DD43C();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  result = v70;
  *a2 = v70;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  *(a2 + 144) = v69;
  *(a2 + 152) = 0;
  *(a2 + 160) = v68;
  *(a2 + 168) = v67;
  *(a2 + 176) = v66;
  *(a2 + 177) = v65;
  *(a2 + 184) = v64;
  *(a2 + 192) = v63;
  *(a2 + 200) = v62;
  *(a2 + 208) = v61;
  *(a2 + 216) = v60;
  *(a2 + 224) = v59;
  *(a2 + 232) = v58;
  *(a2 + 240) = v56;
  *(a2 + 248) = v43;
  *(a2 + 256) = v45;
  *(a2 + 264) = v46;
  *(a2 + 272) = v47;
  *(a2 + 280) = v48;
  *(a2 + 288) = v51;
  *(a2 + 296) = v53;
  return result;
}

uint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1005D1E90;
  v6._object = a2;
  v4 = sub_1004DEE2C(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1000FFB0C()
{

  return swift_deallocObject();
}

uint64_t sub_1000FFB84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_1000FFC7C(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_1000374EC(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(uint64_t a1)
{
  v2 = sub_1004D81AC();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1004D826C();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = sub_1004DD3FC();
  [v5 setDialogId:v6];

  v7 = sub_1004DD3FC();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    sub_100004CB8(&unk_10063D0B0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_100511DA0;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_10005E644(inited);
    swift_setDeallocating();
    sub_10001074C(inited + 32, &qword_100635958);
    isa = sub_1004DD1FC().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = sub_1004DD3FC();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = sub_100004CB8(&unk_10063D0B0);
  v14 = swift_initStackObject();
  v56 = xmmword_100511DA0;
  *(v14 + 16) = xmmword_100511DA0;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_10005E644(v14);
  swift_setDeallocating();
  sub_10001074C(v14 + 32, &qword_100635958);
  v17 = sub_1004DD1FC().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = sub_100004CB8(&unk_1006372E0);
  *(v18 + 48) = v19;

  sub_10005E644(v18);
  swift_setDeallocating();
  sub_10001074C(v18 + 32, &qword_100635958);
  v20 = sub_1004DD1FC().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = sub_1004DD3FC();
  [v5 setResult:v21];

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(a1 + 80);
    v24 = swift_initStackObject();
    *(v24 + 32) = 0x497463656A627573;
    *(v24 + 16) = v56;
    *(v24 + 72) = &type metadata for String;
    *(v24 + 40) = 0xE900000000000044;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;

    sub_10005E644(v24);
    swift_setDeallocating();
    sub_10001074C(v24 + 32, &qword_100635958);
    v25 = sub_1004DD1FC().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = sub_1004DD3FC();
  [v5 setTargetId:v28];

  sub_100004CB8(&qword_100636C00);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  sub_100004CB8(&unk_100639EA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_100511A40;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  sub_1004D823C();
  v33 = v51;
  sub_1004D7A7C();
  sub_100101B50();
  v34 = v54;
  sub_1004D824C();
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
  v35 = v58;
  *(v31 + 48) = v57;
  *(v31 + 56) = v35;
  *(v31 + 64) = 0x79546E6F69746361;
  *(v31 + 72) = 0xEA00000000006570;
  v36 = 27503;
  if (*(a1 + 112))
  {
    v36 = 0x6C436C65636E6163;
  }

  v37 = 0xE200000000000000;
  if (*(a1 + 112))
  {
    v37 = 0xED000064656B6369;
  }

  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 96) = 0x6449746567726174;
  *(v31 + 104) = 0xE800000000000000;
  *(v31 + 112) = v27;
  *(v31 + 120) = v26;
  v38 = sub_10005E51C(v31);
  swift_setDeallocating();
  sub_100004CB8(&qword_100636BF0);
  swift_arrayDestroy();
  *(v30 + 56) = sub_100004CB8(&qword_100636C10);
  *(v30 + 32) = v38;
  v39 = sub_1004DD85C().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_100101BA8;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_100012680;
  v60 = &unk_1005DCCF0;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_100100688()
{

  return swift_deallocObject();
}

unint64_t sub_100100718()
{
  result = qword_100636C28;
  if (!qword_100636C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C28);
  }

  return result;
}

unint64_t sub_100100770()
{
  result = qword_100636C30;
  if (!qword_100636C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C30);
  }

  return result;
}

unint64_t sub_1001007C8()
{
  result = qword_100636C38;
  if (!qword_100636C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C38);
  }

  return result;
}

unint64_t sub_100100820()
{
  result = qword_100636C40;
  if (!qword_100636C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C40);
  }

  return result;
}

unint64_t sub_100100878()
{
  result = qword_100636C48;
  if (!qword_100636C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C48);
  }

  return result;
}

unint64_t sub_1001008D0()
{
  result = qword_100636C50;
  if (!qword_100636C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C50);
  }

  return result;
}

unint64_t sub_100100928()
{
  result = qword_100636C58;
  if (!qword_100636C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636C58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.TargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.TargetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100100AF0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100634B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100100BC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100634B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100C70()
{
  sub_100100D98();
  if (v0 <= 0x3F)
  {
    sub_10004BEF8(319, &qword_100636CD0, &qword_100636C10);
    if (v1 <= 0x3F)
    {
      sub_10004BEAC(319, &qword_10063C230);
      if (v2 <= 0x3F)
      {
        sub_10004BEAC(319, &qword_100636CD8);
        if (v3 <= 0x3F)
        {
          sub_10004BEAC(319, &unk_100636CE0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100100D98()
{
  if (!qword_100636CC8)
  {
    sub_1004D809C();
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100636CC8);
    }
  }
}

uint64_t sub_100100E14(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100634B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100100EE4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100634B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100100F94()
{
  sub_100100D98();
  if (v0 <= 0x3F)
  {
    sub_10004BEF8(319, &qword_100635300, &qword_100635308);
    if (v1 <= 0x3F)
    {
      sub_10004BEAC(319, &qword_1006352F0);
      if (v2 <= 0x3F)
      {
        sub_10004BEAC(319, &unk_100636D90);
        if (v3 <= 0x3F)
        {
          sub_10004BEF8(319, &qword_100635310, &qword_100635318);
          if (v4 <= 0x3F)
          {
            sub_10004BEAC(319, &qword_10063C230);
            if (v5 <= 0x3F)
            {
              sub_10004BEF8(319, &qword_100636CD0, &qword_100636C10);
              if (v6 <= 0x3F)
              {
                sub_10004BEAC(319, &qword_100636CD8);
                if (v7 <= 0x3F)
                {
                  sub_10004BEAC(319, &unk_100636CE0);
                  if (v8 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1001012F8(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100101310(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100101368(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

void *sub_1001013B8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1001013E8(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100101400(uint64_t a1)
{
  if ((*(a1 + 25) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 25) & 7;
  }
}

__n128 sub_10010141C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_100101430(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100101478(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001014C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

__n128 sub_1001014F0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100101504(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_100101554(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1001015AC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1001015E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_100101640(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

__n128 sub_1001016F4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100101720(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_100101768(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1001017F8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10010181C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100101864(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001018D8()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_10010194C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_10010198C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100035B28;

  return sub_1000FDDEC(a1, v4, v5, v6);
}

uint64_t sub_100101A40()
{

  return swift_deallocObject();
}

uint64_t sub_100101A80()
{

  return swift_deallocObject();
}

unint64_t sub_100101B50()
{
  result = qword_100636E70;
  if (!qword_100636E70)
  {
    sub_1004D81AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636E70);
  }

  return result;
}

uint64_t sub_100101CB8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties();
  v17 = v16[6];
  v18 = sub_1004D809C();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_1000FF500(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t type metadata accessor for MetricsPageProperties()
{
  result = qword_100636ED8;
  if (!qword_100636ED8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100101EA0(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = sub_100101EA0(v3);

    v5 = 0;
LABEL_8:
    v26 = v4;
LABEL_9:
    sub_10000DE74(v5);
    return v4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v4 = 0;
    v5 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v26 = 2;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = &v26;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_10010820C;
    *(v11 + 24) = v10;
    v24 = sub_100107FC0;
    v25 = v11;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1000121E8;
    v23 = &unk_1005DD528;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v9 performWithoutEnforcement:v12];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v5 = sub_10010820C;
      v4 = v26;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v5 = 0;
        v4 = 17;
        goto LABEL_8;
      }

      v3 = v15;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_1004DEAAC(45);

  aBlock = 0xD00000000000002BLL;
  v21 = 0x80000001004EC6F0;
  v16 = sub_10028C638(&off_1005D0E48);
  v17 = MPModelObject.humanDescription(including:)(v16);
  v19 = v18;

  v27._countAndFlagsBits = v17;
  v27._object = v19;
  sub_1004DD5FC(v27);

  result = sub_1004DECCC();
  __break(1u);
  return result;
}

unint64_t MetricsContentType.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x4173746964657263;
      break;
    case 10:
      result = 0x726F7461727563;
      break;
    case 11:
      result = 0x65726E6567;
      break;
    case 12:
      result = 0x6174536F69646172;
      break;
    case 13:
      result = 0x686372616573;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F736165537674;
      break;
    case 18:
      result = 0x497972617262696CLL;
      break;
    case 19:
      result = 0x614C64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10010268C()
{
  swift_getObjectType();
  result = 1;
  if (![v0 cachedResponse] || (v1 = swift_getObjCClassFromMetadata(), objc_msgSend(v0, "xpSamplingPercentageCachedResponses"), (objc_msgSend(v1, "shouldReportCachedEventWithSamplingPercentage:") & 1) == 0))
  {
    if ([v0 cachedResponse])
    {
      return 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v0 xpSessionDuration];
    v4 = v3;
    [v0 xpSamplingPercentageUsers];
    if (([ObjCClassFromMetadata shouldCollectTimingDataWithSessionDuration:v4 samplingPercentage:v5] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

id Gliss.Coordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t sub_10010280C()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001074C(v7, &qword_100638E60);
    return 0;
  }
}

uint64_t SharePlayTogetherSession.Participant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MetricsPageProperties.pageURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsPageProperties() + 24);

  return sub_1000FF500(a1, v3);
}

uint64_t MetricsPageProperties.pageDetails.getter()
{
  type metadata accessor for MetricsPageProperties();
}

uint64_t MetricsPageProperties.pageDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPageProperties() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPageProperties.extRefUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsPageProperties() + 32));

  return v1;
}

uint64_t MetricsPageProperties.extRefUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsPageProperties() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_100102B9C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MetricsContentType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MetricsContentType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Int sub_100102C24()
{
  v1 = *v0;
  sub_1004DF26C();
  MetricsContentType.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_100102C88()
{
  MetricsContentType.rawValue.getter(*v0);
  sub_1004DD55C();
}

Swift::Int sub_100102CDC()
{
  v1 = *v0;
  sub_1004DF26C();
  MetricsContentType.rawValue.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_100102D3C@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_100102D6C@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_100102D98()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_10001074C(v14, &qword_100638E60);
    return 0;
  }

  sub_100004CB8(&qword_100636F78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = v13 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_10000904C(v4, v14);
      sub_100004CB8(&qword_100636C18);
      if (swift_dynamicCast())
      {
        v6 = v15;
        sub_1004DEA4C();
        if (*(v6 + 16) && (v7 = sub_100028F3C(v14), (v8 & 1) != 0))
        {
          sub_10000904C(*(v6 + 56) + 32 * v7, &v15);
          sub_1000105EC(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10003A134(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_10003A134((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_1000105EC(v14);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  sub_1004DD20C();

  return 0;
}

uint64_t sub_1001030FC(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1004DD21C();

      v7 = sub_1002BC2D4(v6);

      if (v7)
      {
        isa = sub_1004DD1FC().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_100634430 != -1)
  {
    swift_once();
  }

  v9 = sub_1004DD3FC();
  v10 = sub_1004DD3FC();
  [v2 setProperty:v9 forBodyKey:v10];

  if (qword_100634440 != -1)
  {
    swift_once();
  }

  v11 = sub_1004DD3FC();
  v12 = sub_1004DD3FC();
  [v2 setProperty:v11 forBodyKey:v12];

  if (qword_100634438 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v13 = sub_1004DD3FC();
  v14 = sub_1004DD3FC();
  [v2 setProperty:v13 forBodyKey:v14];

LABEL_16:
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 systemVersion];

  if (!v16)
  {
    sub_1004DD43C();
    v16 = sub_1004DD3FC();
  }

  v17 = sub_1004DD3FC();
  [v2 setProperty:v16 forBodyKey:v17];

  return a2();
}

uint64_t sub_10010343C(void *a1, uint64_t (*a2)(void))
{
  v5 = sub_1004DD3FC();
  v6 = sub_1004DD3FC();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_1004DD3FC();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v10 = sub_100008C70(&v19, *(&v20 + 1));
    v11 = *(*(&v18 + 1) - 8);
    __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_1004DF06C();
    (*(v11 + 8))(v13, v9);
    sub_100008D24(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = sub_1004DD3FC();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t sub_100103698(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = sub_1004DBEBC();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1004DBEFC();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1004DBECC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = sub_1004DE18C();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_100108094;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005DD3E8;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  sub_1004DBEDC();
  v27 = _swiftEmptyArrayStorage;
  sub_10010818C(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950);
  sub_1001080A0();
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void sub_100103A38(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_10005F490(&off_1005D2110);
  sub_100004CB8(&qword_100636F70);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_100102D98()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (*(v7 + 16))
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_100056C24(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(*(v7 + 56) + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin(v21);
        v28[2] = v34;

        if (sub_100101CB8(sub_100108104, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = sub_1004DD3FC();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v30(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_100103CC4(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (!v8)
  {
    return a3();
  }

  v9 = a2;
  v11 = a2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
  {
    v9 = sub_10003A9B4(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  sub_100154480(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001082F0;
  *(v14 + 24) = v13;
  v18[0] = sub_100108324;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t sub_100103E68(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_10010815C, v7);
}

uint64_t sub_100103F28(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = sub_1004DD3FC();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_1001040BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005DD078;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_100106288;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100022450;
  v9[3] = &unk_1005DCE30;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_100104378(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = sub_1004DBEBC();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1004DBEFC();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006F10(0, &qword_1006372C0);
  v12 = sub_1004DE14C();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_100108184;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100012680;
  aBlock[3] = &unk_1005DD460;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_1004DBEDC();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10010818C(&qword_10063AC90, &type metadata accessor for DispatchWorkItemFlags);
  sub_100004CB8(&unk_100638950);
  sub_1001080A0();
  sub_1004DE92C();
  sub_1004DE15C();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_100104658(void *a1)
{
  if (qword_100633B50 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    sub_1000FF68C(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_1000FFADC(&v4);
  }
}

uint64_t sub_100104710()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100006F10(0, &qword_100636E68);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001074C(v7, &qword_100638E60);
    return 0;
  }
}

uint64_t sub_100104818()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x80000001004EC4C0;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001074C(&v2, &qword_100638E60);
  }

  return 0;
}

uint64_t sub_1001048F4()
{
  v1[0] = 0xD00000000000001CLL;
  v1[1] = 0x80000001004EC430;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001074C(&v2, &qword_100638E60);
  }

  return 0;
}

uint64_t sub_10010499C@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD00000000000001CLL;
  v6[1] = 0x80000001004EC6D0;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_1004D826C();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10001074C(&v7, &qword_100638E60);
    v5 = sub_1004D826C();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_100104AB8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100636E60);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_1000108DC(a1, v9 - v3, &qword_100636E60);
  v5 = sub_1004D826C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001074C(v4, &qword_100636E60);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v7 = sub_1000357EC(&v10);
    (*(v6 + 32))(v7, v4, v5);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x80000001004EC6D0;
  sub_100030C58();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_10001074C(a1, &qword_100636E60);
}

uint64_t sub_100104C4C()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100006F10(0, &qword_100636E68);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001074C(v7, &qword_100638E60);
    return 0;
  }
}

id sub_100104F90()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100105004()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x80000001004EC680;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_10001074C(&v2, &qword_100638E60);
  }

  return 0;
}

uint64_t sub_1001050AC@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD000000000000026;
  v6[1] = 0x80000001004EC6A0;
  sub_100030C58();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_1004D826C();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_10001074C(&v7, &qword_100638E60);
    v5 = sub_1004D826C();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_1001051C8(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_100636E60);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_1000108DC(a1, v9 - v3, &qword_100636E60);
  v5 = sub_1004D826C();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_10001074C(v4, &qword_100636E60);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    v7 = sub_1000357EC(&v10);
    (*(v6 + 32))(v7, v4, v5);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x80000001004EC6A0;
  sub_100030C58();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_10001074C(a1, &qword_100636E60);
}

void sub_100105390(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  isa = sub_1004DD1FC().super.isa;

  v3 = [v1 initWithBodyDictionary:isa];

  return v3;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)()
{
  ObjectType = swift_getObjectType();
  isa = sub_1004DD1FC().super.isa;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "initWithBodyDictionary:", isa);

  return v3;
}

uint64_t sub_10010568C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_100056B84(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1004DF08C();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100105830(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C() & 1;
  }
}

uint64_t _s9MusicCore21MetricsPagePropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1004D809C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = sub_100004CB8(&qword_100636F80);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1004DF08C() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_1004DF08C() & 1) == 0)
  {
    return 0;
  }

  v32 = v7;
  v33 = type metadata accessor for MetricsPageProperties();
  v14 = *(v33 + 24);
  v15 = *(v11 + 48);
  sub_1000108DC(a1 + v14, v13, &qword_100634B30);
  sub_1000108DC(a2 + v14, &v13[v15], &qword_100634B30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1000108DC(v13, v10, &qword_100634B30);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = &v13[v15];
      v19 = v32;
      (*(v5 + 32))(v32, v18, v4);
      sub_10010818C(qword_100636F88, &type metadata accessor for URL);
      v20 = sub_1004DD35C();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_10001074C(v13, &qword_100634B30);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_10001074C(v13, &qword_100636F80);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_10001074C(v13, &qword_100634B30);
LABEL_16:
  v22 = v33;
  v23 = *(v33 + 28);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = sub_10010568C(v24, v25);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = *(v22 + 32);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31 && (*v28 == *v30 && v29 == v31 || (sub_1004DF08C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

void sub_100105CA4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_100105004();

  v14 = sub_1004DF11C();
  v15 = sub_1004DD3FC();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = sub_1004DF11C();
  v17 = sub_1004DD3FC();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v40 = 0u;
LABEL_14:
    sub_10001074C(&aBlock, &qword_100638E60);
    goto LABEL_15;
  }

  v18 = sub_1004DD3FC();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  sub_100004CB8(&unk_100639F70);
  if (swift_dynamicCast())
  {
    v20 = *(v36 + 16);
    if (v20)
    {
      v21 = sub_100056B84(0xD000000000000021, 0x80000001004EC630);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v34 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      sub_10000904C(*(v36 + 56) + 32 * v21, &aBlock);
      sub_100006F10(0, &qword_100636E68);
      v23 = swift_dynamicCast();
      v20 = v36;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v34 = v20;
    if (v13)
    {
LABEL_13:
      sub_100006F10(0, &qword_100636E68);
      v24.super.super.isa = sub_1004DE5CC(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v26 = v24.super.super.isa;
    v27 = sub_1004DD3FC();
    [a2 setProperty:v26 forBodyKey:v27];

    if (*(v36 + 16) && (v28 = sub_100056B84(0xD000000000000019, 0x80000001004EC660), (v29 & 1) != 0))
    {
      sub_10000904C(*(v36 + 56) + 32 * v28, &aBlock);

      sub_100006F10(0, &qword_100636E68);
      if (swift_dynamicCast())
      {
        v30 = v36;
LABEL_27:
        v31 = v30;
        v32 = sub_1004DD3FC();
        [a2 setProperty:v31 forBodyKey:v32];

        v41 = a5;
        v42 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_100012680;
        *(&v40 + 1) = &unk_1005DD4B0;
        v33 = _Block_copy(&aBlock);

        v35.receiver = a3;
        v35.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
        objc_msgSendSuper2(&v35, "setStandardPropertiesWith:completionHandler:", a4, v33);
        _Block_release(v33);

        return;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v41 = a5;
  v42 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_100012680;
  *(&v40 + 1) = &unk_1005DD488;
  v25 = _Block_copy(&aBlock);

  v38.receiver = a3;
  v38.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
  objc_msgSendSuper2(&v38, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

uint64_t _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_1004DF0DC();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_100106250()
{

  return swift_deallocObject();
}

uint64_t sub_100106290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1001062AC()
{
  result = qword_100636E78;
  if (!qword_100636E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100636E78);
  }

  return result;
}

uint64_t sub_100106314(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100004CB8(&qword_100634B30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1001063E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100004CB8(&qword_100634B30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100106494()
{
  sub_100100D98();
  if (v0 <= 0x3F)
  {
    sub_100106540();
    if (v1 <= 0x3F)
    {
      sub_1001065A4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100106540()
{
  if (!qword_100636CD0)
  {
    sub_100008DE4(&qword_100636C10);
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_100636CD0);
    }
  }
}

void sub_1001065A4()
{
  if (!qword_10063C230)
  {
    v0 = sub_1004DE7CC();
    if (!v1)
    {
      atomic_store(v0, &qword_10063C230);
    }
  }
}

uint64_t getEnumTagSinglePayload for MetricsContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_100106794(void (*a1)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() defaultIdentityStore];
  v4 = [objc_opt_self() activeAccount];
  v18[0] = 0;
  v5 = [v3 DSIDForUserIdentity:v4 outError:v18];

  if (v5)
  {
    v6 = v18[0];
    [v1 setAccountIdentifier:v5];
    v7 = [v5 longLongValue] != 0;
  }

  else
  {
    v8 = v18[0];
    sub_1004D7F4C();

    swift_willThrow();

    [v1 setAccountIdentifier:0];
    v7 = 1;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithBool:v7];
  v10 = sub_1004DD3FC();
  [v1 setProperty:v9 forBodyKey:v10];

  v11 = [objc_opt_self() sharedController];
  v12 = [v11 musicSubscriptionStatus];

  if (v12)
  {
    v13 = [v12 statusType];
    if (v13 > 1)
    {
      if (v13 != 2)
      {
        goto LABEL_13;
      }

      [v12 reasonType];
    }

    else if (v13)
    {
      if (v13 != 1)
      {
        do
        {
          v18[0] = 0;
          v18[1] = 0xE000000000000000;
          sub_1004DEAAC(24);
          a1 = 0xD000000000000013;
          v19._object = 0x80000001004EC5D0;
          v19._countAndFlagsBits = 0xD000000000000013;
          sub_1004DD5FC(v19);
          [v12 statusType];
          v20._countAndFlagsBits = 0xD00000000000001DLL;
          v20._object = 0x80000001004EC5F0;
          sub_1004DD5FC(v20);
          v21._countAndFlagsBits = 32;
          v21._object = 0xE100000000000000;
          sub_1004DD5FC(v21);
          [v12 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          sub_1004DEC6C();
          v13 = sub_1004DECCC();
          __break(1u);
LABEL_13:
          ;
        }

        while (v13 != 3);
      }
    }

    else
    {
    }
  }

  v14 = sub_1004DD3FC();

  v15 = sub_1004DD3FC();
  [v1 setProperty:v14 forBodyKey:v15];

  a1(v16, v17);
}

uint64_t sub_100106BB8(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = sub_1004DD21C();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = sub_100056B84(0xD000000000000012, 0x80000001004EC580);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_10000904C(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = sub_1004DD3FC();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = sub_100056B84(0xD00000000000001ALL, 0x80000001004EC560), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_10000904C(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = sub_1004DD3FC();

LABEL_19:
  v15 = sub_1004DD3FC();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void sub_100106E4C(void (*a1)(void))
{
  v3 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v3)
  {
    sub_1004DD43C();
    v3 = sub_1004DD3FC();
  }

  [v1 setConnection:v3];

  v4 = objc_allocWithZone(ICStoreRequestContext);
  v8[4] = CFRange.init(_:);
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_10001E3C4;
  v8[3] = &unk_1005DD398;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithBlock:v5];
  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 userAgent];
    if (!v7)
    {
      sub_1004DD43C();
      v7 = sub_1004DD3FC();
    }

    [v1 setUserAgent:v7];

    a1();
  }
}

uint64_t sub_100107004(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = sub_10003A9B4(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    sub_100154480(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = sub_1001082F8;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_100107FBC;
    *(v13 + 24) = v12;
    v17[0] = sub_100107FC0;
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }
}

uint64_t sub_1001071CC(void *a1, void *a2, void (**a3)(void))
{
  sub_100004CB8(&qword_100634F98);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_100511B20;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_100107E48;
  *(v8 + 24) = v7;
  *(v6 + 32) = sub_100107E6C;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_100107E74;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_100108320;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_100107E98;
  *(v12 + 24) = v11;
  *(v6 + 64) = sub_100108320;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_100107EC4;
  *(v14 + 24) = v13;
  *(v6 + 80) = sub_100108320;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_100107F28;
  *(v16 + 24) = v15;
  *(v6 + 96) = sub_100108320;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_100107F4C;
  *(v18 + 24) = v17;
  *(v6 + 112) = sub_100108320;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_100107F54;
  *(v20 + 24) = v19;
  *(v6 + 128) = sub_100108320;
  *(v6 + 136) = v20;
  sub_100107004(a1, v6, a2, a3);
}

uint64_t sub_1001074E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = sub_1004DD3FC();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = sub_1004DD3FC();
  [v3 setProperty:v8 forBodyKey:v9];

  sub_100006F10(0, &qword_1006372C0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_10001185C, v10);
}

void sub_100107644(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_100104818();

  [a2 setXPSamplingForced:v13 & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    sub_10001074C(&aBlock, &qword_100638E60);
    goto LABEL_21;
  }

  v14 = sub_1004DD3FC();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  sub_100004CB8(&unk_100639F70);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = sub_100056B84(0xD000000000000017, 0x80000001004EC470);
      if (v17)
      {
        sub_10000904C(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = sub_100056B84(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        sub_10000904C(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = sub_100056B84(0xD000000000000021, 0x80000001004EC490), (v21 & 1) != 0))
    {
      sub_10000904C(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_100012680;
  *(&v27 + 1) = &unk_1005DCFD8;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void sub_1001079F4(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_1001048F4();

  isa = sub_1004DD9AC().super.super.isa;
  v15 = sub_1004DD3FC();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v35 = 0u;
LABEL_10:
    sub_10001074C(&aBlock, &qword_100638E60);
    goto LABEL_25;
  }

  v16 = sub_1004DD3FC();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    sub_1004DE8DC();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v35 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

  sub_100004CB8(&unk_100639F70);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v35 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v31 + 16))
  {
    v18 = sub_100056B84(0xD000000000000026, 0x80000001004EC3C0);
    if (v19)
    {
      sub_10000904C(*(v31 + 56) + 32 * v18, &aBlock);
LABEL_14:
      sub_100006F10(0, &qword_100636E68);
      v20 = swift_dynamicCast();
      v21 = v31;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v35 = 0u;
  sub_10001074C(&aBlock, &qword_100638E60);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = sub_1004DD3FC();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v31 + 16) && (v24 = sub_100056B84(0xD00000000000001ELL, 0x80000001004EC3F0), (v25 & 1) != 0))
  {
    sub_10000904C(*(v31 + 56) + 32 * v24, &aBlock);

    sub_100006F10(0, &qword_100636E68);
    v26 = swift_dynamicCast();
    v27 = v31;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = sub_1004DD3FC();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v36 = a5;
  v37 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_100012680;
  *(&v35 + 1) = &unk_1005DCF88;
  v30 = _Block_copy(&aBlock);

  v33.receiver = a3;
  v33.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  objc_msgSendSuper2(&v33, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_100107EF0()
{

  return swift_deallocObject();
}

uint64_t sub_100107F80()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_100107FC8()
{

  return swift_deallocObject();
}

uint64_t sub_10010804C()
{

  return swift_deallocObject();
}

unint64_t sub_1001080A0()
{
  result = qword_10063ACA0;
  if (!qword_10063ACA0)
  {
    sub_100008DE4(&unk_100638950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10063ACA0);
  }

  return result;
}

uint64_t sub_100108104(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1004DF08C() & 1;
  }
}

uint64_t sub_10010818C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1001081D4()
{

  return swift_deallocObject();
}

id sub_10010820C()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == 5 || result == 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v51 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v41[-v10];
  v50 = v12;
  __chkstk_darwin(v9);
  v14 = &v41[-v13];
  if (qword_100633B58 != -1)
  {
    swift_once();
  }

  v15 = sub_1004D966C();
  sub_100035430(v15, qword_100671B78);
  v16 = *(v6 + 16);
  v16(v14, a1, a2);
  v48 = v16;
  v49 = a1;
  v16(v11, a1, a2);
  v17 = sub_1004D964C();
  v18 = sub_1004DDF9C();
  v47 = v17;
  v19 = (a3 + 8);
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v46 = v20;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v20 = 136315395;
    v45 = *(a3 + 8);
    v43 = v19 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v21 = v45(a2, a3);
    v23 = v22;
    v42 = v18;
    v24 = *(v6 + 8);
    v24(v14, a2);
    v25 = sub_1000343A8(v21, v23, aBlock);

    v26 = v46;
    *(v46 + 1) = v25;
    *(v26 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v24(v11, a2);
    sub_100108ACC();
    v27 = sub_1004DD22C();
    v29 = v28;

    v30 = sub_1000343A8(v27, v29, aBlock);

    v31 = v46;
    *(v46 + 14) = v30;
    v32 = v47;
    _os_log_impl(&_mh_execute_header, v47, v42, "Send analytics event: %s, payload: %{private}s", v31, 0x16u);
    swift_arrayDestroy();

    v33 = v45;
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v11, a2);

    v34(v14, a2);
    v33 = *v19;
  }

  v35 = v49;
  v33(a2, a3);
  v36 = v51;
  v48(v51, v35, a2);
  v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  (*(v6 + 32))(v38 + v37, v36, a2);
  v39 = sub_1004DD3FC();

  aBlock[4] = sub_100108A4C;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001088C8;
  aBlock[3] = &unk_1005DD578;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_1004DD3FC();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_1001088C8;
  v8[3] = &unk_1005DD5A0;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

Class sub_1001088C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_100108ACC();
    v4.super.isa = sub_1004DD1FC().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_100108954()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100671B78);
  sub_100035430(v0, qword_100671B78);
  return sub_1004D965C();
}

uint64_t sub_1001089CC()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_100108AB4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100108ACC()
{
  result = qword_1006381E0;
  if (!qword_1006381E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006381E0);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1004DE7CC();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_1004DE7CC();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_100108EE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  sub_100109084(a1, v1 + *(*v1 + 160));
  return v1;
}

uint64_t sub_100109084(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  result = *(v3 + 16);
  if (result)
  {
    [result responseEndTime];
    v11 = v10;
    result = swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      return sub_1001091B0(a2, a3);
    }
  }

  return result;
}

uint64_t sub_1001091B0(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 168);
  if ((*(v2 + v3) & 1) == 0)
  {
    v5 = result;
    *(v2 + v3) = 1;
    sub_1000C10F4();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_100109C70, v6);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    sub_1004D825C();
    sub_1004D821C();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    sub_1004D825C();
    sub_1004D821C();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    sub_1004D825C();
    sub_1004D821C();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = sub_1004D826C();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    sub_1004D825C();
    sub_1004D821C();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = sub_1004D826C();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    sub_1004D825C();
    sub_1004D821C();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      sub_1001091B0(countAndFlagsBits, object);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_1004D826C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      sub_1004D825C();
      sub_1004D821C();
      v9 = v8;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v9;
      *(v1 + 96) = 0;
    }
  }

  sub_1001091B0(countAndFlagsBits, object);
}

void sub_10010993C(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_100633B50 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = sub_1004DE7CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100109A6C(v0 + *(*v0 + 20));
  return v0;
}

uint64_t sub_100109A6C(uint64_t a1)
{
  v2 = type metadata accessor for MetricsPageProperties();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100109B20()
{
  result = sub_1004DE7CC();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100109C30()
{

  return swift_deallocObject();
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_100109E90(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_10010A00C()
{
  v1 = *v0;
  sub_1004DF26C();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10010A070()
{
  ApplicationCapabilities.Service.description.getter(*v0);
  sub_1004DD55C();
}

Swift::Int sub_10010A0C4()
{
  v1 = *v0;
  sub_1004DF26C();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10010A124@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_10010A154@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10010A180(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ApplicationCapabilities.Service.description.getter(*a1);
  v5 = v4;
  if (v3 == ApplicationCapabilities.Service.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1004DF08C();
  }

  return v8 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      sub_1004DD43C();
      v4 = sub_1004DD3FC();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

uint64_t ApplicationCapabilities.ratingWarning.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v5, "RatingWarning(");
  HIBYTE(v5[1]) = -18;
  *&v7 = 0x6C6F687365726874;
  *(&v7 + 1) = 0xEA00000000003D64;
  v8._countAndFlagsBits = sub_1004DEFFC();
  sub_1004DD5FC(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  sub_1004DD5FC(v9);
  v10._countAndFlagsBits = 0x6C6F687365726874;
  v10._object = 0xEA00000000003D64;
  sub_1004DD5FC(v10);

  v6._countAndFlagsBits = 0x3D656C746974;
  v6._object = 0xE600000000000000;
  v7 = *(v0 + 8);
  v4 = *(v0 + 8);
  sub_1000108DC(&v7, &v3, &unk_100639EB0);
  sub_100004CB8(&unk_100639EB0);
  v11._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  sub_1004DD5FC(v12);
  sub_1004DD5FC(v6);

  v4._countAndFlagsBits = 0x3D6567617373656DLL;
  v4._object = 0xE800000000000000;
  v6 = *(v0 + 24);
  v3 = *(v0 + 24);
  sub_1000108DC(&v6, &v2, &unk_100639EB0);
  v13._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  sub_1004DD5FC(v14);
  sub_1004DD5FC(v4);

  return v5[0];
}

uint64_t sub_10010A59C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_10010A6B0()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10010A788()
{
  sub_1004DD55C();
}

Swift::Int sub_10010A84C()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_10010A920@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10010A950(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_10010A9F8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_10009FB60(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter()
{
  v2._countAndFlagsBits = sub_1004DD88C();
  v2._object = v0;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  sub_1004DD5FC(v3);
  sub_1004DD5FC(v2);

  sub_1004DEAAC(19);

  sub_100004CB8(&qword_100637050);
  v4._countAndFlagsBits = sub_1004DD4DC();
  sub_1004DD5FC(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  sub_1004DD5FC(v5);
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x80000001004EC7C0;
  sub_1004DD5FC(v6);

  sub_1004DEAAC(21);

  v7._countAndFlagsBits = sub_1004DD88C();
  sub_1004DD5FC(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  sub_1004DD5FC(v8);
  v9._countAndFlagsBits = 0xD000000000000012;
  v9._object = 0x80000001004EC7E0;
  sub_1004DD5FC(v9);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_10010B048(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (sub_1000A3A3C(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_10010B2C8(a3, a6);
}

uint64_t sub_10010ACC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "orites";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Playlists";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Artists";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Albums";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Songs";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.MadeForYou";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.MusicVideos";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Genres";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Compilations";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Composers";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Shows";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "orites";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.RecentlyAdded";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Playlists";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Artists";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Albums";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Songs";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.MadeForYou";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.MusicVideos";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Genres";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Compilations";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Composers";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Shows";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Downloaded";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = sub_1004DF08C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010B048(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = *v4;
      v8 = 0x7473696C79616C70;
      if (v6 == 5)
      {
        v8 = 0x736F65646976;
        v9 = 0xE600000000000000;
      }

      else
      {
        v9 = 0xE900000000000073;
      }

      v10 = 0x686372616573;
      if (v6 == 3)
      {
        v10 = 0x6F69646172;
      }

      v11 = 0xE500000000000000;
      if (v6 != 3)
      {
        v11 = 0xE600000000000000;
      }

      if (*v3 <= 4u)
      {
        v8 = v10;
        v9 = v11;
      }

      v12 = 0xE900000000000077;
      v13 = 0x6F4E6E657473696CLL;
      if (v6 != 1)
      {
        v13 = 0x6573776F7262;
        v12 = 0xE600000000000000;
      }

      if (!*v3)
      {
        v13 = 0x7972617262696CLL;
        v12 = 0xE700000000000000;
      }

      if (*v3 <= 2u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v8;
      }

      if (*v3 <= 2u)
      {
        v15 = v12;
      }

      else
      {
        v15 = v9;
      }

      if (*v4 <= 2u)
      {
        if (*v4)
        {
          if (v7 == 1)
          {
            v16 = 0xE900000000000077;
            if (v14 != 0x6F4E6E657473696CLL)
            {
              goto LABEL_5;
            }
          }

          else
          {
            v16 = 0xE600000000000000;
            if (v14 != 0x6573776F7262)
            {
              goto LABEL_5;
            }
          }
        }

        else
        {
          v16 = 0xE700000000000000;
          if (v14 != 0x7972617262696CLL)
          {
            goto LABEL_5;
          }
        }
      }

      else if (*v4 > 4u)
      {
        if (v7 == 5)
        {
          v16 = 0xE600000000000000;
          if (v14 != 0x736F65646976)
          {
            goto LABEL_5;
          }
        }

        else
        {
          v16 = 0xE900000000000073;
          if (v14 != 0x7473696C79616C70)
          {
            goto LABEL_5;
          }
        }
      }

      else if (v7 == 3)
      {
        v16 = 0xE500000000000000;
        if (v14 != 0x6F69646172)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v16 = 0xE600000000000000;
        if (v14 != 0x686372616573)
        {
          goto LABEL_5;
        }
      }

      if (v15 != v16)
      {
LABEL_5:
        v5 = sub_1004DF08C();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010B2C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = sub_1004DF08C();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_10010B594(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_100006F10(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = sub_1004DEB2C();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = sub_1004DEB2C();
LABEL_26:
        v18 = v17;
        v19 = sub_1004DE5FC();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_1004DE5FC();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_1004DED5C();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_1004DED5C();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_10010B858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_100114CB4(v31, v32);
    v25 = sub_1004DD35C();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_10010BA50(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_10010B048(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (sub_1000A3A3C(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_10010B2C8(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_10010BB50()
{
  sub_100004CB8(&unk_10063D0B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005127E0;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000001004ECFD0;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x80000001004ECFF0;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x80000001004ED010;
  sub_10010C04C(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  sub_10011508C();
  *(inited + 240) = sub_1004DDC4C();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x80000001004ED030;
  *(inited + 288) = sub_1004DDC4C();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x80000001004ED050;
  v31 = *(v0 + 88);
  v30 = v31;
  sub_1000108DC(&v31, v29, &qword_1006372D8);
  sub_100004CB8(&qword_1006372D8);
  *(inited + 384) = sub_1004DD4DC();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x80000001004ED070;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = _swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = _swiftEmptyArrayStorage;
    sub_1000374EC(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        sub_1000374EC((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = sub_100004CB8(&unk_1006372E0);
  *(inited + 480) = v11;
  v27 = sub_10005E644(inited);
  swift_setDeallocating();
  sub_100004CB8(&qword_100635958);
  swift_arrayDestroy();
  return v27;
}

void sub_10010C04C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = sub_1004DEFFC();
    sub_1004DD5FC(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    sub_1004DD5FC(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL sub_10010C178(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_10010C1EC()
{
  type metadata accessor for ApplicationCapabilities.Controller();
  swift_allocObject();
  result = sub_10010C288();
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

uint64_t static ApplicationCapabilities.Controller.shared.getter()
{
  if (qword_100633B60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10010C288()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v2 = v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v3) = UnfairLock.init()();
  v4 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  sub_100004CB8(&qword_1006372B0);
  UnfairLock.locked<A>(_:)(sub_100115284);
  *(v0 + v4) = *&v41[0];
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = _swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v0 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider();
    swift_allocObject();
    v6 = sub_1002BCC0C(0x626154636973756DLL, 0xE900000000000073, sub_10010C710, 0);
    *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v6;

    UnfairLock.locked<A>(_:)(sub_100115284);
    v7 = *(v0 + 16);

    sub_1001139A8(*&v41[0], v6, v7, v41);
    v8 = (v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v9 = v44;
    v10 = v45;
    v8[4] = v44;
    v8[5] = v10;
    v11 = v46;
    v12 = v47;
    v8[6] = v46;
    v8[7] = v12;
    v13 = v41[0];
    v14 = v41[1];
    *v8 = v41[0];
    v8[1] = v14;
    v15 = v42;
    v16 = v43;
    v8[2] = v42;
    v8[3] = v16;
    v39 = v11;
    v40 = v12;
    v37 = v9;
    v38 = v10;
    v35 = v15;
    v36 = v16;
    v33 = v13;
    v34 = v14;
    swift_beginAccess();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    aBlock = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    sub_100114A70(&v33, &v24);
    sub_1004D9B2C();
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();

    sub_1002BCAB0(sub_100115024, v17);

    UnfairLock.locked<A>(_:)(sub_10011526C);
    sub_10010C8FC();
    sub_100006F10(0, &qword_1006372C0);
    v18 = sub_1004DE14C();
    v19 = sub_1004DD3FC();
    v20 = swift_allocObject();
    swift_weakInit();

    *&v27 = sub_10011502C;
    *(&v27 + 1) = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_10010D1B4;
    *(&v26 + 1) = &unk_1005DDBA0;
    v21 = _Block_copy(&aBlock);

    v22 = MSVLogAddStateHandler();

    _Block_release(v21);

    v23 = v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v23 = v22;
    *(v23 + 8) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10010C710()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_10010C760();

  return v1;
}

uint64_t sub_10010C760()
{
  LOBYTE(v1) = 1;
  sub_100114C60();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    sub_100004CB8(&qword_100637300);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10001074C(&v2, &qword_100638E60);
    return 0;
  }
}

uint64_t sub_10010C868()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(sub_10011526C);
  }

  return result;
}

uint64_t sub_10010C8FC()
{
  v1 = v0;
  type metadata accessor for Whitetail.Binding();
  v2 = ICUserIdentityStoreDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5.length = [v3 defaultIdentityStore];
  v5.location = v4;
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = CFRange.init(_:)(v5);
  v6 = swift_allocObject();
  v55 = v1;
  swift_weakInit();
  v60 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001150E0, v6);
  v7 = [objc_opt_self() sharedController];
  v8 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.location = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  v9.length = v7;
  v10 = CFRange.init(_:)(v9);
  v62 = &type metadata for NotificationTrigger;
  v63 = &protocol witness table for NotificationTrigger;
  v61 = v10;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v8;
  v58 = v7;
  v59 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001150E8, v11);
  v56 = [objc_opt_self() standardUserDefaults];
  sub_100004CB8(&unk_1006372F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100512790;
  v14 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.location = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v15.length = v56;
  v16 = CFRange.init(_:)(v15);
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v16;
  v17 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v18 = CFRange.init(_:)(MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v18;
  v19 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v20 = CFRange.init(_:)(RadioAvailabilityControllerRadioAvailableDidChangeNotification);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v20;
  v21 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v22 = CFRange.init(_:)(MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v22;
  v23 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  v24 = CFRange.init(_:)(MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v24;
  v25 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v26 = v14;
  v57 = v56;
  v27 = v17;
  v28 = v19;
  v29 = v21;
  v30 = v23;

  v31 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_1001150E8, v25);

  sub_100004CB8(&qword_1006379A0);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_1005127F0;
  *(v32 + 32) = v60;
  *(v32 + 40) = v59;
  *(v32 + 48) = v31;
  v33 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  sub_1000451B4(v32);
  swift_endAccess();
  sub_100114BF0();
  v35 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x80000001004ED090, v34, &type metadata for NSUserDefaults.MobileiPod);
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v62 = &type metadata for UserDefaultsKeyValueTrigger;
  v63 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v42 = swift_allocObject();
  v61.location = v42;
  v42[2] = v35;
  v42[3] = v37;
  v42[4] = v39;
  v42[5] = v41;
  v43 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v61, 1, sub_1001150E8, v43);
  swift_beginAccess();
  sub_1004DD84C();
  if (*((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v55 + v33) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1004DD8BC();
  }

  sub_1004DD90C();
  swift_endAccess();
  v44 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver()) init];
  v45 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v46 = *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v44;

  if (*(v55 + v45))
  {
    swift_weakAssign();
  }

  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  v47 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer();
  v48 = swift_allocObject();
  swift_weakInit();
  *(v48 + 24) = 0;
  *(v48 + 32) = 0;
  swift_weakAssign();
  v49 = *(v48 + 24);
  *(v48 + 24) = sub_100115158;
  *(v48 + 32) = v47;
  swift_retain_n();
  v50 = sub_10000DE74(v49);
  v61.location = 0;
  __chkstk_darwin(v50);
  UnfairLock.locked<A>(_:)(sub_100101918);
  if (v61.location)
  {
    v51 = v61.location;
    sub_10010F600(v51);
  }

  else
  {
    sub_10011C974(0);
  }

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v48;

  v52 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();

  v53 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_100115160, v52);

  *(v55 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v53;
}

uint64_t sub_10010D070(char a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v4 = sub_10010BB50();
    sub_100073E60(v15);
    v5 = sub_100167EFC(v4);

    v6 = a2(v5);

    return v6;
  }

  return result;
}

uint64_t sub_10010D1B4(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_100115084, v6);

  return v7;
}

uint64_t sub_10010D254(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_1004DD1FC().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

__n128 sub_10010D2C4@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1004D9B6C();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_10010D37C(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v11[12] = a1[4];
  v11[13] = v6;
  v7 = a1[7];
  v11[14] = a1[6];
  v11[15] = v7;
  v8 = a1[1];
  v11[8] = *a1;
  v11[9] = v8;
  v9 = a1[3];
  v11[10] = a1[2];
  v11[11] = v9;

  sub_100114A70(v12, v11);
  return sub_1004D9B7C();
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  sub_100004CB8(&qword_10063A420);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_10010D4B8()
{
  swift_beginAccess();
  sub_100004CB8(&qword_10063A420);
  sub_1004D9B3C();
  return swift_endAccess();
}

uint64_t sub_10010D530(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_10063A320);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  sub_100004CB8(&qword_10063A420);
  sub_1004D9B4C();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  v2 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v10 = 0;
  v8 = v0;
  v9 = &v10;
  UnfairLock.locked<A>(_:)(sub_1001143D0);
  if (v10 == 1)
  {
    sub_1004DDA5C();
    v5 = sub_1004DDA8C();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;

    sub_100041790(0, 0, v4, &unk_10051AC90, v6);

    sub_10001074C(v4, &qword_100635240);
  }
}

uint64_t sub_10010D854()
{
  UnfairLock.locked<A>(_:)(sub_100114F14);
  v1 = *(v0 + 8);

  return v1();
}

void sub_10010D8EC(uint64_t a1)
{
  v3 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v3 - 8);
  v5 = v44 - v4;
  v6 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_100633B78 != -1)
    {
      swift_once();
    }

    v7 = sub_1004D966C();
    sub_100035430(v7, qword_100637028);
    v8 = sub_1004D964C();
    v9 = sub_1004DDF9C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "Needs Network Reachability Update", v10, 2u);
    }

    *(a1 + v6) = 0;
    v11 = [objc_opt_self() sharedCloudController];
    if (v11)
    {
      v12 = v11;
      if ([v11 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v13) = [v12 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_1004D9B6C();

    v49[4] = v54;
    v49[5] = v55;
    v49[6] = v56;
    v49[7] = v57;
    v49[0] = v50;
    v49[1] = v51;
    v49[2] = v52;
    v49[3] = v53;
    sub_100073E60(v49);
    v14 = BYTE1(v49[0]);
    v15 = sub_1004D964C();
    v16 = sub_1004DDF9C();
    v17 = os_log_type_enabled(v15, v16);
    if (v13 == v14)
    {
      if (v17)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "Network Reachability status does not differ from currently known capabilities.", v43, 2u);
      }
    }

    else
    {
      v58 = v5;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44[1] = v1;
        v20 = v19;
        *&v50 = v19;
        *v18 = 136315138;
        if (v13)
        {
          v21 = 0x1000000000000012;
        }

        else
        {
          v21 = 0x1000000000000016;
        }

        v22 = v13;
        if (v13)
        {
          v13 = "Not Reachable 🔌👎";
        }

        else
        {
          v13 = "hangeNotification";
        }

        v23 = sub_1000343A8(v21, v13 | 0x8000000000000000, &v50);
        LOBYTE(v13) = v22;

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v15, v16, "Updating Network Reachability to: %s", v18, 0xCu);
        sub_100008D24(v20);
      }

      v24 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v46[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v46[5] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v46[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v46[7] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v46[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v46[1] = v27;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v46[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v46[3] = v28;
      *(&v47[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v47[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v47[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v47[7] = v26;
      *(v47 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v47[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v47[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v47[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v47[0]) = v46[0];
      BYTE1(v47[0]) = v13;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v52 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v53 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v50 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v51 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v56 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v57 = v31;
      v32 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v54 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v55 = v32;
      v48[0] = v50;
      v48[1] = v30;
      v48[2] = v52;
      v48[3] = v29;
      v48[4] = v54;
      v48[5] = v32;
      v48[6] = v56;
      v48[7] = v31;
      v33 = v47[0];
      v34 = v47[1];
      v35 = v47[3];
      v24[2] = v47[2];
      v24[3] = v35;
      *v24 = v33;
      v24[1] = v34;
      v36 = v47[4];
      v37 = v47[5];
      v38 = v47[7];
      v24[6] = v47[6];
      v24[7] = v38;
      v24[4] = v36;
      v24[5] = v37;
      sub_100114A70(v46, v45);
      sub_100114A70(&v50, v45);
      sub_100114A70(v47, v45);
      sub_100073E60(v48);
      sub_10010E004(&v50);
      sub_100073E60(&v50);
      sub_100073E60(v47);
      v39 = sub_1004DDA8C();
      v40 = v58;
      (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
      sub_1004DDA4C();

      v41 = sub_1004DDA3C();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = &protocol witness table for MainActor;
      v42[4] = a1;
      sub_10011F560(0, 0, v40, &unk_10051B148, v42);
    }
  }
}

uint64_t sub_10010DE48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_1004DDA4C();
  *(v4 + 24) = sub_1004DDA3C();
  v6 = sub_1004DD9BC();

  return _swift_task_switch(sub_10010DEE0, v6, v5);
}

uint64_t sub_10010DEE0()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_100633BD0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (qword_100633BD0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

uint64_t sub_10010E004(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = sub_100004CB8(&qword_100635240);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v41 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v42 = v7;
  v8 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v43 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v37 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v38 = v9;
  v10 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v39 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v36 = &_swiftEmptySetSingleton;
  v40 = v10;
  sub_100114A70(&v37, &v34);
  if (qword_100633CC0 != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    sub_100114BF0();
    sub_100030C58();
    NSUserDefaults.subscript.getter(&v34);
    if (!v35)
    {
      sub_10001074C(&v34, &qword_100638E60);
      goto LABEL_15;
    }

    if (swift_dynamicCast() & 1) != 0 && (v33)
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {

LABEL_14:
          v35 = &type metadata for Bool;
          LOBYTE(v34) = 0;
          NSUserDefaults.subscript.setter(&v34, v11, &type metadata for NSUserDefaults.MobileiPod);
          goto LABEL_15;
        }

        v32 = v6;
      }

      else
      {
        v32 = v6;
      }

      v12 = sub_1004DF08C();

      v6 = v32;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
    goto LABEL_78;
  }

  if ((v37 ^ *a1))
  {
    if (qword_100633BC8 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v13 = v39;
  v14 = sub_1001202D0(5, v39) & 1;
  v15 = *(a1 + 4);
  if (v14 != (sub_1001202D0(5, v15) & 1))
  {
    if (qword_100633B80 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v16 = sub_1001202D0(0, v13) & 1;
  if (v16 != (sub_1001202D0(0, v15) & 1))
  {
    if (qword_100633B88 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v17 = sub_1001202D0(3, v13) & 1;
  if (v17 != (sub_1001202D0(3, v15) & 1))
  {
    if (qword_100633B90 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v18 = sub_1001202D0(9, v13) & 1;
  if (v18 != (sub_1001202D0(9, v15) & 1))
  {
    if (qword_100633BB0 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v19 = sub_1001202D0(4, v13) & 1;
  if (v19 != (sub_1001202D0(4, v15) & 1))
  {
    if (qword_100633B98 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v20 = sub_1001202D0(2, v13) & 1;
  if (v20 != (sub_1001202D0(2, v15) & 1))
  {
    if (qword_100633BA0 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v21 = sub_1001202D0(10, v13) & 1;
  if (v21 != (sub_1001202D0(10, v15) & 1))
  {
    if (qword_100633BA8 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v37) ^ a1[1]))
  {
    if (qword_100633BD0 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v37) ^ a1[2]))
  {
    if (qword_100633BE0 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v40 != *(a1 + 6))
  {
    if (qword_100633BD8 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((sub_1000A3A38(v43, a1[96]) & 1) == 0)
  {
    if (qword_100633BC0 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v22 = v44;
  v23 = *(&v44 + 1);
  v24 = a1[112];
  v25 = *(a1 + 15);
  if ((sub_10010B048(*(&v43 + 1), *(a1 + 13)) & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v22 == 7)
  {
    if (v24 != 7)
    {
      goto LABEL_71;
    }
  }

  else if (v24 == 7 || (sub_1000A3A3C(v22, v24) & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((sub_10010B2C8(v23, v25) & 1) == 0)
  {
LABEL_71:
    if (qword_100633BB8 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v37 + 1) != *(a1 + 1))
  {
    if (qword_100633BE8 != -1)
    {
      swift_once();
    }

    sub_1001BBA54(&v34, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
  }

  else
  {
    v26 = sub_1004DDA8C();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = v36;
    sub_1004DDA4C();
    sub_100114A70(&v37, &v34);

    v28 = sub_1004DDA3C();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = &protocol witness table for MainActor;
    *(v29 + 32) = v2;
    *(v29 + 104) = v41;
    *(v29 + 120) = v42;
    *(v29 + 136) = v43;
    *(v29 + 152) = v44;
    *(v29 + 40) = v37;
    *(v29 + 56) = v38;
    *(v29 + 72) = v39;
    *(v29 + 88) = v40;
    *(v29 + 168) = v27;
    sub_10011F560(0, 0, v6, &unk_10051B110, v29);
  }

  return sub_100073E60(&v37);
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (qword_100633BC8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (qword_100633B80 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (qword_100633B88 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (qword_100633B90 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (qword_100633BB0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (qword_100633B98 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (qword_100633BA0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_100633BA8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_100633BE0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (qword_100633BD8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (qword_100633BC0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (qword_100633BB8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (qword_100633BE8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

uint64_t sub_10010EE50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  sub_1004DDA4C();
  v6[37] = sub_1004DDA3C();
  v8 = sub_1004DD9BC();

  return _swift_task_switch(sub_10010EEEC, v8, v7);
}

void sub_10010EEEC()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  sub_100114A70(v2, v0 + 144);
  sub_1004D9B7C();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = qword_100633B78;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_1004D966C();
    sub_100035430(v20, qword_100637028);
    v21 = v19;
    v22 = sub_1004D964C();
    v23 = sub_1004DDF9C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      _s3__C4NameVMa_0(0);
      v25 = v21;
      v26 = sub_1004DD4DC();
      v28 = v13;
      v29 = v9;
      v30 = sub_1000343A8(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&_mh_execute_header, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      sub_100008D24(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t sub_10010F218(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  sub_1001139A8(v2, v3, v4, v17);
  v6 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v7 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v21 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v22 = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v23 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v24 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v18[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v18[1] = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v19 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v20 = v10;
  v25[6] = v23;
  v25[7] = v8;
  v25[4] = v21;
  v25[5] = v7;
  v25[2] = v19;
  v25[3] = v10;
  v25[0] = v18[0];
  v25[1] = v9;
  v11 = v17[1];
  *v6 = v17[0];
  v6[1] = v11;
  v12 = v17[7];
  v6[6] = v17[6];
  v6[7] = v12;
  v13 = v17[5];
  v6[4] = v17[4];
  v6[5] = v13;
  v14 = v17[3];
  v6[2] = v17[2];
  v6[3] = v14;
  sub_100114A70(v18, v16);
  sub_100114A70(v17, v16);
  sub_100073E60(v25);
  sub_10010E004(v18);
  sub_100073E60(v18);
  return sub_100073E60(v17);
}

uint64_t sub_10010F328()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() defaultIdentityStore];
    v2 = sub_10010F46C();
    v4 = v3;

    v5 = [objc_opt_self() standardUserDefaults];
    if (v4)
    {
      v2 = 0;
      v6 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    else
    {
      v6 = &type metadata for UInt64;
    }

    v8[0] = v2;
    v8[3] = v6;
    v7 = 2;
    sub_100114C60();
    sub_100030C58();
    NSUserDefaults.subscript.setter(v8, &v7, &_s3KeyON);

    UnfairLock.locked<A>(_:)(sub_10011526C);
  }

  return result;
}

id sub_10010F46C()
{
  v1 = [objc_opt_self() activeAccount];
  v7 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v7];

  v3 = v7;
  if (v2)
  {
    v7 = 0;
    v8 = 1;
    v4 = v3;
    sub_1004DF2EC();

    return v7;
  }

  else
  {
    v6 = v7;
    sub_1004D7F4C();

    swift_willThrow();

    return 0;
  }
}

uint64_t sub_10010F578(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

void sub_10010F600(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);

    UnfairLock.locked<A>(_:)(sub_100115168);

    UnfairLock.locked<A>(_:)(sub_10011526C);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_1004DD3FC();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = sub_1004DD21C(), v5, v7 = sub_1002BC590(v6), , v7))
    {
      *(&v10 + 1) = sub_100004CB8(&qword_100637300);
      *&v9 = v7;
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v8 = 1;
    sub_100114C60();
    sub_100030C58();
    NSUserDefaults.subscript.setter(&v9, &v8, &_s3KeyON);
  }
}

uint64_t sub_10010F814(char a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_1004D9B6C(), , , , v17 = v9, v18 = v10, v19 = v11, v20 = v12, v13 = v5, v14 = v6, v15 = v7, v16 = v8, result = sub_100073E60(&v13), BYTE8(v14) == (a1 & 1)))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = sub_1004D9B5C();
      *(v4 + 24) = (a1 & 1) == 0;
      v3(&v13, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_10010F9F8, 0, 0);
}

uint64_t sub_10010F9F8()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_10010FAD0;
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, sub_1001144B0, v2, &type metadata for ApplicationCapabilities);
}

uint64_t sub_10010FAD0()
{

  return _swift_task_switch(sub_10010FBCC, 0, 0);
}

uint64_t sub_10010FBCC()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_10010FC14(uint64_t a1)
{
  v2 = sub_100004CB8(&qword_1006372A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  if (qword_100633C28 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v3 + 16);
  v11(v8, a1, v2);
  v11(v6, v8, v2);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v3 + 32))(v13 + v12, v8, v2);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  sub_100004CB8(&qword_1006372B0);
  UnfairLock.locked<A>(_:)(sub_100030C3C);
  v15 = v24;
  if (v24)
  {
    sub_10010FFC4(v24);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v16 = swift_allocObject();
    v23[1] = v14;
    v17 = v16;
    swift_weakInit();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    swift_weakAssign();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = sub_100114E04;
    v19[3] = v13;
    v19[4] = v18;
    v19[5] = v17;
    v23[0] = 0;
    v20 = *(v17 + 24);
    *(v17 + 24) = sub_100114ECC;
    *(v17 + 32) = v19;

    sub_10000DE74(v20);

    __chkstk_darwin(v21);
    v23[-2] = v9;
    v23[-1] = v17;
    UnfairLock.locked<A>(_:)(sub_100114ED8);
    sub_10011C974(0);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_10010FFC4(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v4 = *(result + 16);
    a1;

    v5 = sub_1001139A8(a1, v3, v4, v6);
    __chkstk_darwin(v5);

    UnfairLock.locked<A>(_:)(sub_100114EF4);

    sub_100004CB8(&qword_1006372A8);
    sub_1004DD9DC();
  }

  return result;
}

uint64_t sub_100110138(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  sub_100114A70(v19, v18);
  sub_100114A70(a3, v18);
  sub_100073E60(v26);
  sub_10010E004(v19);
  return sub_100073E60(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = sub_100004CB8(&qword_10063A420);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  sub_100073E60(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_100110394@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1004D9AFC();
  *a1 = result;
  return result;
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = sub_1004DF08C();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

BOOL sub_1001105E0(_BOOL8 a1, void *a2)
{
  v4 = sub_100004CB8(&qword_100634B30);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-v5];
  if (qword_100633CC0 != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  sub_100114BF0();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_10001074C(&v11, &qword_100638E60);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v10[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == 1;
  }

LABEL_11:
  v7 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v6);

  v8 = sub_1004D809C();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_10001074C(v6, &qword_100634B30);
  if (v7 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t sub_100110800(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    sub_1004DD43C();
    v4 = sub_1004DD3FC();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (qword_100633B68 != -1)
  {
    swift_once();
  }

  v6 = sub_1004DD3FC();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    sub_100006F10(0, &qword_100637278);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (qword_100634428 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  sub_100114C60();
  sub_100030C58();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    sub_10001074C(&v11, &qword_100638E60);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t sub_100110A24()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = sub_1004DD21C();

  if (!v3)
  {
    goto LABEL_15;
  }

  sub_1004DEA4C();
  if (!*(v3 + 16) || (v4 = sub_100028F3C(v10), (v5 & 1) == 0))
  {

    sub_1000105EC(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_10000904C(*(v3 + 56) + 32 * v4, &v11);
  sub_1000105EC(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_10001074C(&v11, &qword_100638E60);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  sub_100004CB8(&qword_100636C18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  sub_1004DEA4C();
  if (!*(v6 + 16) || (v7 = sub_100028F3C(v10), (v8 & 1) == 0))
  {

    sub_1000105EC(v10);
    goto LABEL_17;
  }

  sub_10000904C(*(v6 + 56) + 32 * v7, &v11);
  sub_1000105EC(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_10001074C(&v11, &qword_100638E60);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100110C78()
{
  v1 = sub_1004DD3FC();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = sub_1004DD21C();

  if (!v3)
  {
    goto LABEL_14;
  }

  sub_1004DEA4C();
  if (!*(v3 + 16) || (v4 = sub_100028F3C(&v10), (v5 & 1) == 0))
  {

    sub_1000105EC(&v10);
LABEL_14:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_15;
  }

  sub_10000904C(*(v3 + 56) + 32 * v4, &v11);
  sub_1000105EC(&v10);

  if (!*(&v12 + 1))
  {
LABEL_15:
    sub_10001074C(&v11, &qword_100638E60);
LABEL_16:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_17;
  }

  sub_100004CB8(&qword_100636C18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v6 = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

  sub_1004DEA4C();
  if (!*(v6 + 16) || (v7 = sub_100028F3C(&v10), (v8 & 1) == 0))
  {

    sub_1000105EC(&v10);
    goto LABEL_16;
  }

  sub_10000904C(*(v6 + 56) + 32 * v7, &v11);
  sub_1000105EC(&v10);

  if (!*(&v12 + 1))
  {
LABEL_17:
    sub_10001074C(&v11, &qword_100638E60);
    return 0;
  }

  if (swift_dynamicCast())
  {

    return 1;
  }

  return 0;
}

uint64_t sub_100110EC8()
{
  result = sub_1004DD43C();
  qword_100637010 = result;
  *algn_100637018 = v1;
  return result;
}

uint64_t sub_100110EF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _WORD *a3@<X8>)
{
  v5 = *a1;
  sub_1004DEA4C();
  if (!*(v5 + 16) || (v6 = sub_100028F3C(v28), (v7 & 1) == 0))
  {
    result = sub_1000105EC(v28);
LABEL_10:
    *a3 = 512;
    return result;
  }

  sub_10000904C(*(v5 + 56) + 32 * v6, v29);
  sub_1000105EC(v28);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  result = sub_10011F1E8(25705, 0xE200000000000000);
  v31 = result;
  if (result == 7)
  {
    goto LABEL_10;
  }

  sub_1004DEA4C();
  if (*(v5 + 16) && (v9 = sub_100028F3C(v28), (v10 & 1) != 0))
  {
    sub_10000904C(*(v5 + 56) + 32 * v9, v29);
    sub_1000105EC(v28);
    result = swift_dynamicCast();
    if (result)
    {
      v30 = 18;
LABEL_65:
      if (v30)
      {
        v27 = 256;
      }

      else
      {
        v27 = 0;
      }

      goto LABEL_68;
    }
  }

  else
  {
    result = sub_1000105EC(v28);
  }

  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (a2 + 33);
    while (1)
    {
      v13 = *(v12 - 1);
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          v16 = 0x756F795F726F66;
        }

        else
        {
          v16 = 0x6E5F6E657473696CLL;
        }

        if (v13 == 1)
        {
          v17 = 0xE700000000000000;
        }

        else
        {
          v17 = 0xEA0000000000776FLL;
        }

        if (*(v12 - 1))
        {
          v14 = v16;
        }

        else
        {
          v14 = 0x636973756D5F796DLL;
        }

        if (*(v12 - 1))
        {
          v15 = v17;
        }

        else
        {
          v15 = 0xE800000000000000;
        }
      }

      else if (*(v12 - 1) > 4u)
      {
        if (v13 == 5)
        {
          v15 = 0xE600000000000000;
          v14 = 0x686372616573;
        }

        else
        {
          v15 = 0xE500000000000000;
          v14 = 0x6F65646976;
        }
      }

      else
      {
        if (v13 == 3)
        {
          v14 = 0x6573776F7262;
        }

        else
        {
          v14 = 0x6F69646172;
        }

        if (v13 == 3)
        {
          v15 = 0xE600000000000000;
        }

        else
        {
          v15 = 0xE500000000000000;
        }
      }

      v30 = *v12;
      v18 = 0x686372616573;
      if (v31 == 5)
      {
        v19 = 0xE600000000000000;
      }

      else
      {
        v18 = 0x6F65646976;
        v19 = 0xE500000000000000;
      }

      v20 = 0x6573776F7262;
      if (v31 == 3)
      {
        v21 = 0xE600000000000000;
      }

      else
      {
        v20 = 0x6F69646172;
        v21 = 0xE500000000000000;
      }

      if (v31 <= 4u)
      {
        v18 = v20;
        v19 = v21;
      }

      if (v31 == 1)
      {
        v22 = 0x756F795F726F66;
      }

      else
      {
        v22 = 0x6E5F6E657473696CLL;
      }

      if (v31 == 1)
      {
        v23 = 0xE700000000000000;
      }

      else
      {
        v23 = 0xEA0000000000776FLL;
      }

      if (!v31)
      {
        v22 = 0x636973756D5F796DLL;
        v23 = 0xE800000000000000;
      }

      v24 = v31 <= 2u ? v22 : v18;
      v25 = v31 <= 2u ? v23 : v19;
      if (v14 == v24 && v15 == v25)
      {
        break;
      }

      v26 = sub_1004DF08C();

      if (v26)
      {
        goto LABEL_65;
      }

      v12 += 2;
      if (!--v11)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_65;
  }

LABEL_63:
  v27 = 0;
LABEL_68:
  *a3 = v27 | v31;
  return result;
}

id sub_100111354()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result unregisterObserver:v0];

    v3.receiver = v0;
    v3.super_class = type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver();
    return objc_msgSendSuper2(&v3, "dealloc");
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001114C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  if (swift_weakLoadStrong())
  {
    v7 = a1;
    UnfairLock.locked<A>(_:)(a5);
  }
}

id sub_10011156C()
{
  result = [objc_allocWithZone(RadioAvailabilityController) init];
  qword_100637020 = result;
  return result;
}

Swift::Int sub_1001115AC()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_100111668()
{
  sub_1004DD55C();
}

Swift::Int sub_100111710()
{
  sub_1004DF26C();
  sub_1004DD55C();

  return sub_1004DF2BC();
}

uint64_t sub_1001117C8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100115210(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_1001117F8(unint64_t *a1@<X8>)
{
  v2 = "gMusicTabsDictionary";
  v3 = 0xD000000000000025;
  if (*v1 != 2)
  {
    v3 = 0xD000000000000014;
    v2 = "countUniqueIdentifier";
  }

  v4 = 0xD000000000000024;
  if (*v1)
  {
    v5 = "UserRequestedSubscriptionHidden";
  }

  else
  {
    v4 = 0xD00000000000001FLL;
    v5 = "sharePlayTogether";
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v4 = v3;
    v6 = v2;
  }

  *a1 = v4;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_100111874()
{
  v0 = sub_1004D966C();
  sub_100035718(v0, qword_100637028);
  sub_100035430(v0, qword_100637028);
  return sub_1004D965C();
}

NSString sub_1001118F8()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange = result;
  return result;
}

NSString sub_100111954()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange = result;
  return result;
}

NSString sub_1001119B0()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange = result;
  return result;
}

NSString sub_100111A0C()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange = result;
  return result;
}

NSString sub_100111A68()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange = result;
  return result;
}

NSString sub_100111AC4()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.mliEnabledDidChange = result;
  return result;
}

NSString sub_100111B20()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange = result;
  return result;
}

NSString sub_100111B7C()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.supportedTabsDidChange = result;
  return result;
}

NSString sub_100111BD8()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange = result;
  return result;
}

NSString sub_100111C34()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.activeAccountDidChange = result;
  return result;
}

NSString sub_100111C90()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange = result;
  return result;
}

NSString sub_100111CEC()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange = result;
  return result;
}

NSString sub_100111D48()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange = result;
  return result;
}

NSString sub_100111DA4()
{
  result = sub_1004DD3FC();
  static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange = result;
  return result;
}

id sub_100111E00(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1004DF08C();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[4];
  v10 = a2[4];
  if (v9)
  {
    if (v10 && (a1[3] == a2[3] && v9 == v10 || (sub_1004DF08C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v10)
  {
    return 1;
  }

  return 0;
}

BOOL _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2) & 1) != 0 || ((a1[1] ^ a2[1]) & 1) != 0 || ((a1[2] ^ a2[2]) & 1) != 0 || *(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2) || ((a1[24] ^ a2[24]))
  {
    return 0;
  }

  if ((sub_1001B48D0(*(a1 + 4), *(a2 + 4)) & 1) == 0 || (sub_1001B48D0(*(a1 + 5), *(a2 + 5)) & 1) == 0 || *(a1 + 6) != *(a2 + 6))
  {
    return 0;
  }

  v5 = a1;
  v6 = a2;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a1 + 10);
  v10 = *(a2 + 8);
  v11 = *(a2 + 9);
  v12 = *(a2 + 10);
  if (v7)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(a1 + 7) != *(a2 + 7) || v7 != v10)
    {
      v13 = sub_1004DF08C();
      v6 = a2;
      v5 = a1;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  if (v9)
  {
    if (!v12)
    {
      return 0;
    }

    if (v8 != v11 || v9 != v12)
    {
      v14 = sub_1004DF08C();
      v6 = a2;
      v5 = a1;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  v15 = *(v5 + 11);
  v16 = *(v6 + 11);
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    sub_100006F10(0, &qword_1006372B8);
    v17 = v16;
    v18 = v15;
    v19 = sub_1004DE5FC();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v16)
  {
    return 0;
  }

  if ((sub_1000A3A38(a1[96], a2[96]) & 1) == 0)
  {
    return 0;
  }

  v20 = a1[112];
  v21 = *(a1 + 15);
  v22 = a2[112];
  v23 = *(a2 + 15);
  if ((sub_10010B048(*(a1 + 13), *(a2 + 13)) & 1) == 0)
  {
    return 0;
  }

  if (v20 == 7)
  {
    if (v22 != 7)
    {
      return 0;
    }
  }

  else if (v22 == 7 || (sub_1000A3A3C(v20, v22) & 1) == 0)
  {
    return 0;
  }

  return (sub_10010B2C8(v21, v23) & 1) != 0;
}

uint64_t sub_100112164(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = 0;
  v34 = result + 32;
  v4 = _swiftEmptyArrayStorage;
  v31 = *(result + 16);
LABEL_3:
  v33 = v4;
  while (v3 < v2)
  {
    v5 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_63;
    }

    v6 = (v34 + 2 * v3);
    v7 = v6[1];
    ++v3;
    v8 = *v6;
    if (v8 == 2)
    {
      v21 = *(a2 + 32);
      if (!*(v21 + 16))
      {
        goto LABEL_6;
      }

      v32 = v6[1];
      sub_1004DF26C();

      sub_1004DD55C();
      v22 = sub_1004DF2BC();
      v23 = -1 << *(v21 + 32);
      v24 = v22 & ~v23;
      if ((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
      {
        v25 = ~v23;
        while (1)
        {
          v26 = *(*(v21 + 48) + v24);
          if (v26 <= 4)
          {
            if (v26 == 2)
            {
              goto LABEL_57;
            }
          }

          else if (*(*(v21 + 48) + v24) > 7u && v26 == 8 && 0x80000001004E9570 == 0x80000001004E95B0)
          {
LABEL_57:

LABEL_49:

            LOBYTE(v8) = 2;
LABEL_50:
            v2 = v31;
            v4 = v33;
            v7 = v32;
LABEL_51:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1000374CC(0, v4[2] + 1, 1);
            }

            v29 = v4[2];
            v28 = v4[3];
            if (v29 >= v28 >> 1)
            {
              result = sub_1000374CC((v28 > 1), v29 + 1, 1);
            }

            v4[2] = v29 + 1;
            v30 = v4 + 2 * v29;
            v30[32] = v8;
            v30[33] = v7;
            if (v5 == v2)
            {
              return v4;
            }

            goto LABEL_3;
          }

          v27 = sub_1004DF08C();

          if (v27)
          {
            goto LABEL_49;
          }

          v24 = (v24 + 1) & v25;
          if (((*(v21 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }
    }

    else
    {
      if (v8 == 6)
      {
        v15 = *(a2 + 32);
        if (!*(v15 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_1004DF26C();

        sub_1004DD55C();
        v16 = sub_1004DF2BC();
        v17 = -1 << *(v15 + 32);
        v18 = v16 & ~v17;
        if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
        {
          v19 = ~v17;
          while (*(*(v15 + 48) + v18) > 2u || !*(*(v15 + 48) + v18) || *(*(v15 + 48) + v18) == 2)
          {
            v20 = sub_1004DF08C();

            if (v20)
            {
              goto LABEL_48;
            }

            v18 = (v18 + 1) & v19;
            if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_48:

          LOBYTE(v8) = 6;
          goto LABEL_50;
        }
      }

      else
      {
        if (v8 != 4)
        {
          goto LABEL_51;
        }

        v9 = *(a2 + 32);
        if (!*(v9 + 16))
        {
          goto LABEL_6;
        }

        v32 = v6[1];
        sub_1004DF26C();

        sub_1004DD55C();
        v10 = sub_1004DF2BC();
        v11 = -1 << *(v9 + 32);
        v12 = v10 & ~v11;
        if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
        {
          v13 = ~v11;
          while (*(*(v9 + 48) + v12) > 5u || *(*(v9 + 48) + v12) < 4u || *(*(v9 + 48) + v12) == 5)
          {
            v14 = sub_1004DF08C();

            if (v14)
            {
              goto LABEL_47;
            }

            v12 = (v12 + 1) & v13;
            if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
            {
              goto LABEL_4;
            }
          }

LABEL_47:

          LOBYTE(v8) = 4;
          goto LABEL_50;
        }
      }

LABEL_4:
      v2 = v31;
    }

    v4 = v33;
LABEL_6:
    if (v5 == v2)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return result;
}

void sub_100112984(void *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;
    v4 = sub_1004DD3FC();
    v5 = [v3 numberForBagKey:v4];

    if (v5)
    {
      sub_1004DDCCC();
    }

    v10 = v3;
    v11 = sub_1004DD3FC();
    v12 = [v10 stringForBagKey:v11];

    if (v12)
    {
      v8 = sub_1004DD43C();
      v9 = v13;
    }

    else
    {

      v8 = 0;
      v9 = 0;
    }

    v14 = v10;
    v15 = sub_1004DD3FC();
    v16 = [v14 stringForBagKey:v15];

    if (v16)
    {
      v6 = sub_1004DD43C();
      v7 = v17;
    }

    else
    {

      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  *a2 = 0x7FFFFFFFFFFFFFFFLL;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v6;
  a2[4] = v7;
}

char *sub_100112B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = _swiftEmptyArrayStorage;
    do
    {
      v5 = *v2;
      v2 += 2;
      v4 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10003A594(0, *(v3 + 2) + 1, 1, v3);
      }

      v7 = *(v3 + 2);
      v6 = *(v3 + 3);
      if (v7 >= v6 >> 1)
      {
        v3 = sub_10003A594((v6 > 1), v7 + 1, 1, v3);
      }

      *(v3 + 2) = v7 + 1;
      v3[v7 + 32] = 0x5040302010100uLL >> (8 * v4);
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v29 = v3;
  if (qword_100633CC0 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    if (!static NSUserDefaults.mobileiPod)
    {
      goto LABEL_16;
    }

    sub_100114BF0();
    sub_100030C58();
    NSUserDefaults.subscript.getter(&v27);
    if (!v28)
    {
      sub_10001074C(&v27, &qword_100638E60);
LABEL_16:
      v8 = 1;
      goto LABEL_17;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v8 = v26 ^ 1;
LABEL_17:
    v9 = [objc_opt_self() currentDevice];
    v10 = [v9 userInterfaceIdiom];

    if (v10 != 1 || (v11 = *(v3 + 2)) == 0)
    {
LABEL_28:
      v14 = *(v3 + 2);
      if (!v14)
      {
        return v3;
      }

      goto LABEL_29;
    }

    v12 = 0;
    while (1)
    {
      if (v12 >= *(v3 + 2))
      {
        goto LABEL_57;
      }

      if (v3[v12 + 32] > 2u && v3[v12 + 32] <= 4u && v3[v12 + 32] != 3)
      {
        break;
      }

      v13 = sub_1004DF08C();

      if (v13)
      {
        goto LABEL_51;
      }

      if (v11 == ++v12)
      {
        goto LABEL_28;
      }
    }

LABEL_51:
    v22 = sub_10005507C(v12);
    v3 = v29;
    v23 = *(v29 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v23 >= *(v3 + 3) >> 1)
    {
      v3 = sub_10003A594(isUniquelyReferenced_nonNull_native, v23 + 1, 1, v3);
      v29 = v3;
    }

    sub_100154FDC(0, 0, 1, v22);
    v14 = *(v3 + 2);
    if (!v14)
    {
      return v3;
    }

LABEL_29:
    v15 = (v8 & 1) == 0;
    if (v8)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x7972617262696CLL;
    }

    if (v15)
    {
      v17 = 0xE700000000000000;
    }

    else
    {
      v17 = 0xE900000000000077;
    }

    v18 = 0;
    while (v18 < *(v3 + 2))
    {
      v19 = v3[v18 + 32];
      if (v19 > 2)
      {
        goto LABEL_38;
      }

      if (v3[v18 + 32])
      {
        if (v19 != 1)
        {
          goto LABEL_38;
        }

        v21 = 0xE900000000000077;
        if (v16 != 0x6F4E6E657473696CLL)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v21 = 0xE700000000000000;
        if (v16 != 0x7972617262696CLL)
        {
          goto LABEL_38;
        }
      }

      if (v21 == v17)
      {

LABEL_40:

        return v3;
      }

LABEL_38:
      v20 = sub_1004DF08C();

      if ((v20 & 1) == 0 && v14 != ++v18)
      {
        continue;
      }

      goto LABEL_40;
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }
}

uint64_t sub_1001130C4(uint64_t a1, uint64_t a2)
{
  v28 = *(a1 + 16);
  if (!v28)
  {
    return 1;
  }

  v3 = 0;
  v29 = a1 + 32;
  v4 = a2 + 56;
  while (*(a2 + 16))
  {
    v5 = *(v29 + v3);
    sub_1004DF26C();
    ApplicationCapabilities.Service.description.getter(v5);
    sub_1004DD55C();

    v6 = sub_1004DF2BC();
    v7 = -1 << *(a2 + 32);
    v8 = v6 & ~v7;
    if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      break;
    }

    v30 = v3 + 1;
    v9 = ~v7;
    while (1)
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 <= 4)
      {
        v13 = 0x6C6169636F73;
        if (v10 != 3)
        {
          v13 = 0x6F69646172;
        }

        v14 = 0xE600000000000000;
        if (v10 != 3)
        {
          v14 = 0xE500000000000000;
        }

        if (v10 == 2)
        {
          v13 = 0xD000000000000013;
          v14 = 0x80000001004E9570;
        }

        v15 = 0x646956636973756DLL;
        if (!*(*(a2 + 48) + v8))
        {
          v15 = 0x636973756DLL;
        }

        v16 = 0xEB00000000736F65;
        if (!*(*(a2 + 48) + v8))
        {
          v16 = 0xE500000000000000;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v11 = v15;
        }

        else
        {
          v11 = v13;
        }

        if (*(*(a2 + 48) + v8) <= 1u)
        {
          v12 = v16;
        }

        else
        {
          v12 = v14;
        }
      }

      else if (*(*(a2 + 48) + v8) > 7u)
      {
        if (v10 == 8)
        {
          v11 = 0xD000000000000013;
          v12 = 0x80000001004E95B0;
        }

        else if (v10 == 9)
        {
          v11 = 0xD000000000000011;
          v12 = 0x80000001004E95D0;
        }

        else
        {
          v11 = 0x6C62616E45696C6DLL;
          v12 = 0xEA00000000006465;
        }
      }

      else if (v10 == 5)
      {
        v12 = 0xE600000000000000;
        v11 = 0x73656E757469;
      }

      else
      {
        if (v10 == 6)
        {
          v11 = 0x74634170756F7267;
        }

        else
        {
          v11 = 0x746963696C707865;
        }

        if (v10 == 6)
        {
          v12 = 0xED00007974697669;
        }

        else
        {
          v12 = 0xEF746E65746E6F43;
        }
      }

      if (v5 > 4)
      {
        v17 = 0xD000000000000011;
        if (v5 != 9)
        {
          v17 = 0x6C62616E45696C6DLL;
        }

        v18 = 0xEA00000000006465;
        if (v5 == 9)
        {
          v18 = 0x80000001004E95D0;
        }

        if (v5 == 8)
        {
          v17 = 0xD000000000000013;
          v18 = 0x80000001004E95B0;
        }

        v19 = 0x746963696C707865;
        if (v5 == 6)
        {
          v19 = 0x74634170756F7267;
        }

        v20 = 0xEF746E65746E6F43;
        if (v5 == 6)
        {
          v20 = 0xED00007974697669;
        }

        if (v5 == 5)
        {
          v19 = 0x73656E757469;
          v20 = 0xE600000000000000;
        }

        if (v5 <= 7)
        {
          v21 = v19;
        }

        else
        {
          v21 = v17;
        }

        if (v5 <= 7)
        {
          v22 = v20;
        }

        else
        {
          v22 = v18;
        }

        if (v11 == v21)
        {
          goto LABEL_74;
        }

        goto LABEL_75;
      }

      if (v5 <= 1)
      {
        break;
      }

      v23 = 0x6C6169636F73;
      if (v5 != 3)
      {
        v23 = 0x6F69646172;
      }

      v24 = 0xE600000000000000;
      if (v5 != 3)
      {
        v24 = 0xE500000000000000;
      }

      if (v5 == 2)
      {
        v25 = 0xD000000000000013;
      }

      else
      {
        v25 = v23;
      }

      if (v5 == 2)
      {
        v22 = 0x80000001004E9570;
      }

      else
      {
        v22 = v24;
      }

      if (v11 == v25)
      {
        goto LABEL_74;
      }

LABEL_75:
      v26 = sub_1004DF08C();

      if (v26)
      {
        goto LABEL_80;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v4 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        return 0;
      }
    }

    if (!v5)
    {
      v22 = 0xE500000000000000;
      if (v11 == 0x636973756DLL)
      {
        goto LABEL_74;
      }

      goto LABEL_75;
    }

    v22 = 0xEB00000000736F65;
    if (v11 != 0x646956636973756DLL)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (v12 != v22)
    {
      goto LABEL_75;
    }

LABEL_80:
    v3 = v30;
    if (v30 == v28)
    {
      return 1;
    }
  }

  return 0;
}