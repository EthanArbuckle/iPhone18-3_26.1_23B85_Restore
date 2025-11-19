uint64_t sub_1000B7F4C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000B7F64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1000B7FC0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_1000B803C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000B80DC();
}

uint64_t sub_1000B80F8()
{
  v15 = v0;
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v2 = objc_opt_self();
  v3 = v1;
  v4 = [v2 sharedScheduler];
  *(v0 + 208) = &type metadata for ActivityManager;
  *(v0 + 216) = &off_100223E90;
  v5 = swift_allocObject();
  *(v0 + 184) = v5;
  v5[5] = &type metadata for BackgroundSystemTaskScheduler;
  v5[6] = &off_100217910;
  v5[2] = v4;
  *(v0 + 272) = &type metadata for AttributionKitCanineArbiter;
  *(v0 + 280) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v6 = qword_10023FC28;
  *(v0 + 312) = type metadata accessor for TaskGreyhound();
  *(v0 + 320) = &off_1002169F0;
  *(v0 + 288) = v6;
  *(v0 + 352) = &type metadata for LaunchServicesRecordFactory;
  *(v0 + 360) = &off_10021CBA8;
  *(v0 + 392) = &type metadata for AMSDogBag;
  *(v0 + 400) = &off_100222F48;

  v7 = [v2 sharedScheduler];
  v13[3] = &type metadata for ActivityManager;
  v13[4] = &off_100223E90;
  v8 = swift_allocObject();
  v13[0] = v8;
  v8[5] = &type metadata for BackgroundSystemTaskScheduler;
  v8[6] = &off_100217910;
  v8[2] = v7;
  v14[3] = &type metadata for LaunchServicesRecordFactory;
  v14[4] = &off_10021CBA8;
  sub_1000B8524(v13, v14, v0 + 408);
  *(v0 + 520) = &type metadata for AppStoreDaemonSKANInterop;
  *(v0 + 528) = &off_100222C60;
  sub_1000B42E0((v0 + 536));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v9 = qword_10023FD90;
  *(v0 + 600) = type metadata accessor for SnoutManager();
  *(v0 + 608) = &off_100223858;
  *(v0 + 576) = v9;
  strcpy((v0 + 16), "postback_store");
  *(v0 + 31) = -18;
  *(v0 + 32) = v3;
  *(v0 + 40) = 0x63616274736F6867;
  *(v0 + 48) = 0xEF65726F74735F6BLL;
  *(v0 + 56) = v3;
  *(v0 + 64) = 0xD000000000000010;
  *(v0 + 72) = 0x80000001001CB320;
  *(v0 + 80) = v3;
  *(v0 + 88) = 0x74735F6E656B6F74;
  *(v0 + 96) = 0xEB0000000065726FLL;
  *(v0 + 104) = v3;
  *(v0 + 112) = 0xD000000000000012;
  *(v0 + 120) = 0x80000001001CB340;
  *(v0 + 128) = v3;
  *(v0 + 136) = 0xD000000000000014;
  *(v0 + 144) = 0x80000001001CB360;
  *(v0 + 152) = v3;
  *(v0 + 160) = 0xD000000000000018;
  *(v0 + 168) = 0x80000001001CB380;
  *(v0 + 176) = v3;
  *(v0 + 224) = 0xD000000000000011;
  *(v0 + 232) = 0x80000001001CB3A0;
  *(v0 + 240) = v3;

  v10 = sub_1000286A4(&off_100216728);
  *(v0 + 616) = v10;
  v11 = swift_task_alloc();
  *(v0 + 624) = v11;
  *v11 = v0;
  v11[1] = sub_10005F820;

  return sub_10010B00C(v10);
}

uint64_t sub_1000B84EC()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000B8524@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000CE28(a1, a3);
  sub_10000CE28(a2, a3 + 40);
  sub_10000CDE0(&qword_10023C5C0, qword_1001BC2C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001BAF80;
  *(inited + 40) = 0;
  *(inited + 32) = 0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  *(inited + 80) = xmmword_1001BC250;
  *(inited + 120) = &type metadata for Int;
  *(inited + 96) = 60;
  *(inited + 128) = xmmword_1001BC260;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 144) = 0;
  *(inited + 176) = xmmword_1001BC270;
  *(inited + 216) = &type metadata for Int;
  *(inited + 192) = 300;
  *(inited + 224) = xmmword_1001BC280;
  *(inited + 264) = &type metadata for String;
  *(inited + 240) = 0xD000000000000015;
  *(inited + 248) = 0x80000001001CC840;
  *(inited + 272) = xmmword_1001BC290;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = 0;
  v7 = sub_1000C48DC(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023C5C8, &qword_1001BC880);
  swift_arrayDestroy();
  sub_10000DB58(a2);
  result = sub_10000DB58(a1);
  *(a3 + 80) = v7;
  return result;
}

uint64_t sub_1000B86A8()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = *(v0 + 80);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(v2 + 48) + 16 * v10);
      v12 = *v11;
      v13 = v11[1];
      sub_10002036C(*(v2 + 56) + 32 * v10, &v19);
      v18[0] = v12;
      v18[1] = v13;
      if (v13 > 4)
      {
        break;
      }

      if (v13 < 0)
      {
        goto LABEL_12;
      }

LABEL_13:
      v15 = String._bridgeToObjectiveC()();

      v16 = [v1 objectForKey:v15];

      if (!v16)
      {

        memset(v17, 0, sizeof(v17));
        sub_10000DAF8(v17, &qword_10023BB90, &qword_1001BA370);
        sub_10000DAF8(v18, &qword_10023C5B8, &qword_1001BC2B8);
        return 0;
      }

      v5 &= v5 - 1;
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_10000DAF8(v17, &qword_10023BB90, &qword_1001BA370);
      result = sub_10000DAF8(v18, &qword_10023C5B8, &qword_1001BC2B8);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    if (v13 <= 9)
    {
      goto LABEL_13;
    }

LABEL_12:
    *&v17[0] = 0;
    *(&v17[0] + 1) = 0xE000000000000000;

    _StringGuts.grow(_:)(22);

    *&v17[0] = 0xD000000000000014;
    *(&v17[0] + 1) = 0x80000001001CBE80;
    v14._countAndFlagsBits = v12;
    v14._object = v13;
    String.append(_:)(v14);
    goto LABEL_13;
  }

LABEL_5:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return 1;
    }

    v5 = *(v2 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void sub_1000B8AD8(uint64_t a1)
{
  v44 = type metadata accessor for Date();
  v43 = *(v44 - 8);
  v3 = *(v43 + 64);
  __chkstk_darwin(v44);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_opt_self() standardUserDefaults];
  v45 = v1;
  v6 = *(v1 + 80);
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v55 = 0x80000001001CBCB0;
  v54 = 0x80000001001CBCE0;
  v53 = 0x80000001001CBD00;
  v56 = 0x80000001001CBD20;
  v52 = 0x80000001001CBD50;
  v51 = 0x80000001001CBD80;
  v50 = 0x80000001001CBDC0;
  v49 = 0x80000001001CBDF0;
  v48 = 0x80000001001CBE20;
  v47 = 0x80000001001CBE60;
  v46 = 0x80000001001CBE80;
  v59 = v6;

  v12 = 0;
  while (v10)
  {
    v16 = v12;
LABEL_18:
    v19 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(v59 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_10002036C(*(v59 + 56) + 32 * v20, v64);
    v65._countAndFlagsBits = v22;
    v65._object = v23;
    sub_100025CA4(v64, &v66);
    sub_1000BBA00(v22, v23);
LABEL_19:
    v69 = v66;
    v70 = v67;
    v68 = v65;
    if (!*(&v67 + 1))
    {

      if (a1)
      {
        v38 = v42;
        Date.init(timeIntervalSinceNow:)();
        Date.timeIntervalSince1970.getter();
        *(&v69 + 1) = &type metadata for Double;
        v68._countAndFlagsBits = v39;
        sub_10008393C(&v68, 0, 6);
        (*(v43 + 8))(v38, v44);
        sub_10000DAF8(&v68, &qword_10023BB90, &qword_1001BA370);
      }

      else
      {
        v40 = String._bridgeToObjectiveC()();
        [v5 removeObjectForKey:v40];
      }

      sub_1000BA604();

      return;
    }

    v24 = v68;
    sub_100025CA4(&v69, &v65);
    if ((a1 & 1) == 0)
    {
      if (v24._object > 4)
      {
        if (v24._object > 6)
        {
          switch(v24._object)
          {
            case 7uLL:
              v13 = &v75;
              goto LABEL_5;
            case 8uLL:
              v13 = &v76;
              goto LABEL_5;
            case 9uLL:
              v13 = &v77;
              goto LABEL_5;
          }

          goto LABEL_67;
        }

        if (v24._object == 5)
        {
          v13 = &v74;
        }

        else
        {
          v13 = &v78;
        }

LABEL_5:
        v14 = *(v13 - 32);
      }

      else
      {
        if (v24._object > 1)
        {
          if (v24._object == 2)
          {
            v13 = &v71;
          }

          else if (v24._object == 3)
          {
            v13 = &v72;
          }

          else
          {
            v13 = &v73;
          }

          goto LABEL_5;
        }

        if (!v24._object)
        {
          v13 = &v70;
          goto LABEL_5;
        }

        if (v24._object == 1)
        {
          v13 = &v70 + 1;
          goto LABEL_5;
        }

LABEL_67:
        *&v64[0] = 0;
        *(&v64[0] + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(22);

        *&v64[0] = 0xD000000000000014;
        *(&v64[0] + 1) = v46;
        String.append(_:)(v24);
        sub_1000BBA14(v24._countAndFlagsBits, v24._object);
      }

      v15 = String._bridgeToObjectiveC()();

      [v5 removeObjectForKey:v15];

      goto LABEL_7;
    }

    countAndFlagsBits = v24._countAndFlagsBits;
    v25 = a1;
    sub_10002036C(&v65, v64);
    sub_100083AAC(v64, &v61);
    v26 = v63;
    if (v63)
    {
      v27 = sub_10000DA7C(&v61, v63);
      v58 = &v41;
      v28 = v5;
      v29 = *(v26 - 8);
      v30 = *(v29 + 64);
      __chkstk_darwin(v27);
      v32 = &v41 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v32);
      v60 = _bridgeAnythingToObjectiveC<A>(_:)();
      (*(v29 + 8))(v32, v26);
      v5 = v28;
      sub_10000DB58(&v61);
      if (v24._object > 4)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v60 = 0;
      if (v24._object > 4)
      {
LABEL_39:
        a1 = v25;
        if (v24._object <= 6)
        {
          if (v24._object == 5)
          {
            v33 = &v74;
          }

          else
          {
            v33 = &v78;
          }
        }

        else
        {
          switch(v24._object)
          {
            case 7uLL:
              v33 = &v75;
              break;
            case 8uLL:
              v33 = &v76;
              break;
            case 9uLL:
              v33 = &v77;
              break;
            default:
              goto LABEL_68;
          }
        }

        goto LABEL_65;
      }
    }

    a1 = v25;
    if (v24._object <= 1)
    {
      if (v24._object)
      {
        if (v24._object != 1)
        {
LABEL_68:
          v61 = 0;
          v62 = 0xE000000000000000;
          _StringGuts.grow(_:)(22);

          v61 = 0xD000000000000014;
          v62 = v46;
          v36 = countAndFlagsBits;
          v37._countAndFlagsBits = countAndFlagsBits;
          v37._object = v24._object;
          String.append(_:)(v37);
          sub_1000BBA14(v36, v24._object);
          goto LABEL_66;
        }

        v33 = &v70 + 1;
      }

      else
      {
        v33 = &v70;
      }
    }

    else if (v24._object == 2)
    {
      v33 = &v71;
    }

    else if (v24._object == 3)
    {
      v33 = &v72;
    }

    else
    {
      v33 = &v73;
    }

LABEL_65:
    v34 = *(v33 - 32);
LABEL_66:
    v35 = String._bridgeToObjectiveC()();

    [v5 setValue:v60 forKey:v35];
    swift_unknownObjectRelease();

    sub_10000DAF8(v64, &qword_10023BB90, &qword_1001BA370);
LABEL_7:
    sub_10000DB58(&v65._countAndFlagsBits);
  }

  if (v11 <= v12 + 1)
  {
    v17 = v12 + 1;
  }

  else
  {
    v17 = v11;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      v10 = 0;
      v66 = 0u;
      v67 = 0u;
      v12 = v18;
      v65 = 0;
      goto LABEL_19;
    }

    v10 = *(v7 + 8 * v16);
    ++v12;
    if (v10)
    {
      v12 = v16;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1000B93A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39[2] = a3;
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for URL();
  v47 = *(v11 - 8);
  v12 = *(v47 + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v39 - v16;
  objc_allocWithZone(LSApplicationRecord);

  v18 = sub_1000BB120(a1, a2, 0);
  if (!v3)
  {
    v19 = v18;
    v20 = type metadata accessor for PropertyListDecoder();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    v39[1] = PropertyListDecoder.init()();
    v23 = [v19 URL];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *&v40 = 0x696C702E6F666E49;
    *(&v40 + 1) = 0xEA00000000007473;
    (*(v7 + 104))(v10, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_10003E5C8();
    URL.appending<A>(path:directoryHint:)();
    (*(v7 + 8))(v10, v6);
    v24 = *(v47 + 8);
    v24(v15, v11);
    v25 = Data.init(contentsOf:options:)();
    v27 = v26;
    v24(v17, v11);
    sub_1000BB9AC();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

    sub_10001BABC(v25, v27);

    v46[3] = v43;
    v46[4] = v44;
    v46[1] = v41;
    v46[2] = v42;
    v46[0] = v40;
    sub_10009A2B8(v28);
    return sub_10009B180(v46);
  }

  v45 = v3;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    if ((v40 - 1) <= 1)
    {

      sub_1000BB624();
      swift_allocError();
      *v29 = 1;
      return swift_willThrow();
    }

    sub_1000BB968(v40);
  }

  *&v40 = v3;
  swift_errorRetain();
  sub_10001523C(0, &qword_10023C5D0, NSError_ptr);
  if (!swift_dynamicCast())
  {
  }

  v30 = v45;
  v31 = [v45 domain];
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  if (v32 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v34 == v35)
  {

    goto LABEL_12;
  }

  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
LABEL_12:
    if ([v30 code] == -10814)
    {
      sub_1000BB624();
      swift_allocError();
      *v37 = 0;
      swift_willThrow();
    }
  }

  swift_willThrow();
}

unint64_t sub_1000B9960@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v101 = a2;
  v3 = type metadata accessor for Date();
  v102 = *(v3 - 8);
  v103 = v3;
  v4 = *(v102 + 64);
  __chkstk_darwin(v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v104 = *(v7 - 8);
  v8 = *(v104 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v92 - v12;
  v14 = type metadata accessor for P256.Signing.PrivateKey();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = P256.Signing.PrivateKey.init(pemRepresentation:)();
  if (!v2)
  {
    v109 = v18;
    v110 = v15;
    v107 = v13;
    v108 = v7;
    v92 = v11;
    v93 = v14;
    v106 = v6;
    v20 = v123;
    v21 = *v123;
    v22 = v123[1];
    v23 = objc_allocWithZone(LSApplicationRecord);

    v24 = sub_1000BB120(v21, v22, 0);
    v25 = sub_10001523C(0, &qword_10023B318, LSApplicationRecord_ptr);
    *&v128 = &off_10021F840;
    *(&v127 + 1) = v25;
    *&v126 = v24;
    sub_10000DA64(&v126, v165);
    v26 = [*sub_10000DA7C(v165 v165[3])];
    v105 = [v26 storeItemIdentifier];

    v27 = type metadata accessor for DevelopmentPostbackConfiguration();
    v28 = *(v20 + v27[11]);
    v29 = *(v28 + 16);
    v121 = v27;
    v30 = v110;
    if (v29)
    {
      v31 = 0;
      v32 = *(v20 + v27[7]);
      v99 = 0x80000001001CC950;
      v100 = v32;
      v98 = *(v20 + v27[10]);
      v96 = (v104 + 8);
      v97 = 0x80000001001CC970;
      v33 = (v28 + 43);
      v34 = _swiftEmptyArrayStorage;
      v94 = v28;
      v95 = v29 - 1;
      while (1)
      {
        v119 = 0;
        v120 = v34;
        v35 = *(v33 - 11);
        v36 = *(v33 - 3);
        v37 = *(v33 - 2);
        v38 = *v33;
        v39 = *(v33 - 1);
        v122 = v31;
        v113 = v33;
        v115 = v36;
        LODWORD(v118) = v37;
        if (v39 == 1)
        {
          v40 = (v123 + v121[6]);
          v41 = v40[1];
          v117 = *v40;
        }

        else
        {
          v117 = 0;
          v41 = 0;
        }

        *&v126 = v100;
        dispatch thunk of CustomStringConvertible.description.getter();
        v42 = sub_1000BB678(4);
        v44 = v43;

        if (v35 < 0)
        {
          break;
        }

        result = Substring.index(_:offsetBy:limitedBy:)();
        if (v45)
        {
          result = v42;
        }

        if (v44 >> 14 < result >> 14)
        {
          goto LABEL_45;
        }

        Substring.subscript.getter();

        if (v38)
        {
          v46 = (v123 + v121[8]);
          v47 = v46[1];
          v114 = *v46;
          v116 = v47;
        }

        else
        {
          v114 = 0;
          v116 = 0;
        }

        v48 = v107;
        UUID.init()();
        v49 = UUID.uuidString.getter();
        v51 = v50;
        (*v96)(v48, v108);
        v52 = static String._fromSubstring(_:)();
        v54 = v53;

        if (v98)
        {
          v55 = v122;
          if (v98 == 1)
          {
            v56 = 0xEA00000000006461;
            v57 = 0x6F6C6E776F646572;
          }

          else
          {
            v57 = 0x6761676E652D6572;
            v56 = 0xED0000746E656D65;
          }
        }

        else
        {
          v56 = 0xE800000000000000;
          v57 = 0x64616F6C6E776F64;
          v55 = v122;
        }

        strcpy(&v156, "app-impression");
        HIBYTE(v156) = -18;
        *&v157 = v117;
        *(&v157 + 1) = v41;
        *&v158 = v49;
        *(&v158 + 1) = v51;
        *&v159 = 0;
        BYTE8(v159) = v118 ^ 1;
        *&v160 = v105;
        *(&v160 + 1) = v52;
        *&v161 = v54;
        *(&v161 + 1) = 0xD00000000000001CLL;
        *&v162 = v97;
        *(&v162 + 1) = v57;
        *&v163 = v56;
        BYTE8(v163) = 1;
        v164 = v55;
        *v125 = 0x3635325345;
        *&v125[8] = 0xE500000000000000;
        *&v125[16] = 0xD00000000000001ELL;
        *&v125[24] = v99;
        v132 = v162;
        v133 = v163;
        *&v134 = v55;
        v128 = v158;
        v129 = v159;
        v130 = v160;
        v131 = v161;
        v126 = v156;
        v127 = v157;
        v58 = sub_1000BB714();
        v59 = sub_1000BB768();
        v60 = sub_1000BB7BC();
        v61 = sub_1000BB810();
        v62 = v109;
        v63 = v119;
        v64 = static JWS.compactJWS(from:payload:signingKey:)(v125, &v126, v109, &type metadata for Postback.JWSHeader, &type metadata for Postback.JWSPayload, v58, v59, v60, v61);
        if (v63)
        {
          (*(v110 + 8))(v62, v93);

          sub_10000DB58(v165);
          return sub_1000BB864(&v156);
        }

        v66 = v64;
        v67 = v65;
        sub_1000BB864(&v156);
        v68 = *(v123 + v121[9]) == 0;
        v69 = 2003134838;
        if (*(v123 + v121[9]))
        {
          v69 = 0x6B63696C63;
        }

        v112 = v69;
        v70 = 0xE400000000000000;
        if (!v68)
        {
          v70 = 0xE500000000000000;
        }

        v118 = v70;
        v71 = v123 + v121[5];
        v72 = URL.absoluteString.getter();
        v117 = v73;
        v111 = v72;
        if (v115)
        {
          if (v115 == 1)
          {
            v119 = 0xE600000000000000;
            v74 = 0x657372616F63;
          }

          else
          {
            v119 = 0xE400000000000000;
            v74 = 1701734758;
          }
        }

        else
        {
          v119 = 0xE400000000000000;
          v74 = 1701736302;
        }

        JWS.init(compactJWS:)(v66, v67, &type metadata for Postback.JWSPayload, v58, v59, v60, v61, &v143);
        v140 = v153;
        v141 = v154;
        v136 = v149;
        v137 = v150;
        v138 = v151;
        v139 = v152;
        v132 = v145;
        v133 = v146;
        v134 = v147;
        v135 = v148;
        v130 = v143;
        v131 = v144;
        *&v125[224] = v153;
        *&v125[240] = v154;
        *&v125[160] = v149;
        *&v125[176] = v150;
        *&v125[192] = v151;
        *&v125[208] = v152;
        *&v125[96] = v145;
        *&v125[112] = v146;
        *&v125[128] = v147;
        *&v125[144] = v148;
        v142 = v155;
        *v125 = v112;
        *&v125[8] = v118;
        *&v125[16] = v111;
        *&v125[24] = v117;
        *&v125[32] = v74;
        *&v125[40] = v119;
        *&v125[48] = v114;
        *&v125[56] = v116;
        *&v125[256] = v155;
        *&v125[64] = v143;
        *&v125[80] = v144;
        *&v126 = v112;
        *(&v126 + 1) = v118;
        *&v127 = v111;
        *(&v127 + 1) = v117;
        *&v128 = v74;
        *(&v128 + 1) = v119;
        *&v129 = v114;
        *(&v129 + 1) = v116;
        sub_1000BB8B8(v125, &v124);
        sub_1000BB914(&v126);
        v34 = v120;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v30 = v110;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = sub_100088E34(0, *(v34 + 2) + 1, 1, v34);
        }

        v76 = v106;
        v78 = *(v34 + 2);
        v77 = *(v34 + 3);
        if (v78 >= v77 >> 1)
        {
          v34 = sub_100088E34((v77 > 1), v78 + 1, 1, v34);
        }

        *(v34 + 2) = v78 + 1;
        result = memcpy(&v34[264 * v78 + 32], v125, 0x108uLL);
        if (v95 == v122)
        {
          v79 = v93;
          goto LABEL_39;
        }

        v31 = v122 + 1;
        v33 = v113 + 16;
        if ((v122 + 1) >= *(v94 + 16))
        {
          goto LABEL_46;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v34 = _swiftEmptyArrayStorage;
    v79 = v93;
    v76 = v106;
LABEL_39:
    v80 = v92;
    UUID.init()();
    v81 = UUID.uuidString.getter();
    v83 = v82;
    (*(v104 + 8))(v80, v108);
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v85 = v84;
    (*(v102 + 8))(v76, v103);
    result = (*(v30 + 8))(v109, v79);
    v86 = v85 * 1000.0;
    if (COERCE__INT64(fabs(v85 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v87 = v101;
    if (v86 <= -1.0)
    {
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if (v86 >= 1.84467441e19)
    {
LABEL_49:
      __break(1u);
      return result;
    }

    v88 = v86;
    v89 = v123 + v121[12];
    v90 = *v89;
    LOBYTE(v126) = v89[8];
    result = sub_10000DB58(v165);
    v91 = v126;
    *v87 = v105;
    *(v87 + 8) = v34;
    *(v87 + 16) = v81;
    *(v87 + 24) = v83;
    *(v87 + 32) = v88;
    *(v87 + 40) = 0;
    *(v87 + 48) = v90;
    *(v87 + 56) = v91 & 1;
  }

  return result;
}

uint64_t sub_1000BA604()
{
  v1 = v0;
  v57 = type metadata accessor for BarktivityType();
  v2 = *(*(v57 - 8) + 64);
  v3 = __chkstk_darwin(v57);
  v52 = (v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v55 = v51 - v5;
  v59 = type metadata accessor for Date();
  v56 = *(v59 - 8);
  v6 = *(v56 + 64);
  __chkstk_darwin(v59);
  v58 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v54 = v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v15 = v51 - v14;
  v16 = __chkstk_darwin(v13);
  v53 = v51 - v17;
  __chkstk_darwin(v16);
  v19 = v51 - v18;
  *&v69 = 0xD00000000000002ELL;
  *(&v69 + 1) = 0x80000001001CC990;
  *&v70 = 1;
  WORD4(v70) = 0;
  BYTE10(v70) = 0;
  v71 = xmmword_1001BC2A0;
  *&v66 = 0xD00000000000003BLL;
  *(&v66 + 1) = 0x80000001001CC9C0;
  *&v67 = 2;
  WORD4(v67) = 1;
  BYTE10(v67) = 0;
  v68 = 0uLL;
  v62 = [objc_opt_self() standardUserDefaults];
  v20 = sub_1000B86A8();
  v21 = Logger.developerMode.unsafeMutableAddressor();
  v22 = v9[2];
  v61 = v21;
  v23 = v8;
  v60 = v22;
  (v22)(v19);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109120;
    *(v26 + 4) = v20 & 1;
    _os_log_impl(&_mh_execute_header, v24, v25, "Broadcasting developer mode isEnabled: %{BOOL}d", v26, 8u);
  }

  v27 = v9[1];
  v28 = v23;
  v27(v19, v23);
  if (sub_1000B86A8())
  {
    v29 = sub_1000BC560(0, 6);
    v51[1] = v27;
    v51[0] = v23;
    if (v30)
    {
      v60(v15, v61, v23);
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&_mh_execute_header, v31, v32, "Failed to get cached reset time, falling back to recovery reset date", v33, 2u);
      }

      v27(v15, v23);
      v34 = v58;
      Date.init(timeIntervalSinceNow:)();
      v35 = v56;
    }

    else
    {
      v39 = v29;
      v40 = v53;
      v60(v53, v61, v28);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = v39;
        _os_log_impl(&_mh_execute_header, v41, v42, "Cached reset time found: %f", v43, 0xCu);
      }

      v27(v40, v28);
      v34 = v58;
      Date.init(timeIntervalSince1970:)();
      v35 = v56;
    }

    sub_10000DA7C(v1, v1[3]);
    v64 = &type metadata for DeveloperModeResetBarktivity;
    v65 = &off_100222B58;
    v44 = swift_allocObject();
    v63[0] = v44;
    v45 = v70;
    v44[1] = v69;
    v44[2] = v45;
    v44[3] = v71;
    v46 = v55;
    v47 = v59;
    (*(v35 + 16))(v55, v34, v59);
    swift_storeEnumTagMultiPayload();
    sub_1000BD4C4(v63, v46);
    sub_1000BBB08(v46);
    sub_10000DB58(v63);
    sub_10000DA7C(v1, v1[3]);
    v64 = &type metadata for DevelopmentPostbackTransmissionBarktivity;
    v65 = &off_10021C740;
    v48 = swift_allocObject();
    v63[0] = v48;
    v49 = v67;
    v48[1] = v66;
    v48[2] = v49;
    v48[3] = v68;
    v50 = v52;
    *v52 = 0x4076800000000000;
    swift_storeEnumTagMultiPayload();
    sub_1000BD4C4(v63, v50);

    sub_1000BBB08(v50);
    (*(v35 + 8))(v34, v47);
    return sub_10000DB58(v63);
  }

  else
  {
    v36 = sub_10000DA7C(v1, v1[3]);
    sub_1000BB1FC(&v69, v36, &type metadata for DeveloperModeResetBarktivity, &off_100222B58, &unk_10021C7C0, sub_1000BBBC0);
    sub_1000BBA28(&v69);
    v37 = sub_10000DA7C(v1, v1[3]);
    sub_1000BB1FC(&v66, v37, &type metadata for DevelopmentPostbackTransmissionBarktivity, &off_10021C740, &unk_10021C7E8, sub_1000BBB64);

    return sub_1000BBA7C(&v66);
  }
}

unint64_t sub_1000BAF6C(char a1)
{
  if (a1)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1 & 1) != 0 && (sub_1000B86A8())
    {
      goto LABEL_4;
    }

LABEL_6:
    v5 = 0;
    LOBYTE(v4) = 1;
    return v5 | (v4 << 32);
  }

  if ((sub_1000B86A8() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_4:
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_1000BC2CC(0, 2);

  v4 = HIDWORD(v3) & 1;
  v5 = v3;
  return v5 | (v4 << 32);
}

uint64_t sub_1000BB054(char a1)
{
  if (a1)
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v1 & 1) != 0 && (sub_1000B86A8())
    {
      goto LABEL_4;
    }
  }

  else
  {

    if (sub_1000B86A8())
    {
LABEL_4:
      v2 = [objc_opt_self() standardUserDefaults];
      v3 = sub_1000BC488(0, 1);

      return v3;
    }
  }

  return 2;
}

id sub_1000BB120(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_1000BB1FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t **))
{
  v45[3] = a3;
  v45[4] = a4;
  v9 = swift_allocObject();
  v45[0] = v9;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16);
  v13 = *(a1 + 32);
  v9[1] = *a1;
  v9[2] = v12;
  v9[3] = v13;
  v14 = objc_opt_self();
  a6(a1, &v42);
  v15 = [v14 standardUserDefaults];
  v16 = sub_1000BC3B0(v10, v11);
  v18 = v17;

  if (v18)
  {
    v19 = *sub_10000DA7C(a2, a2[3]);
    v20 = String._bridgeToObjectiveC()();
    v21 = [v19 deregisterTaskWithIdentifier:v20];

    v22 = [v14 standardUserDefaults];
    v42 = 0;
    v43 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v42 = 0xD000000000000014;
    v43 = 0x80000001001CBE80;
    v23._countAndFlagsBits = v10;
    v23._object = v11;
    String.append(_:)(v23);
    v24 = String._bridgeToObjectiveC()();

    [v22 removeObjectForKey:v24];

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_10000DAC0(v25, qword_10023FC58);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v42 = v29;
      *v28 = 136315394;
      v30 = sub_10017AD04(v16, v18, &v42);

      *(v28 + 4) = v30;
      *(v28 + 12) = 1024;
      *(v28 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v26, v27, "Attempted to deregister '%s' with result: %{BOOL}d", v28, 0x12u);
      sub_10000DB58(v29);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    sub_10000DAC0(v31, qword_10023FC58);
    sub_10000CE28(v45, &v42);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v41 = v35;
      *v34 = 136315138;
      v36 = sub_10000DA7C(&v42, v44);
      v37 = *v36;
      v38 = v36[1];

      sub_10000DB58(&v42);
      v39 = sub_10017AD04(v37, v38, &v41);

      *(v34 + 4) = v39;
      _os_log_impl(&_mh_execute_header, v32, v33, "No cached barktivity found for activity: %s", v34, 0xCu);
      sub_10000DB58(v35);
    }

    else
    {

      sub_10000DB58(&v42);
    }
  }

  return sub_10000DB58(v45);
}

unint64_t sub_1000BB624()
{
  result = qword_10023C5D8;
  if (!qword_10023C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5D8);
  }

  return result;
}

uint64_t sub_1000BB678(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t sub_1000BB714()
{
  result = qword_10023C5E0;
  if (!qword_10023C5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5E0);
  }

  return result;
}

unint64_t sub_1000BB768()
{
  result = qword_10023C5E8;
  if (!qword_10023C5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5E8);
  }

  return result;
}

unint64_t sub_1000BB7BC()
{
  result = qword_10023C5F0;
  if (!qword_10023C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5F0);
  }

  return result;
}

unint64_t sub_1000BB810()
{
  result = qword_10023C5F8;
  if (!qword_10023C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C5F8);
  }

  return result;
}

unint64_t sub_1000BB968(unint64_t result)
{
  if (result >= 0xC)
  {
  }

  return result;
}

unint64_t sub_1000BB9AC()
{
  result = qword_10023C600;
  if (!qword_10023C600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C600);
  }

  return result;
}

uint64_t sub_1000BBA00(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_1000BBA14(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xA)
  {
  }

  return result;
}

uint64_t sub_1000BBAD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BBB08(uint64_t a1)
{
  v2 = type metadata accessor for BarktivityType();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BBC2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000BBC74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000BBCD8(uint64_t a1)
{
  result = sub_1000BB624();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000BBD04()
{
  result = qword_10023C608;
  if (!qword_10023C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C608);
  }

  return result;
}

void sub_1000BBD5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v1;
    v4 = (a1 + 32);
    do
    {
      v5 = sub_10000DA7C(v3, v3[3]);
      v6 = v4[3];
      v7 = v4[4];
      sub_10000DA7C(v4, v6);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      sub_10000CE28(v4, v17);
      v11 = swift_allocObject();
      sub_10000DA64(v17, v11 + 16);
      v12 = *v5;
      v13 = String._bridgeToObjectiveC()();
      v14 = swift_allocObject();
      v14[2] = v8;
      v14[3] = v10;
      v14[4] = &unk_1001BC4A0;
      v14[5] = v11;
      aBlock[4] = sub_1000BFD14;
      aBlock[5] = v14;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000BC264;
      aBlock[3] = &unk_10021CAE0;
      v15 = _Block_copy(aBlock);

      [v12 registerForTaskWithIdentifier:v13 usingQueue:0 launchHandler:v15];
      _Block_release(v15);

      v4 += 5;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_1000BBF28(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = result;
    v3 = objc_opt_self();
    v4 = v2 + 32;
    v25 = &v28;
    v5 = &off_100235000;
    do
    {
      sub_10000CE28(v4, v34);
      v6 = v35;
      v7 = v36;
      sub_10000DA7C(v34, v35);
      v8 = (*(v7 + 8))(v6, v7);
      v10 = v9;
      v11 = [v3 v5[455]];
      *&aBlock = 0;
      *(&aBlock + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *&aBlock = 0xD000000000000014;
      *(&aBlock + 1) = 0x80000001001CBE80;
      v12._countAndFlagsBits = v8;
      v12._object = v10;
      String.append(_:)(v12);

      v13 = String._bridgeToObjectiveC()();

      v14 = [v11 objectForKey:v13];

      if (v14)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();

        sub_100025CA4(v31, &aBlock);
      }

      else
      {

        aBlock = 0u;
        v28 = 0u;
      }

      sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
      if (swift_dynamicCast())
      {
        v15 = v33;
        if (v33)
        {
          v16 = v32;
          v17 = sub_10000DA7C(v26, v26[3]);
          sub_10000CE28(v34, v31);
          v18 = swift_allocObject();
          *(v18 + 16) = v16;
          *(v18 + 24) = v15;
          sub_10000DA64(v31, v18 + 32);
          v19 = v5;
          v20 = *v17;

          v21 = String._bridgeToObjectiveC()();
          v22 = swift_allocObject();
          v22[2] = v16;
          v22[3] = v15;
          v22[4] = &unk_1001BC488;
          v22[5] = v18;
          v29 = sub_1000BFD14;
          v30 = v22;
          *&aBlock = _NSConcreteStackBlock;
          *(&aBlock + 1) = 1107296256;
          *&v28 = sub_1000BC264;
          *(&v28 + 1) = &unk_10021C9F0;
          v23 = _Block_copy(&aBlock);

          v24 = v20;
          v5 = v19;
          [v24 registerForTaskWithIdentifier:v21 usingQueue:0 launchHandler:v23];
          _Block_release(v23);
        }
      }

      result = sub_10000DB58(v34);
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_1000BC264(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

unint64_t sub_1000BC2CC(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | ((v5 ^ 1u) << 32);
}

uint64_t sub_1000BC3B0(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BC488(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_1000BC578(uint64_t a1, uint64_t a2)
{
  sub_100083550(a1, a2);
  v3 = String._bridgeToObjectiveC()();

  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100025CA4(&v8, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  sub_10000CDE0(&qword_10023BB90, &qword_1001BA370);
  v5 = swift_dynamicCast();
  v6 = v8;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1000BC654(uint64_t a1)
{
  v1[20] = a1;
  v2 = type metadata accessor for Logger();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v5 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return _swift_task_switch(sub_1000BC79C, 0, 0);
}

uint64_t sub_1000BC79C()
{
  v47 = v0;
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  v1 = v0[10].opaque[0];
  v0[14].opaque[0] = sub_10000DAC0(v0[10].opaque[1], qword_10023FC58);
  sub_10000CE28(v1, &v0[1]);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v45 = v5;
    *v4 = 136315138;
    v6 = v0[2].opaque[1];
    v7 = v0[3].opaque[0];
    sub_10000DA7C(v0[1].opaque, v6);
    v8 = (*(v7 + 8))(v6, v7);
    v10 = v9;
    sub_10000DB58(&v0[1]);
    v11 = sub_10017AD04(v8, v10, &v45);

    *(v4 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v2, v3, "Running static activity: %s", v4, 0xCu);
    sub_10000DB58(v5);
  }

  else
  {

    sub_10000DB58(&v0[1]);
  }

  v13 = v0[13].opaque[0];
  v12 = v0[13].opaque[1];
  v14 = v0[10].opaque[1];
  v15 = v0[11].opaque[0];
  v16 = v0[10].opaque[0];
  v45 = 0;
  v46 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);

  v45 = 0xD00000000000001CLL;
  v46 = 0x80000001001CCAC0;
  v17 = v16[3];
  v18 = v16[4];
  sub_10000DA7C(v16, v17);
  v19._countAndFlagsBits = (*(v18 + 8))(v17, v18);
  String.append(_:)(v19);

  v20 = v45;
  v21 = v46;
  type metadata accessor for Transaction();
  v0[14].opaque[1] = swift_initStackObject();
  v0[15].opaque[0] = sub_1001799E0(v20, v21);
  (*(v15 + 56))(v12, 1, 1, v14);
  v22 = swift_task_alloc();
  v0[15].opaque[1] = v22;
  *(v22 + 16) = v16;
  sub_1000BF634(v12, v13);
  type metadata accessor for LogActivity();
  v23 = swift_allocObject();
  v0[16].opaque[0] = v23;
  if (qword_100239D28 != -1)
  {
    swift_once();
  }

  v24 = _os_activity_create(&_mh_execute_header, "Activity Manager: Static Activity", qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
  v0[9].opaque[0] = 0;
  v0[9].opaque[1] = 0;
  os_activity_scope_enter(v24, v0 + 9);
  swift_unknownObjectRelease();
  *(v23 + 16) = v0[9];
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v25 = v0[6].opaque[1];
  if (v25)
  {
    v26 = v0[6].opaque[0];
    v27 = v0[7].opaque[0];
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v25 = swift_allocObject();
    *(v25 + 36) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = -1;
  }

  v0[16].opaque[1] = v25;
  v28 = v0[12].opaque[1];
  v29 = v0[10].opaque[1];
  v30 = v0[11].opaque[0];
  sub_1000BF634(v0[13].opaque[0], v28);
  v31 = (*(v30 + 48))(v28, 1, v29);
  v32 = v0[13].opaque[0];
  if (v31 == 1)
  {
    sub_10000DAF8(v0[13].opaque[0], &qword_10023A2B8, &qword_1001BC460);
    v33 = 0;
  }

  else
  {
    v34 = v0[12].opaque[0];
    v35 = v0[11].opaque[0];
    v36 = v0[11].opaque[1];
    v37 = v0[10].opaque[1];
    (*(v35 + 32))(v34, v0[12].opaque[1], v37);
    (*(v35 + 16))(v36, v34, v37);
    v38 = type metadata accessor for SignpostInterval();
    v39 = *(v38 + 48);
    v40 = *(v38 + 52);
    swift_allocObject();
    v33 = sub_1000F61B0("Activity Manager: Static Activity", 33, 2, v36);
    (*(v35 + 8))(v34, v37);
    sub_10000DAF8(v32, &qword_10023A2B8, &qword_1001BC460);
  }

  v0[17].opaque[0] = v33;
  v0[7].opaque[1] = v23;
  v0[8].opaque[0] = v25;
  v0[8].opaque[1] = v33;
  v41 = swift_task_alloc();
  v0[17].opaque[1] = v41;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = -1;
  *(v41 + 40) = v23;
  *(v41 + 48) = v25;
  *(v41 + 56) = v33;
  *(v41 + 64) = &unk_1001BC4B0;
  *(v41 + 72) = v22;
  v42 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v43 = swift_task_alloc();
  v0[18].opaque[0] = v43;
  *v43 = v0;
  v43[1] = sub_1000BCDC8;
  v49 = 114;
  v50 = &type metadata for () + 8;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000BCDC8()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v15 = *v1;

  if (v0)
  {
    v5 = v2[34];
    v4 = v2[35];
    v8 = v2 + 32;
    v6 = v2[32];
    v7 = v8[1];

    v9 = sub_1000BD170;
  }

  else
  {
    v11 = v2[34];
    v10 = v2[35];
    v12 = v2[32];
    v13 = v2[33];

    v9 = sub_1000BCF68;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000BCF68()
{
  v26 = v0;
  v1 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v7 = v0[27];
  v6 = v0[28];

  sub_10000DAF8(v7, &qword_10023A2B8, &qword_1001BC460);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[30];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);

    v16 = sub_10017AD04(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Transaction %s out of scope", v12, 0xCu);
    sub_10000DB58(v13);
  }

  else
  {
    v17 = v0[30];
  }

  v19 = v0[26];
  v18 = v0[27];
  v21 = v0[24];
  v20 = v0[25];
  v22 = v0[23];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000BD170()
{
  v1 = v0[33];
  v2 = v0[34];
  v3 = v0[32];
}

uint64_t sub_1000BD224()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1000BFD2C;

  return v8(v2, v3);
}

void sub_1000BD348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10000DA7C(v3, v3[3]);
  sub_10000CE28(a1, v14);
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  sub_10000DA64(v14, v8 + 32);
  v9 = *v7;

  v10 = String._bridgeToObjectiveC()();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = &unk_1001BC458;
  v11[5] = v8;
  aBlock[4] = sub_1000BF570;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BC264;
  aBlock[3] = &unk_10021C978;
  v12 = _Block_copy(aBlock);

  [v9 registerForTaskWithIdentifier:v10 usingQueue:0 launchHandler:v12];
  _Block_release(v12);
}

void sub_1000BD4C4(void *a1, uint64_t a2)
{
  v3 = v2;
  v107 = a2;
  v5 = type metadata accessor for Date();
  v110 = *(v5 - 8);
  v111 = v5;
  v6 = *(v110 + 64);
  __chkstk_darwin(v5);
  v106 = &v102 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for BarktivityType();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v18 = a1[4];
  v19 = sub_10000DA7C(a1, v17);
  v108 = v3;
  sub_1000BEF8C(v19, v3, v17, v18);
  v20 = a1[3];
  v21 = a1[4];
  sub_10000DA7C(a1, v20);
  v105 = (*(v21 + 8))(v20, v21);
  v109 = v22;
  v23 = a1[3];
  v24 = a1[4];
  sub_10000DA7C(a1, v23);
  if ((*(v24 + 40))(v23, v24))
  {
    v25 = a1[3];
    v26 = a1[4];
    sub_10000DA7C(a1, v25);
    v112 = (*(v26 + 8))(v25, v26);
    v113 = v27;
    v28._countAndFlagsBits = 45;
    v28._object = 0xE100000000000000;
    String.append(_:)(v28);
    UUID.init()();
    sub_1000BF470();
    v29._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v29);

    (*(v13 + 8))(v16, v12);
    v31 = v112;
    v30 = v113;
  }

  else
  {
    v32 = a1[3];
    v33 = a1[4];
    sub_10000DA7C(a1, v32);
    v31 = (*(v33 + 8))(v32, v33);
    v30 = v34;
  }

  v35 = v108;
  sub_1000BD348(a1, v31, v30);
  sub_1000BF40C(v107, v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v11;
    v37 = a1[3];
    v38 = a1[4];
    sub_10000DA7C(a1, v37);
    v39 = (*(v38 + 56))(v37, v38);
    v40 = a1[3];
    v41 = a1[4];
    sub_10000DA7C(a1, v40);
    v42 = (*(v41 + 16))(v40, v41);
    v43 = a1[3];
    v44 = a1[4];
    sub_10000DA7C(a1, v43);
    LOBYTE(v44) = (*(v44 + 24))(v43, v44);
    v45 = a1[3];
    v46 = a1[4];
    sub_10000DA7C(a1, v45);
    v47 = (*(v46 + 32))(v45, v46);
    v48 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
    v49 = String._bridgeToObjectiveC()();
    v50 = [v48 initWithIdentifier:v49];

    v51 = v50;
    [v51 setPriority:v42];
    [v51 setRequiresNetworkConnectivity:v44 & 1];
    [v51 setRequiresExternalPower:v47 & 1];
    [v51 setInterval:v36];
    [v51 setMinDurationBetweenInstances:v36 * 0.8];
    [v51 setRandomInitialDelay:v39];

    v52 = *sub_10000DA7C(v35, v35[3]);
    v112 = 0;
    if ([v52 submitTaskRequest:v51 error:&v112])
    {
      v53 = v112;

LABEL_9:
      v78 = [objc_opt_self() standardUserDefaults];
      v114 = &type metadata for String;
      v112 = v31;
      v113 = v30;
      sub_10008393C(&v112, v105, v109);

      sub_10000DAF8(&v112, &qword_10023BB90, &qword_1001BA370);
      return;
    }

    v79 = v112;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    sub_10000DAC0(v80, qword_10023FC58);

    swift_errorRetain();
    v81 = Logger.logObject.getter();
    v82 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v112 = v85;
      *v83 = 136315394;
      v86 = sub_10017AD04(v31, v30, &v112);

      *(v83 + 4) = v86;
      *(v83 + 12) = 2112;
      swift_errorRetain();
      v87 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 14) = v87;
      *v84 = v87;
      _os_log_impl(&_mh_execute_header, v81, v82, "Failed to schedule repeating system task %s with error: %@", v83, 0x16u);
      sub_10000DAF8(v84, &qword_100239F10, &qword_1001B4FD0);

      sub_10000DB58(v85);
    }

    else
    {
    }

    swift_willThrow();
  }

  else
  {
    v54 = *(v110 + 32);
    v104 = v30;
    v55 = v106;
    v54(v106, v11, v111);
    v56 = a1[3];
    v57 = a1[4];
    sub_10000DA7C(a1, v56);
    v58 = (*(v57 + 48))(v56, v57);
    v59 = a1[3];
    v60 = a1[4];
    sub_10000DA7C(a1, v59);
    v61 = (*(v60 + 56))(v59, v60);
    v62 = a1[3];
    v63 = a1[4];
    sub_10000DA7C(a1, v62);
    v103 = (*(v63 + 16))(v62, v63);
    v64 = a1[3];
    v65 = a1[4];
    sub_10000DA7C(a1, v64);
    LOBYTE(v64) = (*(v65 + 24))(v64, v65);
    v66 = a1[3];
    v67 = a1[4];
    sub_10000DA7C(a1, v66);
    v68 = v35;
    v69 = (*(v67 + 32))(v66, v67);
    v70 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
    v107 = v31;
    v71 = v55;
    v30 = v104;
    v72 = String._bridgeToObjectiveC()();
    v73 = [v70 initWithIdentifier:v72];

    v74 = v73;
    [v74 setPriority:v103];
    [v74 setRequiresNetworkConnectivity:v64 & 1];
    [v74 setRequiresExternalPower:v69 & 1];
    Date.timeIntervalSinceNow.getter();
    [v74 setScheduleAfter:?];
    Date.timeIntervalSinceNow.getter();
    [v74 setTrySchedulingBefore:v58 + v75];
    [v74 setRandomInitialDelay:v61];

    v76 = *sub_10000DA7C(v68, v68[3]);
    v112 = 0;
    if ([v76 submitTaskRequest:v74 error:&v112])
    {
      v77 = v112;

      (*(v110 + 8))(v71, v111);
      v31 = v107;
      goto LABEL_9;
    }

    v88 = v111;
    v89 = v112;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v90 = type metadata accessor for Logger();
    sub_10000DAC0(v90, qword_10023FC58);

    swift_errorRetain();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();

    v93 = os_log_type_enabled(v91, v92);
    v94 = v107;
    if (v93)
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v112 = v97;
      *v95 = 136315394;
      v98 = sub_10017AD04(v94, v30, &v112);

      *(v95 + 4) = v98;
      *(v95 + 12) = 2112;
      swift_errorRetain();
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v95 + 14) = v99;
      *v96 = v99;
      _os_log_impl(&_mh_execute_header, v91, v92, "Failed to schedule non-repeating system task %s with error: %@", v95, 0x16u);
      sub_10000DAF8(v96, &qword_100239F10, &qword_1001B4FD0);
      v100 = v111;

      sub_10000DB58(v97);

      v101 = v110;
    }

    else
    {

      v101 = v110;
      v100 = v88;
    }

    swift_willThrow();

    (*(v101 + 8))(v106, v100);
  }
}

uint64_t sub_1000BE07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[16] = a2;
  v3[17] = a3;
  v3[15] = a1;
  v4 = type metadata accessor for Logger();
  v3[18] = v4;
  v5 = *(v4 - 8);
  v3[19] = v5;
  v6 = *(v5 + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v7 = *(*(sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460) - 8) + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_1000BE1C8, 0, 0);
}

uint64_t sub_1000BE1C8()
{
  v43 = v0;
  if (qword_100239CB8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  *(v0 + 200) = sub_10000DAC0(*(v0 + 144), qword_10023FC58);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 120);
    v4 = *(v0 + 128);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v41 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_10017AD04(v5, v4, &v41);
    _os_log_impl(&_mh_execute_header, v2, v3, "Running barktivity: %s", v6, 0xCu);
    sub_10000DB58(v7);
  }

  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);
  v13 = *(v0 + 136);
  v14 = *(v0 + 120);
  v41 = 0;
  v42 = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v41 = 0xD000000000000017;
  v42 = 0x80000001001CCA20;
  v15._countAndFlagsBits = v14;
  v15._object = v12;
  String.append(_:)(v15);
  v16 = v41;
  v17 = v42;
  type metadata accessor for Transaction();
  *(v0 + 208) = swift_initStackObject();
  *(v0 + 216) = sub_1001799E0(v16, v17);
  (*(v11 + 56))(v8, 1, 1, v10);
  v18 = swift_task_alloc();
  *(v0 + 224) = v18;
  *(v18 + 16) = v13;
  sub_1000BF634(v8, v9);
  type metadata accessor for LogActivity();
  v19 = swift_allocObject();
  *(v0 + 232) = v19;
  if (qword_100239D28 != -1)
  {
    swift_once();
  }

  v20 = _os_activity_create(&_mh_execute_header, "Activity Manager: Barktivity", qword_10023DAF8, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  os_activity_scope_enter(v20, (v0 + 104));
  swift_unknownObjectRelease();
  *(v19 + 16) = *(v0 + 104);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v21 = *(v0 + 64);
  if (v21)
  {
    v22 = *(v0 + 56);
    v23 = *(v0 + 72);
  }

  else
  {
    sub_10000CDE0(&qword_10023A2C0, &qword_1001B41E8);
    v21 = swift_allocObject();
    *(v21 + 36) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = -1;
  }

  *(v0 + 240) = v21;
  v24 = *(v0 + 176);
  v25 = *(v0 + 144);
  v26 = *(v0 + 152);
  sub_1000BF634(*(v0 + 184), v24);
  v27 = (*(v26 + 48))(v24, 1, v25);
  v28 = *(v0 + 184);
  if (v27 == 1)
  {
    sub_10000DAF8(*(v0 + 184), &qword_10023A2B8, &qword_1001BC460);
    v29 = 0;
  }

  else
  {
    v30 = *(v0 + 168);
    v31 = *(v0 + 152);
    v32 = *(v0 + 160);
    v33 = *(v0 + 144);
    (*(v31 + 32))(v30, *(v0 + 176), v33);
    (*(v31 + 16))(v32, v30, v33);
    v34 = type metadata accessor for SignpostInterval();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v29 = sub_1000F61B0("Activity Manager: Barktivity", 28, 2, v32);
    (*(v31 + 8))(v30, v33);
    sub_10000DAF8(v28, &qword_10023A2B8, &qword_1001BC460);
  }

  *(v0 + 248) = v29;
  *(v0 + 80) = v19;
  *(v0 + 88) = v21;
  *(v0 + 96) = v29;
  v37 = swift_task_alloc();
  *(v0 + 256) = v37;
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = -1;
  *(v37 + 40) = v19;
  *(v37 + 48) = v21;
  *(v37 + 56) = v29;
  *(v37 + 64) = &unk_1001BC470;
  *(v37 + 72) = v18;
  v38 = async function pointer to TaskLocal.withValue<A>(_:operation:isolation:file:line:)[1];

  v39 = swift_task_alloc();
  *(v0 + 264) = v39;
  *v39 = v0;
  v39[1] = sub_1000BE770;
  v45 = 114;
  v46 = &type metadata for () + 8;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)();
}

uint64_t sub_1000BE770()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v15 = *v1;

  if (v0)
  {
    v5 = v2[31];
    v4 = v2[32];
    v8 = v2 + 29;
    v6 = v2[29];
    v7 = v8[1];

    v9 = sub_1000BEB18;
  }

  else
  {
    v11 = v2[31];
    v10 = v2[32];
    v12 = v2[29];
    v13 = v2[30];

    v9 = sub_1000BE910;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1000BE910()
{
  v26 = v0;
  v1 = v0[30];
  v2 = v0[31];
  v4 = v0[28];
  v3 = v0[29];
  v5 = v0[27];
  v7 = v0[24];
  v6 = v0[25];

  sub_10000DAF8(v7, &qword_10023A2B8, &qword_1001BC460);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[27];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 136315138;
    v14 = *(v11 + 24);
    v15 = *(v11 + 32);

    v16 = sub_10017AD04(v14, v15, &v25);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Transaction %s out of scope", v12, 0xCu);
    sub_10000DB58(v13);
  }

  else
  {
    v17 = v0[27];
  }

  v19 = v0[23];
  v18 = v0[24];
  v21 = v0[21];
  v20 = v0[22];
  v22 = v0[20];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1000BEB18()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
}

uint64_t sub_1000BEBCC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  sub_10000DA7C(v1, v2);
  if ((*(v3 + 40))(v2, v3))
  {
    v4 = v1[3];
    v5 = v1[4];
    sub_10000DA7C(*(v0 + 16), v4);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    v9 = [objc_opt_self() standardUserDefaults];
    _StringGuts.grow(_:)(22);

    v10._countAndFlagsBits = v6;
    v10._object = v8;
    String.append(_:)(v10);

    v11 = String._bridgeToObjectiveC()();

    [v9 removeObjectForKey:v11];
  }

  v13 = v1[3];
  v12 = v1[4];
  sub_10000DA7C(*(v0 + 16), v13);
  v14 = *(v12 + 64);
  v18 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 24) = v16;
  *v16 = v0;
  v16[1] = sub_1000BEE10;

  return v18(v13, v12);
}

uint64_t sub_1000BEE10()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000BEF5C@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1000BEF8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v41[3] = a3;
  v41[4] = a4;
  sub_10005CA24(v41);
  (*(*(a3 - 8) + 16))();
  v7 = *(a4 + 8);
  v8 = v7(a3, a4);
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 standardUserDefaults];
  v39._countAndFlagsBits = v8;
  v13 = sub_1000BC3B0(v8, v10);
  v15 = v14;

  if (v15)
  {
    v16 = *sub_10000DA7C(a2, a2[3]);
    v17 = String._bridgeToObjectiveC()();
    v18 = [v16 deregisterTaskWithIdentifier:v17];

    v19 = [v11 standardUserDefaults];
    _StringGuts.grow(_:)(22);

    v40[0] = 0xD000000000000014;
    v40[1] = 0x80000001001CBE80;
    v20._countAndFlagsBits = v39._countAndFlagsBits;
    v20._object = v10;
    String.append(_:)(v20);

    v21 = String._bridgeToObjectiveC()();

    [v19 removeObjectForKey:v21];

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000DAC0(v22, qword_10023FC58);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v40[0] = v26;
      *v25 = 136315394;
      v27 = sub_10017AD04(v13, v15, v40);

      *(v25 + 4) = v27;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v18;
      _os_log_impl(&_mh_execute_header, v23, v24, "Attempted to deregister '%s' with result: %{BOOL}d", v25, 0x12u);
      sub_10000DB58(v26);
    }

    else
    {
    }
  }

  else
  {

    if (qword_100239CB8 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_10000DAC0(v28, qword_10023FC58);
    sub_10000CE28(v41, v40);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = v7;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v39._object = v33;
      *v32 = 136315138;
      sub_10000DA7C(v40, v40[3]);
      v34 = v31(a3, a4);
      v36 = v35;
      sub_10000DB58(v40);
      v37 = sub_10017AD04(v34, v36, &v39._object);

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v29, v30, "No cached barktivity found for activity: %s", v32, 0xCu);
      sub_10000DB58(v33);
    }

    else
    {

      sub_10000DB58(v40);
    }
  }

  return sub_10000DB58(v41);
}

uint64_t sub_1000BF40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BarktivityType();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000BF470()
{
  result = qword_10023C610;
  if (!qword_10023C610)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C610);
  }

  return result;
}

uint64_t sub_1000BF4CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000152E0;

  return sub_1000BE07C(v2, v3, v0 + 32);
}

uint64_t sub_1000BF57C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BF594(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10000BD30;

  return sub_1000BEBAC(a1, v4);
}

uint64_t sub_1000BF634(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000CDE0(&qword_10023A2B8, &qword_1001BC460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000BF6A4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v10 = *(v1 + 72);
  v11 = *(v1 + 32);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1000152E0;

  return sub_10016FB7C(a1, v4, v5, v11, v6, v7, v8, v9);
}

uint64_t sub_1000BF794()
{
  v1 = *(v0 + 24);

  sub_10000DB58((v0 + 32));

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_1000BF7D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000BD30;

  return sub_1000BE07C(v2, v3, v0 + 32);
}

double sub_1000BF87C()
{
  sub_10000CDE0(&qword_10023C620, &qword_1001BC4C0);
  v0 = swift_allocObject();
  *&result = 5;
  *(v0 + 16) = xmmword_1001BC430;
  *(v0 + 56) = &type metadata for BootstrapActivity;
  *(v0 + 64) = &off_100222E20;
  *(v0 + 32) = 0xD000000000000023;
  *(v0 + 40) = 0x80000001001CCB10;
  *(v0 + 96) = &type metadata for CleanDatabaseRepeatingActivity;
  *(v0 + 104) = &off_10021BE70;
  *(v0 + 72) = 0xD000000000000028;
  *(v0 + 80) = 0x80000001001CCB40;
  *(v0 + 136) = &type metadata for PostbackTransmissionRepeatingActivity;
  *(v0 + 144) = &off_100219AB8;
  *(v0 + 112) = 0xD00000000000002FLL;
  *(v0 + 120) = 0x80000001001CCB70;
  *(v0 + 176) = &type metadata for SnoutFlushRepeatingActivity;
  *(v0 + 184) = &off_10021CD78;
  *(v0 + 152) = 0xD000000000000035;
  *(v0 + 160) = 0x80000001001CCBA0;
  *(v0 + 216) = &type metadata for TokenVendingFetchRepeatingActivity;
  *(v0 + 224) = &off_100218FE8;
  *(v0 + 192) = 0xD00000000000002DLL;
  *(v0 + 200) = 0x80000001001CCBE0;
  return result;
}

uint64_t sub_1000BF99C()
{
  sub_10000CDE0(&qword_10023C618, &qword_1001BC490);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1001B75D0;
  *(v0 + 56) = &type metadata for DelayedWoof;
  *(v0 + 64) = &off_1002195E0;
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  *(v1 + 16) = 0xD000000000000028;
  *(v1 + 24) = 0x80000001001CCA90;
  *(v1 + 32) = 2;
  *(v1 + 40) = 1;
  *(v1 + 42) = 1;
  *(v1 + 48) = xmmword_1001BC440;
  *(v0 + 96) = &type metadata for DeveloperModeResetBarktivity;
  *(v0 + 104) = &off_100222B58;
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  *(v2 + 16) = 0xD00000000000002ELL;
  *(v2 + 24) = 0x80000001001CC990;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0;
  *(v2 + 42) = 0;
  *(v2 + 48) = xmmword_1001BC2A0;
  *(v0 + 136) = &type metadata for DevelopmentPostbackTransmissionBarktivity;
  *(v0 + 144) = &off_10021C740;
  v3 = swift_allocObject();
  *(v0 + 112) = v3;
  *(v3 + 16) = 0xD00000000000003BLL;
  *(v3 + 24) = 0x80000001001CC9C0;
  *(v3 + 32) = 2;
  *(v3 + 40) = 1;
  *(v3 + 42) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  return v0;
}

uint64_t sub_1000BFB18()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000BFB50()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BFB88()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000152E0;

  return sub_1000BC654(v0 + 16);
}

uint64_t sub_1000BFC1C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000BFC5C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1000152E0;

  return sub_1000BD204(a1, v4);
}

void sub_1000BFD48()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v55[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v55[-v7];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v55[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  URL.init(string:)();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_10001B884(v8);
    return;
  }

  (*(v10 + 32))(v13, v8, v9);
  v14 = URL.host(percentEncoded:)(1);
  if (!v14.value._object)
  {
    (*(v10 + 8))(v13, v9);
    return;
  }

  v60 = v14;
  v63 = 46;
  v64 = 0xE100000000000000;
  sub_10003E5C8();
  v15 = StringProtocol.components<A>(separatedBy:)();

  v16 = *(v15 + 16);
  if (v16)
  {
    if (*(v15 + 32) != 7829367 || *(v15 + 40) != 0xE300000000000000)
    {
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_13;
      }

      v16 = *(v15 + 16);
      if (!v16)
      {
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v65 = v15;
    if (!isUniquelyReferenced_nonNull_native || (v16 - 1) > *(v15 + 24) >> 1)
    {
      v15 = sub_100088BDC(isUniquelyReferenced_nonNull_native, v16, 1, v15);
      v65 = v15;
    }

    sub_1000C0420(0, 1, 0);
  }

LABEL_13:
  v18 = *(v15 + 16);
  if (!v18)
  {
    v22 = Logger.general.unsafeMutableAddressor();
    (*(v1 + 16))(v4, v22, v0);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&_mh_execute_header, v23, v24, "URL does not have a valid host.", v25, 2u);
    }

    (*(v1 + 8))(v4, v0);
    goto LABEL_27;
  }

  if (v18 == 1)
  {
LABEL_27:
    (*(v10 + 8))(v13, v9);

    return;
  }

  v19 = (v15 + 40);
  v20 = v18 + 1;
  while (--v20)
  {
    if (*(v19 - 1))
    {
      v21 = 0;
    }

    else
    {
      v21 = *v19 == 0xE000000000000000;
    }

    if (!v21)
    {
      v19 += 2;
      if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_27;
  }

  v57 = v18;
  v58 = (v15 + 32);
  if (v18 > *(v15 + 16))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  v26 = v57;
  v27 = &v58[16 * v57];
  v28 = *(v27 - 2);
  v29 = *(v27 - 1);
  v60.value._countAndFlagsBits = 46;
  v60.value._object = 0xE100000000000000;

  v30._countAndFlagsBits = v28;
  v30._object = v29;
  String.append(_:)(v30);

  v31._countAndFlagsBits = 0;
  v31._object = 0xE000000000000000;
  String.append(_:)(v31);

  countAndFlagsBits = v60.value._countAndFlagsBits;
  object = v60.value._object;
  v34 = String._bridgeToObjectiveC()();
  IsDomainTopLevel = _CFHostIsDomainTopLevel();

  v56 = IsDomainTopLevel;
  v59 = v15;
  if (IsDomainTopLevel)
  {
    v36 = (v15 + 16 * v26 + 8);
    v37 = v26;
    while (--v37 >= 1)
    {
      if (v37 > *(v59 + 16))
      {
        goto LABEL_43;
      }

      v38 = *(v36 - 1);
      v39 = *v36;
      v60.value._countAndFlagsBits = 46;
      v60.value._object = 0xE100000000000000;

      v40._countAndFlagsBits = v38;
      v40._object = v39;
      String.append(_:)(v40);

      v41._countAndFlagsBits = countAndFlagsBits;
      v41._object = object;
      String.append(_:)(v41);

      countAndFlagsBits = v60.value._countAndFlagsBits;
      object = v60.value._object;
      v42 = String._bridgeToObjectiveC()();
      LODWORD(v38) = _CFHostIsDomainTopLevel();

      v36 -= 2;
      if (!v38)
      {
        goto LABEL_36;
      }
    }

    v44 = v58;
    v43 = v59;
    v45 = v57;

    if (v45)
    {
      goto LABEL_39;
    }

    goto LABEL_27;
  }

  v37 = v26;
LABEL_36:

  v44 = v58;
  v43 = v59;
  if (!v56)
  {
    goto LABEL_27;
  }

LABEL_39:
  v46 = *(v43 + 16);
  if (v46 < v37)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v60.value._countAndFlagsBits = v43;
  v60.value._object = v44;
  v61 = v37;
  v62 = (2 * v46) | 1;

  sub_10000CDE0(&qword_10023C628, &unk_1001BC580);
  sub_1000C03BC();
  v47 = BidirectionalCollection<>.joined(separator:)();
  v49 = v48;

  v50 = v37 - 1;
  if ((v37 - 1) < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v50 < *(v43 + 16))
  {
    v51 = &v44[16 * v50];
    v52 = v51[1];
    v60.value._countAndFlagsBits = *v51;
    v60.value._object = v52;

    v53._countAndFlagsBits = 46;
    v53._object = 0xE100000000000000;
    String.append(_:)(v53);
    v54._countAndFlagsBits = v47;
    v54._object = v49;
    String.append(_:)(v54);

    (*(v10 + 8))(v13, v9);

    return;
  }

LABEL_47:
  __break(1u);
}

unint64_t sub_1000C03BC()
{
  result = qword_10023C630;
  if (!qword_10023C630)
  {
    sub_10000CCC0(&qword_10023C628, &unk_1001BC580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C630);
  }

  return result;
}

unint64_t sub_1000C0420(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1000C04E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = type metadata accessor for URLQueryItem();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1000C063C()
{
  result = qword_10023C638;
  if (!qword_10023C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C638);
  }

  return result;
}

Swift::Int sub_1000C0690()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 18400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000C06E0()
{
  if (*v0)
  {
    v1 = 18400;
  }

  else
  {
    v1 = 0;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_1000C0718()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 18400;
  }

  else
  {
    v2 = 0;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void *sub_1000C0764@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 18400)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void sub_1000C0788(uint64_t *a1@<X8>)
{
  v2 = 18400;
  if (!*v1)
  {
    v2 = 0;
  }

  *a1 = v2;
}

void sub_1000C07B0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    sub_1000C09DC(a2);
  }
}

unint64_t sub_1000C07E8(void *a1)
{
  a1[1] = sub_1000C0820();
  a1[2] = sub_1000C0874();
  result = sub_1000C08C8();
  a1[3] = result;
  return result;
}

unint64_t sub_1000C0820()
{
  result = qword_10023C680;
  if (!qword_10023C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C680);
  }

  return result;
}

unint64_t sub_1000C0874()
{
  result = qword_10023C688;
  if (!qword_10023C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C688);
  }

  return result;
}

unint64_t sub_1000C08C8()
{
  result = qword_10023C690;
  if (!qword_10023C690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C690);
  }

  return result;
}

unint64_t sub_1000C0920()
{
  result = qword_10023C698;
  if (!qword_10023C698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C698);
  }

  return result;
}

unint64_t sub_1000C0978()
{
  result = qword_10023C6A0;
  if (!qword_10023C6A0)
  {
    sub_10000CCC0(&qword_10023C6A8, &qword_1001BC6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C6A0);
  }

  return result;
}

void sub_1000C09DC(uint64_t a1)
{
  _StringGuts.grow(_:)(101);
  v2._countAndFlagsBits = 0xD00000000000001BLL;
  v2._object = 0x80000001001CB510;
  String.append(_:)(v2);
  v3 = [type metadata accessor for ConversionTagEntity() databaseTable];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 665632;
  v8._object = 0xE300000000000000;
  String.append(_:)(v8);
  v9._object = 0x80000001001CA000;
  v9._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v9);
  v10._countAndFlagsBits = 0x52454745544E4920;
  v10._object = 0xEA00000000000A2CLL;
  String.append(_:)(v10);
  v11._countAndFlagsBits = 0x69737265766E6F63;
  v11._object = 0xEE006761745F6E6FLL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = 0x52454745544E4920;
  v12._object = 0xEA00000000000A2CLL;
  String.append(_:)(v12);
  v13._object = 0x80000001001CA620;
  v13._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v13);
  v14._countAndFlagsBits = 0xD000000000000011;
  v14._object = 0x80000001001CB530;
  String.append(_:)(v14);
  v15._object = 0x80000001001CA000;
  v15._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD000000000000018;
  v16._object = 0x80000001001CB550;
  String.append(_:)(v16);
  v17 = String._bridgeToObjectiveC()();

  sub_1001ACB3C(a1, v17);
}

uint64_t sub_1000C0C24(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  sub_10000DAF8(a4, a5, a6);
  sub_1000C1D18(a1, a4, a7);
  v13 = a8(0);
  result = (*(*(v13 - 8) + 56))(a4, 0, 1, v13);
  *a3 = 1;
  return result;
}

void sub_1000C0CD0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = [v2 connection];
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = String._bridgeToObjectiveC()();
  v13(v9, v11, v4);
  v15 = v22;
  v16 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v17 = [objc_opt_self() predicateWithProperty:v14 equalToValue:v16];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v11, v4);
  v18 = sub_100085730(v12, v17, _swiftEmptyArrayStorage, 0, 0);
  v19 = type metadata accessor for ImpressionModel();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v24 = v15;
  v20 = v25;
  sub_10003505C(sub_1000C1D80, v23, v18);

  if (v20)
  {
    sub_10000DAF8(v15, &qword_10023A7C8, &qword_1001C17F0);
  }
}

uint64_t sub_1000C0F60(uint64_t a1, char a2)
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v21[0] = a1;
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  if (a2)
  {
    v11 = 0xEA00000000006E6FLL;
  }

  else
  {
    v11 = 0xEB00000000746E65;
  }

  v12 = String._bridgeToObjectiveC()();
  v21[1] = v11;

  v13 = [v9 predicateWithProperty:v12 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v13;
  v14 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v15 = [v2 connection];
  v16 = v14;
  v17 = sub_100085748(v15, v14, _swiftEmptyArrayStorage, 0, 0);
  v21[0] = _swiftEmptyArrayStorage;
  v20[2] = v21;
  sub_10003505C(sub_1000C1D10, v20, v17);

  v18 = v21[0];
  if (v3)
  {
  }

  return v18;
}

void *sub_1000C1204()
{
  v2 = [v0 connection];
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = [objc_opt_self() predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  v6 = sub_100085748(v2, v5, _swiftEmptyArrayStorage, 0, 0);
  v9[2] = &v10;
  v10 = &_swiftEmptySetSingleton;
  sub_10003505C(sub_1000C1CCC, v9, v6);

  v7 = v10;
  if (v1)
  {
  }

  return v7;
}

void sub_1000C1358(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_10000CDE0(&qword_10023CF60, &unk_1001B5870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v7 = String._bridgeToObjectiveC()();
  v8 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v9 = objc_opt_self();
  v10 = [v9 predicateWithProperty:v7 equalToValue:v8];
  swift_unknownObjectRelease();

  *(inited + 32) = v10;
  v11 = String._bridgeToObjectiveC()();
  v22 = a1;
  v23 = a2;

  v12 = [v9 predicateWithProperty:v11 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v12;
  v13 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023A818, &unk_1001BC7A0);
  swift_arrayDestroy();
  v14 = [v19 connection];
  v15 = v13;
  v16 = sub_100085748(v14, v13, _swiftEmptyArrayStorage, 0, 0);
  v17 = type metadata accessor for ImpressionModel();
  (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  v21 = a3;
  v18 = v24;
  sub_10003505C(sub_1000C1C78, v20, v16);

  if (v18)
  {
    sub_10000DAF8(a3, &qword_10023A7C8, &qword_1001C17F0);
  }
}

__n128 sub_1000C1604@<Q0>(uint64_t a1@<X8>)
{
  sub_10000CDE0(&qword_10023C6D8, &qword_1001BC780);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B5820;
  v3 = String._bridgeToObjectiveC()();
  v4 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v5 = objc_opt_self();
  v6 = [v5 predicateWithProperty:v3 equalToValue:v4];
  swift_unknownObjectRelease();

  *(inited + 32) = v6;
  v7 = String._bridgeToObjectiveC()();

  v8 = [v5 predicateWithProperty:v7 equalToValue:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();

  *(inited + 40) = v8;
  v9 = sub_10004FB24(inited);
  swift_setDeallocating();
  sub_10000CDE0(&qword_10023C6E0, &qword_1001BC788);
  swift_arrayDestroy();
  v10 = [v1 connection];
  v11 = v9;
  v12 = sub_100086C40(v10, v9, _swiftEmptyArrayStorage, 0, 0);
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v18 = &v21;
  v13 = v26;
  sub_1000368E4(sub_1000C1BBC, v17, v12);

  if (v13)
  {
    v19[2] = v23;
    v19[3] = v24;
    v20 = v25;
    v19[0] = v21;
    v19[1] = v22;
    sub_10000DAF8(v19, &qword_10023C6E8, &unk_1001BC790);
  }

  else
  {
    v15 = v24;
    *(a1 + 32) = v23;
    *(a1 + 48) = v15;
    *(a1 + 64) = v25;
    result = v22;
    *a1 = v21;
    *(a1 + 16) = result;
  }

  return result;
}

BOOL sub_1000C18C4(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v20 - v10;
  v12 = [v2 connection];
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = String._bridgeToObjectiveC()();
  v13(v9, v11, v4);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v16 = [objc_opt_self() predicateWithProperty:v14 equalToValue:v15];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v11, v4);
  v17 = sub_100085748(v12, v16, _swiftEmptyArrayStorage, 0, 0);
  v18 = [v17 countOfEntities];

  return v18 > 0;
}

id sub_1000C1B64()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ImpressionDatabaseSession();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1000C1BBC(__int128 *a1, uint64_t a2, _BYTE *a3)
{
  v5 = *(v3 + 16);
  v6 = a1[3];
  v18 = a1[2];
  v19 = v6;
  v20 = *(a1 + 8);
  v7 = a1[1];
  v16 = *a1;
  v17 = v7;
  v9 = *(v5 + 32);
  v8 = *(v5 + 48);
  v10 = *(v5 + 16);
  v22 = *(v5 + 64);
  v21[2] = v9;
  v21[3] = v8;
  v21[1] = v10;
  v21[0] = *v5;
  sub_10000DAF8(v21, &qword_10023C6E8, &unk_1001BC790);
  *v5 = v16;
  v12 = v18;
  v11 = v19;
  v13 = v17;
  *(v5 + 64) = v20;
  *(v5 + 32) = v12;
  *(v5 + 48) = v11;
  *(v5 + 16) = v13;
  *a3 = 1;
  return sub_100072034(&v16, v15);
}

uint64_t sub_1000C1CCC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = type metadata accessor for ImpressionModel();
  return sub_1000227CC(&v6, *(a1 + *(v4 + 52)));
}

uint64_t sub_1000C1D18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C1DB0()
{
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v1 = qword_10023FC50;
  v0[5] = &type metadata for AMSDogBag;
  v0[6] = &off_100222F48;
  sub_1000C2030((v0 + 2), (v0 + 7));
  v0[12] = sub_10016E7D8(0x74735F74756F6E73, 0xEB0000000065726FLL, v1, (v0 + 7), 0);
  sub_1000C208C((v0 + 2));
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_1000C1ED4;

  return sub_10016830C();
}

uint64_t sub_1000C1ED4()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_1000C1FD0, 0, 0);
}

uint64_t sub_1000C1FD0()
{
  v1 = *(v0 + 96);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000C20E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_1000C21D8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1000C2280(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3 & 1);
  }

  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    do
    {
      v10 = *(*(a2 + 48) + v8);
      if (v10 == 2)
      {
        if (v3 == 2)
        {
          return 1;
        }
      }

      else if (v3 != 2 && ((v10 ^ v3) & 1) == 0)
      {
        return 1;
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1000C2388()
{
  v1[97] = v0;
  v2 = type metadata accessor for Logger();
  v1[98] = v2;
  v3 = *(v2 - 8);
  v1[99] = v3;
  v4 = *(v3 + 64) + 15;
  v1[100] = swift_task_alloc();
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v5 = *(*(sub_10000CDE0(&qword_10023C230, &qword_1001B4FB0) - 8) + 64) + 15;
  v1[103] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v1[104] = v6;
  v7 = *(v6 - 8);
  v1[105] = v7;
  v8 = *(v7 + 64) + 15;
  v1[106] = swift_task_alloc();

  return _swift_task_switch(sub_1000C24F4, 0, 0);
}

uint64_t sub_1000C24F4()
{
  v1 = *(v0 + 776);
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    goto LABEL_6;
  }

  v5 = *(v0 + 840);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  URL.init(string:)();
  if ((*(v5 + 48))(v7, 1, v6) == 1)
  {
    sub_10000DAF8(*(v0 + 824), &qword_10023C230, &qword_1001B4FB0);
LABEL_6:
    v8 = *(v0 + 800);
    v9 = *(v0 + 792);
    v10 = *(v0 + 784);
    v11 = Logger.postback.unsafeMutableAddressor();
    (*(v9 + 16))(v8, v11, v10);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Received invalid postback URL", v14, 2u);
    }

    v15 = *(v0 + 800);
    v16 = *(v0 + 792);
    v17 = *(v0 + 784);

    (*(v16 + 8))(v15, v17);
    sub_1000C33F0();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    v25 = *(v0 + 848);
    v26 = *(v0 + 824);
    v27 = *(v0 + 816);
    v28 = *(v0 + 808);
    v29 = *(v0 + 800);

    v30 = *(v0 + 8);

    return v30();
  }

  v19 = *(v0 + 776);
  (*(*(v0 + 840) + 32))(*(v0 + 848), *(v0 + 824), *(v0 + 832));
  memcpy((v0 + 16), v19, 0x121uLL);
  sub_1000B3B24(v0 + 16, v0 + 312);
  sub_1000C4614(v0 + 16, v0 + 608);
  v20 = type metadata accessor for JSONEncoder();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v0 + 856) = JSONEncoder.init()();
  v23 = *(v0 + 624);
  *(v0 + 664) = *(v0 + 608);
  *(v0 + 680) = v23;
  *(v0 + 696) = *(v0 + 640);
  *(v0 + 712) = *(v0 + 656);
  sub_1000C4704();
  *(v0 + 864) = dispatch thunk of JSONEncoder.encode<A>(_:)();
  *(v0 + 872) = v24;
  v32 = *(v0 + 776);
  sub_1000C4758(v0 + 608);
  v33 = sub_1000BB054(*(v0 + 208));
  if (v33 != 2 && (v33 & 1) == 0)
  {
    v41 = *(v0 + 776);
    v43 = *(v41 + 384);
    v42 = *(v41 + 392);
    *(v0 + 928) = 0;
    v44 = *(v42 + 24);
    v51 = v44 + *v44;
    v45 = v44[1];
    v46 = swift_task_alloc();
    *(v0 + 936) = v46;
    *v46 = v0;
    v46[1] = sub_1000C2D14;
    v47 = *(v0 + 872);
    v48 = *(v0 + 864);
    v49 = *(v0 + 848);

    __asm { BRAA            X8, X16 }
  }

  v34 = *(v0 + 776);
  v35 = *(v34 + 384);
  *(v0 + 880) = v35;
  v36 = *(v34 + 392);
  *(v0 + 888) = v36;
  v37 = *(v36 + 8);
  v50 = (v37 + *v37);
  v38 = v37[1];
  v39 = swift_task_alloc();
  *(v0 + 896) = v39;
  *v39 = v0;
  v39[1] = sub_1000C2A20;
  v40 = *(v0 + 848);

  return v50(v40, v35, v36);
}

uint64_t sub_1000C2A20(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 896);
  v8 = *v3;
  *(*v3 + 904) = v2;

  if (v2)
  {
    v9 = sub_1000C3230;
  }

  else
  {
    *(v6 + 912) = a2;
    *(v6 + 920) = a1;
    v9 = sub_1000C2B58;
  }

  return _swift_task_switch(v9, 0, 0);
}

void sub_1000C2B58()
{
  v1 = v0[115];
  v2 = v0[114];
  sub_10000CDE0(&qword_10023C708, &qword_1001BC850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001B93B0;
  *(inited + 32) = 4;
  v4 = inited + 32;
  *(inited + 40) = v1;
  *(inited + 48) = v2;
  v5 = sub_1000C4788(inited);
  swift_setDeallocating();
  sub_10000DAF8(v4, &qword_10023C710, &qword_1001BC858);
  v6 = v0[111];
  v7 = v0[110];
  v0[116] = v5;
  v8 = *(v6 + 24);
  v14 = v8 + *v8;
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[117] = v10;
  *v10 = v0;
  v10[1] = sub_1000C2D14;
  v11 = v0[109];
  v12 = v0[108];
  v13 = v0[106];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_1000C2D14(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = *v4;
  v8 = *v4;
  v9 = *(*v4 + 936);
  v10 = *v4;
  *(v8 + 944) = a3;
  *(v8 + 952) = v3;

  v11 = *(v7 + 928);

  if (v3)
  {
    v12 = sub_1000C3310;
  }

  else
  {
    sub_10001BABC(a1, a2);
    v12 = sub_1000C2E68;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000C2E68()
{
  v1 = v0[118];
  v2 = v0[99];
  v3 = sub_10002826C(&off_100213238);
  LOBYTE(v1) = sub_1000C21D8([v1 statusCode], v3);

  v4 = Logger.postback.unsafeMutableAddressor();
  v5 = *(v2 + 16);
  v6 = v0[118];
  v7 = v0[98];
  if (v1)
  {
    v5(v0[101], v4, v7);
    v8 = v6;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[118];
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = [v11 statusCode];

      _os_log_impl(&_mh_execute_header, v9, v10, "Postback transmission received error status from server: %ld", v12, 0xCu);

      v13 = v0[118];
    }

    else
    {

      v13 = v0[118];
      v9 = v13;
    }

    v22 = v0[109];
    v23 = v0[108];
    v24 = v0[107];
    v25 = v0[105];
    v47 = v0[104];
    v49 = v0[106];
    v26 = v0[101];
    v27 = v0[99];
    v28 = v0[98];

    (*(v27 + 8))(v26, v28);
    sub_1000C33F0();
    swift_allocError();
    *v29 = 1;
    swift_willThrow();
    sub_10001BABC(v23, v22);

    (*(v25 + 8))(v49, v47);
    v30 = v0[106];
    v31 = v0[103];
    v32 = v0[102];
    v33 = v0[101];
    v34 = v0[100];

    v35 = v0[1];
  }

  else
  {
    v5(v0[102], v4, v7);
    v14 = v6;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[118];
    v19 = v0[109];
    v20 = v0[108];
    if (v17)
    {
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = [v18 statusCode];

      _os_log_impl(&_mh_execute_header, v15, v16, "Postback transmission has completed with status code: %ld", v21, 0xCu);

      sub_10001BABC(v20, v19);
    }

    else
    {
      sub_10001BABC(v0[108], v0[109]);
    }

    v36 = v15;
    v37 = v0[118];
    v38 = v0[107];
    v39 = v0[106];
    v40 = v0[105];
    v41 = v0[104];
    v42 = v0[103];
    v43 = v0[102];
    v48 = v0[101];
    v50 = v0[100];
    v44 = v0[99];
    v45 = v0[98];

    (*(v44 + 8))(v43, v45);
    (*(v40 + 8))(v39, v41);

    v35 = v0[1];
  }

  return v35();
}

uint64_t sub_1000C3230()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  sub_10001BABC(v0[108], v0[109]);

  (*(v3 + 8))(v2, v4);
  v5 = v0[113];
  v6 = v0[106];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[100];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000C3310()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[105];
  v4 = v0[104];
  sub_10001BABC(v0[108], v0[109]);

  (*(v3 + 8))(v2, v4);
  v5 = v0[119];
  v6 = v0[106];
  v7 = v0[103];
  v8 = v0[102];
  v9 = v0[101];
  v10 = v0[100];

  v11 = v0[1];

  return v11();
}

unint64_t sub_1000C33F0()
{
  result = qword_10023C6F8;
  if (!qword_10023C6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C6F8);
  }

  return result;
}

uint64_t sub_1000C3444(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C750, &qword_1001BCA98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000C4C70();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18[14] = *(v3 + 16);
    v18[13] = 1;
    sub_1000B3B5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = *(v3 + 32);
    v18[12] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18[11] = *(v3 + 33);
    v18[10] = 3;
    sub_100070F24();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = v3[5];
    v16 = v3[6];
    v18[9] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000C3660()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C3754()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C3834()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C3924@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4DDC(*a1);
  *a2 = result;
  return result;
}

void sub_1000C3954(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000676ELL;
  v4 = 0x697274732D73776ALL;
  v5 = 0x80000001001CAD50;
  v6 = 0x80000001001CAD70;
  v7 = 0xD000000000000017;
  if (v2 != 3)
  {
    v7 = 0x2D7972746E756F63;
    v6 = 0xEC00000065646F63;
  }

  if (v2 == 2)
  {
    v7 = 0xD000000000000010;
  }

  else
  {
    v5 = v6;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x80000001001CA540;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_1000C3A04()
{
  v1 = *v0;
  v2 = 0x697274732D73776ALL;
  v3 = 0xD000000000000017;
  if (v1 != 3)
  {
    v3 = 0x2D7972746E756F63;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C3AB0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C4DDC(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C3AD8(uint64_t a1)
{
  v2 = sub_1000C4C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C3B14(uint64_t a1)
{
  v2 = sub_1000C4C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C3B50(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 6);
  return sub_1000C3444(a1);
}

uint64_t sub_1000C3B94()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000BD30;

  return sub_1000C2388();
}

unint64_t sub_1000C3C20(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000C3E40(a1, v4);
}

unint64_t sub_1000C3C64(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100150C2C();

  return sub_1000C3F08(a1, v4);
}

unint64_t sub_1000C3CA8(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:_:)();

  return sub_1000C4368(a1, v4);
}

uint64_t sub_1000C3D18(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  v8 = *(v4 + 40);
  Hasher.init(_seed:)();
  a3(v12, a1, a2);
  v9 = Hasher._finalize()();

  return a4(a1, a2, v9);
}

unint64_t sub_1000C3DAC(uint64_t a1)
{
  v3 = *(v1 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000C43D4(a1, v4);
}

unint64_t sub_1000C3E40(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100025CC4(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100025D20(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000C3F08(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v19 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v2 + 48) + v4);
      if (v6 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v6 == 1)
          {
            v7 = 0x2D746E65746E6F43;
          }

          else
          {
            v7 = 0x6567412D72657355;
          }

          if (v6 == 1)
          {
            v8 = 0xEC00000065707954;
          }

          else
          {
            v8 = 0xEA0000000000746ELL;
          }
        }

        else
        {
          v7 = 0x7A69726F68747541;
          v8 = 0xED00006E6F697461;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v6 == 5)
        {
          v7 = 0x4C2D747065636341;
          v8 = 0xEF65676175676E61;
        }

        else
        {
          v7 = 0xD000000000000015;
          v8 = 0x80000001001CA360;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x65676E6152;
        }

        else
        {
          v7 = 0xD000000000000013;
        }

        if (v6 == 3)
        {
          v8 = 0xE500000000000000;
        }

        else
        {
          v8 = 0x80000001001CA330;
        }
      }

      v9 = 0xD000000000000015;
      if (v5 == 5)
      {
        v9 = 0x4C2D747065636341;
      }

      v10 = 0xEF65676175676E61;
      if (v5 != 5)
      {
        v10 = 0x80000001001CA360;
      }

      v11 = 0x65676E6152;
      if (v5 != 3)
      {
        v11 = 0xD000000000000013;
      }

      v12 = 0xE500000000000000;
      if (v5 != 3)
      {
        v12 = 0x80000001001CA330;
      }

      if (v5 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x6567412D72657355;
      if (v5 == 1)
      {
        v13 = 0x2D746E65746E6F43;
      }

      v14 = 0xEC00000065707954;
      if (v5 != 1)
      {
        v14 = 0xEA0000000000746ELL;
      }

      if (!v5)
      {
        v13 = 0x7A69726F68747541;
        v14 = 0xED00006E6F697461;
      }

      v15 = v5 <= 2 ? v13 : v9;
      v16 = v5 <= 2 ? v14 : v10;
      if (v7 == v15 && v8 == v16)
      {
        break;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v17 & 1) == 0)
      {
        v4 = (v4 + 1) & v19;
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

unint64_t sub_1000C41D0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12 > 4)
      {
        if (v12 <= 6)
        {
          if (v12 == 5)
          {
            if (a2 == 5)
            {
              return v6;
            }
          }

          else if (a2 == 6)
          {
            return v6;
          }

          goto LABEL_4;
        }

        switch(v12)
        {
          case 7:
            if (a2 == 7)
            {
              return v6;
            }

            goto LABEL_4;
          case 8:
            if (a2 == 8)
            {
              return v6;
            }

            goto LABEL_4;
          case 9:
            if (a2 == 9)
            {
              return v6;
            }

            goto LABEL_4;
        }
      }

      else
      {
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            if (a2 == 2)
            {
              return v6;
            }
          }

          else if (v12 == 3)
          {
            if (a2 == 3)
            {
              return v6;
            }
          }

          else if (a2 == 4)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (!v12)
        {
          if (!a2)
          {
            return v6;
          }

          goto LABEL_4;
        }

        if (v12 == 1)
        {
          if (a2 == 1)
          {
            return v6;
          }

          goto LABEL_4;
        }
      }

      if (a2 >= 0xA)
      {
        v13 = *v11 == a1 && v12 == a2;
        if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          return v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1000C4368(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1000C43D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;
      if (v7 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v9 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1000C44D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C748, &qword_1001BCA88);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014B50(v4, v13, &qword_10023C248, &qword_1001BCA90);
      result = sub_1000C3C20(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

double sub_1000C4614@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = *(a1 + 136);
  v13 = v15;
  v12 = *(a1 + 168);
  v14 = *(a1 + 216);
  sub_1000C4880(&v15, v10);
  sub_100014B50(&v14, v10, &qword_10023AEA8, &unk_1001B7AD0);
  sub_10003C04C(a1);
  *&v11[6] = v14;
  if (!*(a1 + 169))
  {
    v4 = *(a1 + 120);
    v6 = *(a1 + 128);
LABEL_6:
    v10[0] = v6;
    v5 = 3;
    goto LABEL_7;
  }

  if (*(a1 + 169) != 1)
  {
    v4 = 0;
    v6 = 1;
    goto LABEL_6;
  }

  v4 = 0;
  v10[0] = 1;
  v5 = *(a1 + 129);
LABEL_7:
  v7 = v12;
  v8 = v10[0];
  *a2 = v13;
  *(a2 + 16) = v7;
  *(a2 + 24) = v4;
  *(a2 + 32) = v8;
  *(a2 + 33) = v5;
  result = *v11;
  *(a2 + 34) = *v11;
  *(a2 + 48) = *&v11[14];
  return result;
}

unint64_t sub_1000C4704()
{
  result = qword_10023C700;
  if (!qword_10023C700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C700);
  }

  return result;
}

unint64_t sub_1000C4788(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C718, &unk_1001BC860);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 16);
      v7 = *(i - 1);
      v6 = *i;

      result = sub_1000C3C64(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = (v3[7] + 16 * result);
      *v10 = v7;
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

unint64_t sub_1000C48DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023C720, &qword_1001BC878);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100014B50(v4, &v13, &qword_10023C5C8, &qword_1001BC880);
      v5 = v13;
      v6 = v14;
      result = sub_1000C3D18(v13, v14, sub_100083774, sub_1000C41D0);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100025CA4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1000C4A34(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000C4A7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000C4AF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
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

uint64_t sub_1000C4B38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C4BF0(uint64_t a1)
{
  result = sub_1000C33F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C4C1C()
{
  result = qword_10023C740;
  if (!qword_10023C740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C740);
  }

  return result;
}

unint64_t sub_1000C4C70()
{
  result = qword_10023C758;
  if (!qword_10023C758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C758);
  }

  return result;
}

unint64_t sub_1000C4CD8()
{
  result = qword_10023C760;
  if (!qword_10023C760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C760);
  }

  return result;
}

unint64_t sub_1000C4D30()
{
  result = qword_10023C768;
  if (!qword_10023C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C768);
  }

  return result;
}

unint64_t sub_1000C4D88()
{
  result = qword_10023C770;
  if (!qword_10023C770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C770);
  }

  return result;
}

unint64_t sub_1000C4DDC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100215E20, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C4E28(uint64_t a1)
{
  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = *(v1 + 48);

  *(v1 + 40) = v4;
  *(v1 + 48) = v3;
  *(v1 + 88) = *(a1 + 112);
  *(v1 + 96) = 0;
  *(v1 + 145) = *(a1 + 104) > 1u;
  v6 = *(a1 + 72);
  v7 = *(a1 + 80);
  *(v1 + 152) = String.count.getter();
  *(v1 + 160) = 0;
  v12 = *(a1 + 16);
  v8 = *(v1 + 176);
  *(v1 + 168) = v12;
  sub_10005CB44(&v12, &v11);

  *(v1 + 184) = (*(a1 + 56) & 1) == 0;
  if (*(a1 + 172))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(v1 + 113) = v10;
  *(v1 + 146) = 2 - *(a1 + 169);
  return result;
}

unint64_t sub_1000C4EFC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x736572706D496461;
    v5 = 0x746C69466B6E696CLL;
    if (a1 != 2)
    {
      v5 = 0x68636E75616CLL;
    }

    if (a1)
    {
      v4 = 0x64696C6156706174;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x74736575716572;
    if (a1 != 7)
    {
      v1 = 0x6D6F4379726F7473;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000013;
    }

    v2 = 0xD000000000000019;
    if (a1 != 4)
    {
      v2 = 0x7265766E6F436461;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1000C5038(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x73736563637573;
    v6 = 0x69737265766E6F63;
    if (a1 != 8)
    {
      v6 = 0x6573616863727570;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6365526E656B6F74;
    if (a1 != 5)
    {
      v7 = 0x52646579616C6564;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x657A696C616E6966;
    v2 = 0x657461647075;
    v3 = 0x6572756C696166;
    if (a1 != 3)
    {
      v3 = 0x73696D736E617274;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64657463656A6572;
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
}

Swift::Int sub_1000C51A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F210();
  return Hasher._finalize()();
}

Swift::Int sub_1000C51F4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_10000F210();
  return Hasher._finalize()();
}

unint64_t sub_1000C5238@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C870C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000C5268@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000C4EFC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C5344(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1000C5038(*a1);
  v5 = v4;
  if (v3 == sub_1000C5038(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C53CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000C5038(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5430()
{
  sub_1000C5038(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000C5484()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000C5038(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C54E4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C8758(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000C5514@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000C5038(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000C55F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6C7074656B72616DLL;
  }

  else
  {
    v4 = 7368801;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xEB00000000656361;
  }

  if (*a2)
  {
    v6 = 0x6C7074656B72616DLL;
  }

  else
  {
    v6 = 7368801;
  }

  if (*a2)
  {
    v7 = 0xEB00000000656361;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C5698()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C571C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C578C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C5818(uint64_t *a1@<X8>)
{
  v2 = 7368801;
  if (*v1)
  {
    v2 = 0x6C7074656B72616DLL;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000656361;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C5908(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x647261646E617473;
  }

  else
  {
    v4 = 7107189;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x647261646E617473;
  }

  else
  {
    v6 = 7107189;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C59A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5A24()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C5A8C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C5B10(uint64_t *a1@<X8>)
{
  v2 = 7107189;
  if (*v1)
  {
    v2 = 0x647261646E617473;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C5C04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C5CC8()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C5D78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C5E38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C883C(*a1);
  *a2 = result;
  return result;
}

void sub_1000C5E68(uint64_t *a1@<X8>)
{
  v2 = 0xE300000000000000;
  v3 = 7368801;
  v4 = 0xEB00000000686775;
  v5 = 0x6F72685477656976;
  if (*v1 != 2)
  {
    v5 = 0x7268546B63696C63;
    v4 = 0xEC0000006867756FLL;
  }

  if (*v1)
  {
    v3 = 6448503;
    v2 = 0xE300000000000000;
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

uint64_t sub_1000C5F98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x656761676E656572;
  }

  else
  {
    v4 = 0x6C6C6174736E69;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEC000000746E656DLL;
  }

  if (*a2)
  {
    v6 = 0x656761676E656572;
  }

  else
  {
    v6 = 0x6C6C6174736E69;
  }

  if (*a2)
  {
    v7 = 0xEC000000746E656DLL;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C6048()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C60D4()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C614C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C61E0(uint64_t *a1@<X8>)
{
  v2 = 0x6C6C6174736E69;
  if (*v1)
  {
    v2 = 0x656761676E656572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E656DLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C62D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x64657A696C616572;
  }

  else
  {
    v4 = 0x676E69646E6570;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  if (*a2)
  {
    v6 = 0x64657A696C616572;
  }

  else
  {
    v6 = 0x676E69646E6570;
  }

  if (*a2)
  {
    v7 = 0xE800000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C6380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6404()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C6474()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C6500(uint64_t *a1@<X8>)
{
  v2 = 0x676E69646E6570;
  if (*v1)
  {
    v2 = 0x64657A696C616572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C65F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x656372656D6D6F63;
  v5 = 0xE900000000000072;
  if (v2 != 1)
  {
    v4 = 0x65706F6C65766564;
    v3 = 0xE900000000000072;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x726F7774654E6461;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE90000000000006BLL;
  }

  v8 = 0x656372656D6D6F63;
  if (*a2 == 1)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v8 = 0x65706F6C65766564;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x726F7774654E6461;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE90000000000006BLL;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000C66F0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6798()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C682C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C68D0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C87A4(*a1);
  *a2 = result;
  return result;
}

void sub_1000C6900(uint64_t *a1@<X8>)
{
  v2 = 0xE90000000000006BLL;
  v3 = *v1;
  v4 = 0xE800000000000000;
  v5 = 0x656372656D6D6F63;
  if (v3 != 1)
  {
    v5 = 0x65706F6C65766564;
    v4 = 0xE900000000000072;
  }

  v6 = v3 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x726F7774654E6461;
  }

  if (!v6)
  {
    v2 = v4;
  }

  *a1 = v7;
  a1[1] = v2;
}

uint64_t sub_1000C6A14(_BYTE *a1, _BYTE *a2)
{
  v2 = 1701734758;
  v3 = *a1;
  v4 = 0xE600000000000000;
  v5 = 0x657372616F63;
  if (v3 != 1)
  {
    v5 = 1701734758;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 1701736302;
  }

  if (v3)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 0xE600000000000000;
  if (*a2 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000C6AF4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C6B84()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C6C00()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C6C8C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C87F0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C6CBC(uint64_t *a1@<X8>)
{
  v2 = 1701734758;
  v3 = 0xE600000000000000;
  if (*v1 == 1)
  {
    v2 = 0x657372616F63;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 1701736302;
    v4 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v4;
}

uint64_t sub_1000C6DB8(char a1)
{
  result = 0x707954746E657665;
  switch(a1)
  {
    case 1:
      v3 = 0x746C75736572;
      goto LABEL_26;
    case 2:
      return 0x446572756C696166;
    case 3:
      return 0x546572756C696166;
    case 4:
      return 0x726F7774654E6461;
    case 5:
      return 0x6D6954746E657665;
    case 6:
      return 0x4E646C697542736FLL;
    case 7:
      return 0x657079546461;
    case 8:
      v3 = 0x656C646E7562;
      goto LABEL_26;
    case 9:
      return 0xD000000000000017;
    case 10:
      return 0x7463617265746E69;
    case 11:
      v3 = 0x68636E75616CLL;
LABEL_26:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7954000000000000;
      break;
    case 12:
      result = 0x6B63616274736F70;
      break;
    case 13:
      result = 0x65636E6575716573;
      break;
    case 14:
      result = 0x756F437972746572;
      break;
    case 15:
      result = 0x74616E6974736564;
      break;
    case 16:
      result = 0x65736E6F70736572;
      break;
    case 17:
      result = 0x4474736575716572;
      break;
    case 18:
      result = 0x7475626972747461;
      break;
    case 19:
    case 23:
      result = 0xD00000000000001ALL;
      break;
    case 20:
      result = 0xD00000000000001BLL;
      break;
    case 21:
      result = 0x6C7074656B72616DLL;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    case 24:
      result = 0x707954726566666FLL;
      break;
    case 25:
      result = 0x79636E6572727563;
      break;
    case 26:
      result = 0x437972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C713C(void *a1)
{
  v3 = v1;
  v5 = sub_10000CDE0(&qword_10023C7D8, &qword_1001BCCD8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_10000DA7C(a1, a1[3]);
  sub_1000CAC2C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v42 = *v3;
  v41 = 0;
  sub_1000CAFC8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v42 = *(v3 + 1);
    v41 = 1;
    sub_1000CB01C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v11 = *(v3 + 8);
    v12 = *(v3 + 16);
    v42 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = *(v3 + 24);
    v14 = *(v3 + 32);
    v42 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = *(v3 + 40);
    v16 = *(v3 + 48);
    v42 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = *(v3 + 56);
    v42 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + 64);
    v19 = *(v3 + 72);
    v42 = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = *(v3 + 80);
    v41 = 7;
    sub_1000CB070();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v42 = *(v3 + 81);
    v41 = 8;
    sub_1000CB0C4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + 82);
    v42 = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 83);
    v41 = 10;
    sub_10004CE54();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v42 = *(v3 + 84);
    v41 = 11;
    sub_1000CB118();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v42 = *(v3 + 85);
    v41 = 12;
    sub_1000CB16C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + 88);
    v22 = *(v3 + 96);
    v42 = 13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 104);
    v24 = *(v3 + 112);
    v42 = 14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 113);
    v41 = 15;
    sub_1000CB1C0();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *(v3 + 120);
    v26 = *(v3 + 128);
    v42 = 16;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + 136);
    v28 = *(v3 + 144);
    v42 = 17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 145);
    v41 = 18;
    sub_1000CB214();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v42 = *(v3 + 146);
    v41 = 19;
    sub_1000CB268();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29 = *(v3 + 152);
    v30 = *(v3 + 160);
    v42 = 20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v31 = *(v3 + 168);
    v32 = *(v3 + 176);
    v42 = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v33 = *(v3 + 184);
    v42 = 22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = *(v3 + 185);
    v42 = 23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v42 = *(v3 + 186);
    v41 = 24;
    sub_1000CB2BC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v35 = *(v3 + 192);
    v36 = *(v3 + 200);
    v42 = 25;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v37 = *(v3 + 208);
    v38 = *(v3 + 216);
    v42 = 26;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000C77A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E756F63736964;
  }

  else
  {
    v4 = 0x6169725465657266;
  }

  if (v3)
  {
    v5 = 0xE90000000000006CLL;
  }

  else
  {
    v5 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v6 = 0x746E756F63736964;
  }

  else
  {
    v6 = 0x6169725465657266;
  }

  if (*a2)
  {
    v7 = 0xEA00000000006465;
  }

  else
  {
    v7 = 0xE90000000000006CLL;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_1000C7854()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C78E0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000C7958()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C79EC(uint64_t *a1@<X8>)
{
  v2 = 0x6169725465657266;
  if (*v1)
  {
    v2 = 0x746E756F63736964;
  }

  v3 = 0xE90000000000006CLL;
  if (*v1)
  {
    v3 = 0xEA00000000006465;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1000C7AEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C9260(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C7B14(uint64_t a1)
{
  v2 = sub_1000CAC2C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C7B50(uint64_t a1)
{
  v2 = sub_1000CAC2C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000C7B8C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000C9AF0(a1, v12);
  if (!v2)
  {
    v5 = v12[11];
    a2[10] = v12[10];
    a2[11] = v5;
    v6 = v12[13];
    a2[12] = v12[12];
    a2[13] = v6;
    v7 = v12[7];
    a2[6] = v12[6];
    a2[7] = v7;
    v8 = v12[9];
    a2[8] = v12[8];
    a2[9] = v8;
    v9 = v12[3];
    a2[2] = v12[2];
    a2[3] = v9;
    v10 = v12[5];
    a2[4] = v12[4];
    a2[5] = v10;
    result = *v12;
    v11 = v12[1];
    *a2 = v12[0];
    a2[1] = v11;
  }

  return result;
}

uint64_t sub_1000C7C10(uint64_t a1)
{
  v8 = a1;
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  sub_10000CDE0(&qword_10023AEB8, &unk_1001B7AE0);
  if (swift_dynamicCast())
  {
    sub_10000DA64(v6, v9);
    v1 = v10;
    sub_10000DA7C(v9, v10);
    v2 = sub_10009DB48(v1);
    sub_10000DB58(v9);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1000C7D74(v6);
    v3 = _convertErrorToNSError(_:)();
    v4 = [v3 domain];
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    v9[0] = [v3 code];
    dispatch thunk of CustomStringConvertible.description.getter();
  }

  return v2;
}

uint64_t sub_1000C7D74(uint64_t a1)
{
  v2 = sub_10000CDE0(&qword_10023AEC0, &unk_1001BCC00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000C7DDC@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v35[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v35[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    swift_errorRetain();
    v39 = sub_1000C7C10(a2);
    v40 = v16;
    v37 = v18;
    v38 = v17;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
  }

  v36 = a1 > 1u;
  static Date.now.getter();
  (*(v7 + 104))(v10, enum case for Calendar.Component.hour(_:), v6);
  v19 = sub_100025808(v15, v10);
  v21 = v20;
  (*(v7 + 8))(v10, v6);
  (*(v12 + 8))(v15, v11);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v112 = 1;
  v110 = 1;
  v107 = 1;
  v105 = 1;
  v102 = 1;
  LOWORD(v42) = 5;
  *(&v42 + 2) = v113;
  WORD3(v42) = v114;
  *(&v42 + 1) = v39;
  *&v43 = v40;
  *(&v43 + 1) = v38;
  v44 = v37;
  *&v45 = 0;
  *(&v45 + 1) = v22;
  *&v46 = v24;
  *(&v46 + 1) = v26;
  LOBYTE(v47) = 0;
  *(&v47 + 1) = 33686018;
  BYTE5(v47) = 0;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = *v111;
  DWORD1(v48) = *&v111[3];
  *(&v48 + 1) = 0;
  LOWORD(v49) = 769;
  *(&v49 + 2) = v108;
  WORD3(v49) = v109;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  DWORD1(v50) = *&v106[3];
  *(&v50 + 1) = *v106;
  *(&v50 + 1) = 0;
  LOBYTE(v51) = 1;
  BYTE1(v51) = v36;
  BYTE2(v51) = 3;
  BYTE7(v51) = v104;
  *(&v51 + 3) = v103;
  *(&v51 + 1) = 0;
  LOBYTE(v52) = 1;
  *(&v52 + 1) = *v101;
  DWORD1(v52) = *&v101[3];
  *(&v52 + 1) = 0;
  *&v53 = 0;
  WORD4(v53) = 514;
  BYTE10(v53) = 2;
  HIBYTE(v53) = v100;
  *(&v53 + 11) = v99;
  v54 = 0u;
  v55 = 0u;
  v56 = 5;
  v58 = v114;
  v57 = v113;
  v59 = v39;
  v60 = v40;
  v61 = v38;
  v62 = v37;
  v64 = 0;
  v63 = 0;
  v65 = v22;
  v66 = v24;
  v67 = v26;
  v68 = 0;
  v69 = 33686018;
  v70 = 0;
  v71 = 0;
  v72 = 1;
  *&v73[3] = *&v111[3];
  *v73 = *v111;
  v74 = 0;
  v75 = 1;
  v76 = 3;
  v78 = v109;
  v77 = v108;
  v79 = 0;
  v80 = 1;
  *&v81[3] = *&v106[3];
  *v81 = *v106;
  v82 = 0;
  v83 = 1;
  v84 = v36;
  v85 = 3;
  v87 = v104;
  v86 = v103;
  v88 = 0;
  v89 = 1;
  *&v90[3] = *&v101[3];
  *v90 = *v101;
  v92 = 0;
  v91 = 0;
  v93 = 514;
  v94 = 2;
  v96 = v100;
  v95 = v99;
  v97 = 0u;
  v98 = 0u;
  sub_100010568(&v42, &v41);
  sub_10003AE8C(&v56);
  v27 = v53;
  a3[10] = v52;
  a3[11] = v27;
  v28 = v55;
  a3[12] = v54;
  a3[13] = v28;
  v29 = v49;
  a3[6] = v48;
  a3[7] = v29;
  v30 = v51;
  a3[8] = v50;
  a3[9] = v30;
  v31 = v45;
  a3[2] = v44;
  a3[3] = v31;
  v32 = v47;
  a3[4] = v46;
  a3[5] = v32;
  result = *&v42;
  v34 = v43;
  *a3 = v42;
  a3[1] = v34;
  return result;
}

double sub_1000C8278@<D0>(int a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v40 = a1;
  v5 = type metadata accessor for Calendar.Component();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    v15 = sub_1000C7C10(a2);
    v38 = v16;
    v39 = v15;
    v36 = v18;
    v37 = v17;
  }

  else
  {
    v38 = 0;
    v39 = 0;
    v36 = 0;
    v37 = 0;
  }

  static Date.now.getter();
  (*(v6 + 104))(v9, enum case for Calendar.Component.hour(_:), v5);
  v19 = sub_100025808(v14, v9);
  v21 = v20;
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if (v21)
  {
    v22 = 0;
  }

  else
  {
    v22 = v19;
  }

  v23 = [objc_opt_self() buildVersion];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  v112 = 1;
  v110 = 1;
  v107 = 1;
  v105 = 1;
  v102 = 1;
  LOWORD(v42) = 2310;
  *(&v42 + 2) = v113;
  WORD3(v42) = v114;
  *(&v42 + 1) = v39;
  *&v43 = v38;
  *(&v43 + 1) = v37;
  v44 = v36;
  *&v45 = 0;
  *(&v45 + 1) = v22;
  *&v46 = v24;
  *(&v46 + 1) = v26;
  LOBYTE(v47) = 0;
  BYTE5(v47) = 2;
  *(&v47 + 1) = 33686018;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  *(&v48 + 1) = *v111;
  DWORD1(v48) = *&v111[3];
  *(&v48 + 1) = 0;
  LOWORD(v49) = 769;
  *(&v49 + 2) = v108;
  WORD3(v49) = v109;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  DWORD1(v50) = *&v106[3];
  *(&v50 + 1) = *v106;
  *(&v50 + 1) = 0;
  LOBYTE(v51) = 1;
  *(&v51 + 1) = 770;
  BYTE7(v51) = v104;
  *(&v51 + 3) = v103;
  *(&v51 + 1) = 0;
  LOBYTE(v52) = 1;
  DWORD1(v52) = *&v101[3];
  *(&v52 + 1) = *v101;
  *(&v52 + 1) = 0;
  *&v53 = 0;
  WORD4(v53) = 258;
  BYTE10(v53) = v40;
  HIBYTE(v53) = v100;
  *(&v53 + 11) = v99;
  v54 = xmmword_1001BCBF0;
  v55 = 0uLL;
  v56 = 2310;
  v58 = v114;
  v57 = v113;
  v59 = v39;
  v60 = v38;
  v61 = v37;
  v62 = v36;
  v64 = 0;
  v63 = 0;
  v65 = v22;
  v66 = v24;
  v67 = v26;
  v68 = 0;
  v70 = 2;
  v69 = 33686018;
  v71 = 0;
  v72 = 1;
  *&v73[3] = *&v111[3];
  *v73 = *v111;
  v74 = 0;
  v75 = 1;
  v76 = 3;
  v78 = v109;
  v77 = v108;
  v79 = 0;
  v80 = 1;
  *&v81[3] = *&v106[3];
  *v81 = *v106;
  v82 = 0;
  v83 = 1;
  v84 = 770;
  v86 = v104;
  v85 = v103;
  v87 = 0;
  v88 = 1;
  *&v89[3] = *&v101[3];
  *v89 = *v101;
  v91 = 0;
  v90 = 0;
  v92 = 258;
  v93 = v40;
  v95 = v100;
  v94 = v99;
  v96 = xmmword_1001BCBF0;
  v98 = 0;
  v97 = 0;
  sub_100010568(&v42, &v41);
  sub_10003AE8C(&v56);
  v27 = v53;
  a3[10] = v52;
  a3[11] = v27;
  v28 = v55;
  a3[12] = v54;
  a3[13] = v28;
  v29 = v49;
  a3[6] = v48;
  a3[7] = v29;
  v30 = v51;
  a3[8] = v50;
  a3[9] = v30;
  v31 = v45;
  a3[2] = v44;
  a3[3] = v31;
  v32 = v47;
  a3[4] = v46;
  a3[5] = v32;
  result = *&v42;
  v34 = v43;
  *a3 = v42;
  a3[1] = v34;
  return result;
}

unint64_t sub_1000C870C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214AB8, v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C8758(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214C50, v2);

  if (v3 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C87A4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214D60, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C87F0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214E18, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C883C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100214E80, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

double sub_1000C8888@<D0>(unsigned __int8 *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date();
  v9 = *(v36 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v36);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v39 = a1[1];
  v40 = v13;
  v105[0] = *(a1 + 3);
  *&v103[6] = v105[0];
  if (a1[72])
  {
    sub_10005CB44(v105, v53);
    v37 = 0;
    v38 = 0;
  }

  else
  {
    *&v42[0] = *(a1 + 8);
    sub_10005CB44(v105, v53);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v15;
    v38 = v14;
  }

  v104 = *(a1 + 8);
  v102 = v104;
  sub_10005CB44(&v104, v53);
  static Date.now.getter();
  (*(v5 + 104))(v8, enum case for Calendar.Component.hour(_:), v4);
  v16 = sub_100025808(v12, v8);
  v18 = v17;
  (*(v5 + 8))(v8, v4);
  (*(v9 + 8))(v12, v36);
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = v16;
  }

  v20 = [objc_opt_self() buildVersion];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  sub_1000C8D6C(a1);
  v24 = a1[24];
  v25 = a1[25];
  v26 = a1[41];
  v101 = 1;
  v99 = 1;
  v27 = a1[26];
  *&v98[6] = *(a1 + 4);
  v98[14] = a1[40];
  v96 = 1;
  v93 = 1;
  LOBYTE(v42[0]) = v40;
  BYTE1(v42[0]) = v39;
  *(v42 + 2) = *v103;
  *&v42[1] = *&v103[14];
  *(&v42[1] + 1) = v38;
  *(v43 + 8) = v102;
  *&v43[0] = v37;
  *(&v43[1] + 1) = v19;
  *&v44 = v21;
  *(&v44 + 1) = v23;
  LOBYTE(v45) = v24;
  *(&v45 + 1) = 514;
  BYTE3(v45) = v25;
  BYTE4(v45) = 2;
  BYTE5(v45) = v26;
  *(&v45 + 1) = 0;
  LOBYTE(v46) = 1;
  *(&v46 + 1) = *v100;
  DWORD1(v46) = *&v100[3];
  *(&v46 + 1) = 0;
  LOBYTE(v47[0]) = 1;
  BYTE1(v47[0]) = v27;
  *(v47 + 2) = *v98;
  *(v47 + 9) = *&v98[7];
  *(&v47[1] + 1) = *v97;
  DWORD1(v47[1]) = *&v97[3];
  *(&v47[1] + 1) = 0;
  LOBYTE(v48) = 1;
  BYTE7(v48) = v95;
  *(&v48 + 3) = v94;
  DWORD1(v49) = *&v92[3];
  *(&v49 + 1) = *v92;
  HIBYTE(v50) = v91;
  *(&v50 + 11) = v90;
  *&v54[14] = *&v103[14];
  v55 = v38;
  *(&v48 + 1) = 768;
  *(&v48 + 1) = 0;
  *v54 = *v103;
  LOBYTE(v49) = 1;
  *(&v49 + 1) = 0;
  *&v50 = 0;
  WORD4(v50) = 514;
  BYTE10(v50) = 2;
  v51 = 0u;
  v52 = 0u;
  v53[0] = v40;
  v53[1] = v39;
  v57 = v102;
  v56 = v37;
  v58 = v19;
  v59 = v21;
  v60 = v23;
  v61 = v24;
  v62 = 514;
  v63 = v25;
  v64 = 2;
  v65 = v26;
  v66 = 0;
  v67 = 1;
  *&v68[3] = *&v100[3];
  *v68 = *v100;
  v69 = 0;
  v70 = 1;
  v71 = v27;
  *&v72[7] = *&v98[7];
  *v72 = *v98;
  *&v73[3] = *&v97[3];
  *v73 = *v97;
  v74 = 0;
  v75 = 1;
  v76 = 768;
  v78 = v95;
  v77 = v94;
  v79 = 0;
  v80 = 1;
  *&v81[3] = *&v92[3];
  *v81 = *v92;
  v83 = 0;
  v82 = 0;
  v84 = 514;
  v85 = 2;
  v87 = v91;
  v86 = v90;
  v88 = 0u;
  v89 = 0u;
  sub_100010568(v42, &v41);
  sub_10003AE8C(v53);
  v28 = v50;
  a2[10] = v49;
  a2[11] = v28;
  v29 = v52;
  a2[12] = v51;
  a2[13] = v29;
  v30 = v47[0];
  a2[6] = v46;
  a2[7] = v30;
  v31 = v48;
  a2[8] = v47[1];
  a2[9] = v31;
  v32 = v43[1];
  a2[2] = v43[0];
  a2[3] = v32;
  v33 = v45;
  a2[4] = v44;
  a2[5] = v33;
  result = *v42;
  v35 = v42[1];
  *a2 = v42[0];
  a2[1] = v35;
  return result;
}

double sub_1000C8DC0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v41 = a3;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  v7 = type metadata accessor for Calendar.Component();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    swift_errorRetain();
    v39 = sub_1000C7C10(a4);
    v40 = v17;
    v37 = v19;
    v38 = v18;
  }

  else
  {
    v39 = 0;
    v40 = 0;
    v37 = 0;
    v38 = 0;
  }

  static Date.now.getter();
  (*(v8 + 104))(v11, enum case for Calendar.Component.hour(_:), v7);
  v20 = sub_100025808(v16, v11);
  v22 = v21;
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v20;
  }

  v24 = [objc_opt_self() buildVersion];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  v114 = 1;
  v112 = 1;
  v109 = 1;
  v107 = 1;
  v104 = 1;
  LOWORD(v44) = 2310;
  *(&v44 + 2) = v115;
  WORD3(v44) = v116;
  *(&v44 + 1) = v39;
  *&v45 = v40;
  *(&v45 + 1) = v38;
  v46 = v37;
  *&v47 = 0;
  *(&v47 + 1) = v23;
  *&v48 = v25;
  *(&v48 + 1) = v27;
  LOBYTE(v49) = 0;
  BYTE5(v49) = 2;
  *(&v49 + 1) = 33686018;
  *(&v49 + 1) = 0;
  LOBYTE(v50) = 1;
  *(&v50 + 1) = *v113;
  DWORD1(v50) = *&v113[3];
  *(&v50 + 1) = 0;
  LOWORD(v51) = 769;
  *(&v51 + 2) = v110;
  WORD3(v51) = v111;
  *(&v51 + 1) = 0;
  LOBYTE(v52) = 1;
  DWORD1(v52) = *&v108[3];
  *(&v52 + 1) = *v108;
  *(&v52 + 1) = 0;
  LOBYTE(v53) = 1;
  *(&v53 + 1) = 770;
  BYTE7(v53) = v106;
  *(&v53 + 3) = v105;
  *(&v53 + 1) = 0;
  LOBYTE(v54) = 1;
  DWORD1(v54) = *&v103[3];
  *(&v54 + 1) = *v103;
  *(&v54 + 1) = 0;
  *&v55 = 0;
  WORD4(v55) = 2;
  BYTE10(v55) = v41;
  HIBYTE(v55) = v102;
  *(&v55 + 11) = v101;
  v56 = v42;
  v57 = 0uLL;
  v58 = 2310;
  v60 = v116;
  v59 = v115;
  v61 = v39;
  v62 = v40;
  v63 = v38;
  v64 = v37;
  v66 = 0;
  v65 = 0;
  v67 = v23;
  v68 = v25;
  v69 = v27;
  v70 = 0;
  v72 = 2;
  v71 = 33686018;
  v73 = 0;
  v74 = 1;
  *&v75[3] = *&v113[3];
  *v75 = *v113;
  v76 = 0;
  v77 = 1;
  v78 = 3;
  v80 = v111;
  v79 = v110;
  v81 = 0;
  v82 = 1;
  *&v83[3] = *&v108[3];
  *v83 = *v108;
  v84 = 0;
  v85 = 1;
  v86 = 770;
  v88 = v106;
  v87 = v105;
  v89 = 0;
  v90 = 1;
  *&v91[3] = *&v103[3];
  *v91 = *v103;
  v93 = 0;
  v92 = 0;
  v94 = 2;
  v95 = v41;
  v97 = v102;
  v96 = v101;
  v98 = v42;
  v100 = 0;
  v99 = 0;

  sub_100010568(&v44, &v43);
  sub_10003AE8C(&v58);
  v28 = v55;
  a5[10] = v54;
  a5[11] = v28;
  v29 = v57;
  a5[12] = v56;
  a5[13] = v29;
  v30 = v51;
  a5[6] = v50;
  a5[7] = v30;
  v31 = v53;
  a5[8] = v52;
  a5[9] = v31;
  v32 = v47;
  a5[2] = v46;
  a5[3] = v32;
  v33 = v49;
  a5[4] = v48;
  a5[5] = v33;
  result = *&v44;
  v35 = v45;
  *a5 = v44;
  a5[1] = v35;
  return result;
}

uint64_t sub_1000C9260(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746C75736572 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446572756C696166 && a2 == 0xED00006E69616D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x546572756C696166 && a2 == 0xEB00000000657079 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F7774654E6461 && a2 == 0xEB0000000044496BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6954746E657665 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4E646C697542736FLL && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x657079546461 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7954656C646E7562 && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CAB50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x7463617265746E69 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x795468636E75616CLL && a2 == 0xEA00000000006570 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6B63616274736F70 && a2 == 0xEC00000065707954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xED00007865646E49 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x756F437972746572 && a2 == 0xEA0000000000746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x74616E6974736564 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x4474736575716572 && a2 == 0xEF6E6F6974617275 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEF657079546E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CABD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001001CABF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x6C7074656B72616DLL && a2 == 0xEB00000000656361 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001CCC50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001001CCC70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x707954726566666FLL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x79636E6572727563 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL)
  {

    return 26;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t sub_1000C9AF0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_10000CDE0(&qword_10023C778, &qword_1001BCCD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v156 = a1;
  sub_10000DA7C(a1, v10);
  sub_1000CAC2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000DB58(v156);
  }

  else
  {
    v75 = v6;
    LOBYTE(v76) = 0;
    sub_1000CAC80();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v12 = v90[0];
    LOBYTE(v76) = 1;
    sub_1000CACD4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v13 = v90[0];
    v90[0] = 2;
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v73 = v14;
    v90[0] = 3;
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v70 = v13;
    v71 = v15;
    v90[0] = 4;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v68 = v16;
    v90[0] = 5;
    v67 = KeyedDecodingContainer.decode(_:forKey:)();
    v90[0] = 6;
    v66 = KeyedDecodingContainer.decode(_:forKey:)();
    v74 = v19;
    LOBYTE(v76) = 7;
    sub_1000CAD28();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v65 = v90[0];
    LOBYTE(v76) = 8;
    sub_1000CAD7C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v64 = v90[0];
    v90[0] = 9;
    v63 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v76) = 10;
    sub_10004DC18();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v62 = v90[0];
    LOBYTE(v76) = 11;
    sub_1000CADD0();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v90[0];
    LOBYTE(v76) = 12;
    sub_1000CAE24();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v60 = v90[0];
    v90[0] = 13;
    v59 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v153 = v20 & 1;
    v90[0] = 14;
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v151 = v21 & 1;
    LOBYTE(v76) = 15;
    sub_1000CAE78();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v57 = v90[0];
    v90[0] = 16;
    v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v148 = v22 & 1;
    v90[0] = 17;
    v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v146 = v23 & 1;
    LOBYTE(v76) = 18;
    sub_1000CAECC();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v54 = v90[0];
    LOBYTE(v76) = 19;
    sub_1000CAF20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v53 = v90[0];
    v90[0] = 20;
    v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v143 = v24 & 1;
    v90[0] = 21;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    v90[0] = 22;
    v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90[0] = 23;
    v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v76) = 24;
    sub_1000CAF74();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v47 = v90[0];
    v90[0] = 25;
    v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v48 = v27;
    v139 = 26;
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = v29;
    v45 = v28;
    (*(v75 + 8))(v9, v5);
    LOBYTE(v76) = v12;
    BYTE1(v76) = v70;
    *(&v76 + 2) = v154;
    WORD3(v76) = v155;
    *(&v76 + 1) = v72;
    *&v77 = v73;
    *(&v77 + 1) = v69;
    *&v78 = v71;
    *(&v78 + 1) = v68;
    *&v79 = v18;
    *(&v79 + 1) = v67;
    *&v80 = v66;
    *(&v80 + 1) = v74;
    LOBYTE(v81) = v65;
    BYTE1(v81) = v64;
    BYTE2(v81) = v63;
    BYTE3(v81) = v62;
    BYTE4(v81) = v61;
    BYTE5(v81) = v60;
    *(&v81 + 1) = v59;
    LODWORD(v75) = v153;
    LOBYTE(v82) = v153;
    *(&v82 + 1) = *v152;
    DWORD1(v82) = *&v152[3];
    *(&v82 + 1) = v58;
    v43 = v151;
    LOBYTE(v83) = v151;
    BYTE1(v83) = v57;
    *(&v83 + 2) = v149;
    WORD3(v83) = v150;
    *(&v83 + 1) = v56;
    v42 = v148;
    LOBYTE(v84) = v148;
    DWORD1(v84) = *&v147[3];
    *(&v84 + 1) = *v147;
    *(&v84 + 1) = v55;
    v41 = v146;
    LOBYTE(v85) = v146;
    BYTE1(v85) = v54;
    BYTE2(v85) = v53;
    BYTE7(v85) = v145;
    *(&v85 + 3) = v144;
    v30 = v51;
    *(&v85 + 1) = v52;
    *(&v86 + 1) = *v142;
    DWORD1(v86) = *&v142[3];
    HIBYTE(v87) = v141;
    *(&v87 + 11) = v140;
    v31 = v143;
    LOBYTE(v86) = v143;
    *(&v86 + 1) = v51;
    *&v87 = v26;
    BYTE8(v87) = v50;
    BYTE9(v87) = v49;
    BYTE10(v87) = v47;
    *&v88 = v46;
    *(&v88 + 1) = v48;
    *&v89 = v45;
    *(&v89 + 1) = v44;
    sub_100010568(&v76, v90);
    sub_10000DB58(v156);
    v90[0] = v12;
    v90[1] = v70;
    v93 = v72;
    v94 = v73;
    v95 = v69;
    v96 = v71;
    v97 = v68;
    v98 = v18;
    v99 = v67;
    v100 = v66;
    v101 = v74;
    v91 = v154;
    v92 = v155;
    v102 = v65;
    v103 = v64;
    v104 = v63;
    v105 = v62;
    v106 = v61;
    v107 = v60;
    v108 = v59;
    v109 = v75;
    *v110 = *v152;
    *&v110[3] = *&v152[3];
    v111 = v58;
    v112 = v43;
    v113 = v57;
    v114 = v149;
    v115 = v150;
    v116 = v56;
    v117 = v42;
    *v118 = *v147;
    *&v118[3] = *&v147[3];
    v119 = v55;
    v120 = v41;
    v121 = v54;
    v122 = v53;
    v124 = v145;
    v123 = v144;
    v125 = v52;
    v126 = v31;
    *&v127[3] = *&v142[3];
    *v127 = *v142;
    v128 = v30;
    v129 = v26;
    v130 = v50;
    v131 = v49;
    v132 = v47;
    v134 = v141;
    v133 = v140;
    v135 = v46;
    v136 = v48;
    v137 = v45;
    v138 = v44;
    result = sub_10003AE8C(v90);
    v33 = v87;
    a2[10] = v86;
    a2[11] = v33;
    v34 = v89;
    a2[12] = v88;
    a2[13] = v34;
    v35 = v83;
    a2[6] = v82;
    a2[7] = v35;
    v36 = v85;
    a2[8] = v84;
    a2[9] = v36;
    v37 = v79;
    a2[2] = v78;
    a2[3] = v37;
    v38 = v81;
    a2[4] = v80;
    a2[5] = v38;
    v39 = v77;
    *a2 = v76;
    a2[1] = v39;
  }

  return result;
}

double sub_1000CA6E0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    swift_errorRetain();
    v35 = sub_1000C7C10(a1);
    v36 = v14;
    v33 = v16;
    v34 = v15;
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v33 = 0;
    v34 = 0;
  }

  static Date.now.getter();
  (*(v5 + 104))(v8, enum case for Calendar.Component.hour(_:), v4);
  v17 = sub_100025808(v13, v8);
  v19 = v18;
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  v21 = [objc_opt_self() buildVersion];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v107 = 1;
  v105 = 1;
  v102 = 1;
  v100 = 1;
  v97 = 1;
  LOWORD(v38) = 2054;
  *(&v38 + 2) = v108;
  WORD3(v38) = v109;
  *(&v38 + 1) = v35;
  *&v39 = v36;
  *(&v39 + 1) = v34;
  v40 = v33;
  *&v41 = 0;
  *(&v41 + 1) = v20;
  *&v42 = v22;
  *(&v42 + 1) = v24;
  LOBYTE(v43) = 0;
  BYTE5(v43) = 2;
  *(&v43 + 1) = 33686018;
  *(&v43 + 1) = 0;
  LOBYTE(v44) = 1;
  *(&v44 + 1) = *v106;
  DWORD1(v44) = *&v106[3];
  *(&v44 + 1) = 0;
  LOWORD(v45) = 769;
  *(&v45 + 2) = v103;
  WORD3(v45) = v104;
  *(&v45 + 1) = 0;
  LOBYTE(v46) = 1;
  DWORD1(v46) = *&v101[3];
  *(&v46 + 1) = *v101;
  *(&v46 + 1) = 0;
  LOBYTE(v47) = 1;
  *(&v47 + 1) = 770;
  BYTE7(v47) = v99;
  *(&v47 + 3) = v98;
  *(&v47 + 1) = 0;
  LOBYTE(v48) = 1;
  DWORD1(v48) = *&v96[3];
  *(&v48 + 1) = *v96;
  *(&v48 + 1) = 0;
  *&v49 = 0;
  WORD4(v49) = 514;
  BYTE10(v49) = 2;
  HIBYTE(v49) = v95;
  *(&v49 + 11) = v94;
  v50 = 0u;
  v51 = 0u;
  v52 = 2054;
  v54 = v109;
  v53 = v108;
  v55 = v35;
  v56 = v36;
  v57 = v34;
  v58 = v33;
  v60 = 0;
  v59 = 0;
  v61 = v20;
  v62 = v22;
  v63 = v24;
  v64 = 0;
  v66 = 2;
  v65 = 33686018;
  v67 = 0;
  v68 = 1;
  *&v69[3] = *&v106[3];
  *v69 = *v106;
  v70 = 0;
  v71 = 1;
  v72 = 3;
  v74 = v104;
  v73 = v103;
  v75 = 0;
  v76 = 1;
  *&v77[3] = *&v101[3];
  *v77 = *v101;
  v78 = 0;
  v79 = 1;
  v80 = 770;
  v82 = v99;
  v81 = v98;
  v83 = 0;
  v84 = 1;
  *&v85[3] = *&v96[3];
  *v85 = *v96;
  v87 = 0;
  v86 = 0;
  v88 = 514;
  v89 = 2;
  v91 = v95;
  v90 = v94;
  v92 = 0u;
  v93 = 0u;
  sub_100010568(&v38, &v37);
  sub_10003AE8C(&v52);
  v25 = v49;
  a2[10] = v48;
  a2[11] = v25;
  v26 = v51;
  a2[12] = v50;
  a2[13] = v26;
  v27 = v45;
  a2[6] = v44;
  a2[7] = v27;
  v28 = v47;
  a2[8] = v46;
  a2[9] = v28;
  v29 = v41;
  a2[2] = v40;
  a2[3] = v29;
  v30 = v43;
  a2[4] = v42;
  a2[5] = v30;
  result = *&v38;
  v32 = v39;
  *a2 = v38;
  a2[1] = v32;
  return result;
}

uint64_t sub_1000CAB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 72);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000CABA4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000CAC2C()
{
  result = qword_10023C780;
  if (!qword_10023C780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C780);
  }

  return result;
}

unint64_t sub_1000CAC80()
{
  result = qword_10023C788;
  if (!qword_10023C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C788);
  }

  return result;
}

unint64_t sub_1000CACD4()
{
  result = qword_10023C790;
  if (!qword_10023C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C790);
  }

  return result;
}

unint64_t sub_1000CAD28()
{
  result = qword_10023C798;
  if (!qword_10023C798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C798);
  }

  return result;
}

unint64_t sub_1000CAD7C()
{
  result = qword_10023C7A0;
  if (!qword_10023C7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7A0);
  }

  return result;
}

unint64_t sub_1000CADD0()
{
  result = qword_10023C7A8;
  if (!qword_10023C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7A8);
  }

  return result;
}

unint64_t sub_1000CAE24()
{
  result = qword_10023C7B0;
  if (!qword_10023C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7B0);
  }

  return result;
}

unint64_t sub_1000CAE78()
{
  result = qword_10023C7B8;
  if (!qword_10023C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7B8);
  }

  return result;
}

unint64_t sub_1000CAECC()
{
  result = qword_10023C7C0;
  if (!qword_10023C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7C0);
  }

  return result;
}

unint64_t sub_1000CAF20()
{
  result = qword_10023C7C8;
  if (!qword_10023C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7C8);
  }

  return result;
}

unint64_t sub_1000CAF74()
{
  result = qword_10023C7D0;
  if (!qword_10023C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7D0);
  }

  return result;
}

unint64_t sub_1000CAFC8()
{
  result = qword_10023C7E0;
  if (!qword_10023C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7E0);
  }

  return result;
}

unint64_t sub_1000CB01C()
{
  result = qword_10023C7E8;
  if (!qword_10023C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7E8);
  }

  return result;
}

unint64_t sub_1000CB070()
{
  result = qword_10023C7F0;
  if (!qword_10023C7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7F0);
  }

  return result;
}

unint64_t sub_1000CB0C4()
{
  result = qword_10023C7F8;
  if (!qword_10023C7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C7F8);
  }

  return result;
}

unint64_t sub_1000CB118()
{
  result = qword_10023C800;
  if (!qword_10023C800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C800);
  }

  return result;
}

unint64_t sub_1000CB16C()
{
  result = qword_10023C808;
  if (!qword_10023C808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C808);
  }

  return result;
}

unint64_t sub_1000CB1C0()
{
  result = qword_10023C810;
  if (!qword_10023C810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C810);
  }

  return result;
}

unint64_t sub_1000CB214()
{
  result = qword_10023C818;
  if (!qword_10023C818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C818);
  }

  return result;
}

unint64_t sub_1000CB268()
{
  result = qword_10023C820;
  if (!qword_10023C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C820);
  }

  return result;
}

unint64_t sub_1000CB2BC()
{
  result = qword_10023C828;
  if (!qword_10023C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C828);
  }

  return result;
}

unint64_t sub_1000CB3C4()
{
  result = qword_10023C830;
  if (!qword_10023C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C830);
  }

  return result;
}

unint64_t sub_1000CB41C()
{
  result = qword_10023C838;
  if (!qword_10023C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C838);
  }

  return result;
}

unint64_t sub_1000CB474()
{
  result = qword_10023C840;
  if (!qword_10023C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C840);
  }

  return result;
}

unint64_t sub_1000CB4CC()
{
  result = qword_10023C848;
  if (!qword_10023C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C848);
  }

  return result;
}

unint64_t sub_1000CB524()
{
  result = qword_10023C850;
  if (!qword_10023C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C850);
  }

  return result;
}

unint64_t sub_1000CB57C()
{
  result = qword_10023C858;
  if (!qword_10023C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C858);
  }

  return result;
}

unint64_t sub_1000CB5D4()
{
  result = qword_10023C860;
  if (!qword_10023C860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C860);
  }

  return result;
}

unint64_t sub_1000CB62C()
{
  result = qword_10023C868;
  if (!qword_10023C868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C868);
  }

  return result;
}

unint64_t sub_1000CB684()
{
  result = qword_10023C870;
  if (!qword_10023C870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C870);
  }

  return result;
}

unint64_t sub_1000CB6DC()
{
  result = qword_10023C878;
  if (!qword_10023C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C878);
  }

  return result;
}

unint64_t sub_1000CB734()
{
  result = qword_10023C880;
  if (!qword_10023C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C880);
  }

  return result;
}

unint64_t sub_1000CB78C()
{
  result = qword_10023C888;
  if (!qword_10023C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C888);
  }

  return result;
}

unint64_t sub_1000CB7E4()
{
  result = qword_10023C890;
  if (!qword_10023C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C890);
  }

  return result;
}

unint64_t sub_1000CB838()
{
  result = qword_10023C898;
  if (!qword_10023C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C898);
  }

  return result;
}

unint64_t sub_1000CB88C()
{
  result = qword_10023C8A0;
  if (!qword_10023C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8A0);
  }

  return result;
}

unint64_t sub_1000CB8E0()
{
  result = qword_10023C8A8;
  if (!qword_10023C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8A8);
  }

  return result;
}

unint64_t sub_1000CB934()
{
  result = qword_10023C8B0;
  if (!qword_10023C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8B0);
  }

  return result;
}

unint64_t sub_1000CB988()
{
  result = qword_10023C8B8;
  if (!qword_10023C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8B8);
  }

  return result;
}

unint64_t sub_1000CB9DC()
{
  result = qword_10023C8C0;
  if (!qword_10023C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8C0);
  }

  return result;
}

unint64_t sub_1000CBA30()
{
  result = qword_10023C8C8;
  if (!qword_10023C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8C8);
  }

  return result;
}

unint64_t sub_1000CBA84()
{
  result = qword_10023C8D0;
  if (!qword_10023C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8D0);
  }

  return result;
}

unint64_t sub_1000CBAD8()
{
  result = qword_10023C8D8;
  if (!qword_10023C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8D8);
  }

  return result;
}

unint64_t sub_1000CBB2C()
{
  result = qword_10023C8E0;
  if (!qword_10023C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8E0);
  }

  return result;
}

uint64_t sub_1000CBB80(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v143 = *(a3 - 8);
  v8 = *(v143 + 64);
  __chkstk_darwin(a1);
  v132 = v9;
  v151 = v125 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v154 = *(AssociatedTypeWitness - 8);
  isa = v154[8].isa;
  v12 = __chkstk_darwin(AssociatedTypeWitness);
  v131 = v125 - ((isa + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v130 = v125 - v14;
  v15 = __chkstk_darwin(v13);
  v142 = v125 - v16;
  v17 = __chkstk_darwin(v15);
  v150 = v125 - v18;
  __chkstk_darwin(v17);
  v153 = v125 - v19;
  v20 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v137 = *(TupleTypeMetadata2 - 8);
  v21 = *(v137 + 64);
  v22 = __chkstk_darwin(TupleTypeMetadata2);
  v141 = v125 - v23;
  v152 = v20;
  v146 = *(v20 - 1);
  v24 = v146[8];
  v25 = __chkstk_darwin(v22);
  v136 = v125 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v144 = v125 - v28;
  __chkstk_darwin(v27);
  v149 = v125 - v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = *(AssociatedConformanceWitness + 8);
  dispatch thunk of static CaseIterable.allCases.getter();
  v156 = aBlock;
  v32 = swift_allocBox();
  v34 = v33;
  v147 = a1;
  v35 = v155;
  sub_1000CD000(a1, a2, a3, a4, v33);
  v155 = v35;
  if (v35)
  {

    return swift_deallocBox();
  }

  v127 = AssociatedConformanceWitness;
  v125[0] = isa;
  v129 = a2;
  v133 = a3;
  v140 = a4;
  v139 = v32;
  v37 = v154;
  v38 = v154[2].isa;
  v39 = v149;
  v138 = v34;
  v135 = v38;
  v134 = v154 + 2;
  (v38)(v149, v34, AssociatedTypeWitness);
  v40 = v39;
  (v37[7].isa)(v39, 0, 1, AssociatedTypeWitness);
  aBlock = v156;
  v41 = type metadata accessor for Array();
  swift_getWitnessTable();
  v42 = v144;
  v126 = v41;
  BidirectionalCollection.last.getter();
  v43 = *(TupleTypeMetadata2 + 48);
  v44 = AssociatedTypeWitness;
  v45 = v146;
  v46 = v146[2];
  v47 = v141;
  v48 = v40;
  v49 = v152;
  v46(v141, v48, v152);
  v128 = v43;
  v46(&v47[v43], v42, v49);
  v50 = v37[6].isa;
  v51 = v50(v47, 1, AssociatedTypeWitness);
  v148 = AssociatedTypeWitness;
  v52 = v149;
  if (v51 == 1)
  {
    v53 = v45[1];
    v54 = v152;
    v53(v42, v152);
    v53(v52, v54);
    AssociatedTypeWitness = v44;
    if (v50(&v47[v128], 1, v44) == 1)
    {
      v53(v47, v152);
      goto LABEL_24;
    }
  }

  else
  {
    v55 = v136;
    v46(v136, v47, v152);
    v56 = v128;
    if (v50(&v47[v128], 1, AssociatedTypeWitness) != 1)
    {
      v96 = v153;
      v97 = v154;
      (v154[4].isa)(v153, &v47[v56], AssociatedTypeWitness);
      v98 = *(v127[2].isa + 1);
      LODWORD(TupleTypeMetadata2) = dispatch thunk of static Equatable.== infix(_:_:)();
      v99 = v97[1].isa;
      v99(v96, v148);
      v100 = v47;
      v101 = v146[1];
      v102 = v152;
      v101(v144, v152);
      v101(v52, v102);
      v99(v55, v148);
      AssociatedTypeWitness = v148;
      v101(v100, v102);
      v59 = v150;
      v60 = v135;
      v61 = v133;
      v62 = v134;
      if (TupleTypeMetadata2)
      {
        goto LABEL_24;
      }

      goto LABEL_9;
    }

    v57 = v146[1];
    v58 = v152;
    v57(v144, v152);
    v57(v52, v58);
    (v154[1].isa)(v55, AssociatedTypeWitness);
  }

  (*(v137 + 8))(v47, TupleTypeMetadata2);
  v59 = v150;
  v60 = v135;
  v61 = v133;
  v62 = v134;
LABEL_9:
  v161 = v156;
  v63 = v153;
  v60(v153, v138, AssociatedTypeWitness);
  swift_getWitnessTable();
  v144 = *(v127[2].isa + 1);
  Collection<>.firstIndex(of:)();
  v64 = v154 + 1;
  TupleTypeMetadata2 = v154[1].isa;
  (TupleTypeMetadata2)(v63, AssociatedTypeWitness);
  if (v158)
  {

    if (qword_100239CD8 == -1)
    {
LABEL_11:
      v65 = type metadata accessor for Logger();
      sub_10000DAC0(v65, qword_10023FCB8);

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = v138;
        v70 = v68;
        v71 = swift_slowAlloc();
        v161 = v71;
        *v70 = 136315138;
        swift_beginAccess();
        v135(v63, v69, AssociatedTypeWitness);
        v72 = String.init<A>(describing:)();
        v74 = sub_10017AD04(v72, v73, &v161);

        *(v70 + 4) = v74;
        _os_log_impl(&_mh_execute_header, v66, v67, "No index found for current schema version: %s", v70, 0xCu);
        sub_10000DB58(v71);
      }

      sub_1000CD860();
      swift_allocError();
      *v75 = 1;
      swift_willThrow();
    }

LABEL_36:
    swift_once();
    goto LABEL_11;
  }

  v76 = aBlock + 1;
  if (__OFADD__(aBlock, 1))
  {
    __break(1u);
LABEL_38:
    swift_once();
LABEL_30:
    v103 = type metadata accessor for Logger();
    sub_10000DAC0(v103, qword_10023FCB8);
    v104 = v130;
    v60(v130, v62, AssociatedTypeWitness);
    v60(v61, v59, AssociatedTypeWitness);
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v154 = v105;
      v108 = v107;
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v108 = 136315394;
      v109 = v60;
      v110 = v153;
      v109(v153, v104, AssociatedTypeWitness);
      v111 = String.init<A>(describing:)();
      v113 = v112;
      LODWORD(v152) = v106;
      (TupleTypeMetadata2)(v104, AssociatedTypeWitness);
      v114 = sub_10017AD04(v111, v113, &aBlock);

      *(v108 + 4) = v114;
      *(v108 + 12) = 2080;
      v115 = v131;
      v135(v110, v131, AssociatedTypeWitness);
      v116 = String.init<A>(describing:)();
      v118 = v117;
      v119 = v115;
      v120 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v119, AssociatedTypeWitness);
      v121 = sub_10017AD04(v116, v118, &aBlock);

      *(v108 + 14) = v121;
      v62 = v142;
      v122 = v154;
      _os_log_impl(&_mh_execute_header, v154, v152, "Schema version mismatch: %s - %s", v108, 0x16u);
      swift_arrayDestroy();

      v123 = v120;
    }

    else
    {

      v123 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v61, AssociatedTypeWitness);
      v123(v104, AssociatedTypeWitness);
    }

    sub_1000CD860();
    swift_allocError();
    *v124 = 2;
    swift_willThrow();
    v123(v62, AssociatedTypeWitness);
    v123(v59, AssociatedTypeWitness);
  }

  v77 = Array.count.getter();
  swift_beginAccess();
  v141 = v77;
  v78 = v147;
  if (v76 < v77)
  {
    v79 = v76;
    v80 = 0;
    v152 = 0;
    v81 = v143;
    v137 = v143 + 16;
    v136 = (v132 + 7);
    v132 = v125[0] + 7;
    v128 = v143 + 32;
    v127 = v154 + 4;
    v126 = v159;
    v125[0] = v154 + 3;
    v82 = v79;
    v125[1] = v64;
    while (1)
    {
      v149 = v80;
      v146 = v82;
      Array.subscript.getter();
      v160 = 0;
      (*(v81 + 16))(v151, v78, v61);
      v60(v153, v59, AssociatedTypeWitness);
      v83 = (*(v81 + 80) + 40) & ~*(v81 + 80);
      v84 = &v136[v83] & 0xFFFFFFFFFFFFFFF8;
      v85 = v154;
      v86 = (LOBYTE(v154[10].isa) + v84 + 8) & ~LOBYTE(v154[10].isa);
      v87 = (v132 + v86) & 0xFFFFFFFFFFFFFFF8;
      v63 = swift_allocObject();
      v88 = v140;
      *(v63 + 2) = v61;
      *(v63 + 3) = v88;
      v89 = v129;
      *(v63 + 4) = v129;
      (*(v81 + 32))(&v63[v83], v151, v61);
      AssociatedTypeWitness = v139;
      *&v63[v84] = v139;
      (v85[4].isa)(&v63[v86], v153, v148);
      *&v63[v87] = &v160;
      v90 = v89;

      sub_1000CE4F4(v152);
      v91 = swift_allocObject();
      *(v91 + 16) = sub_1000CE680;
      *(v91 + 24) = v63;
      v159[2] = sub_100062C08;
      v159[3] = v91;
      aBlock = _NSConcreteStackBlock;
      v158 = 1107296256;
      v159[0] = sub_100121018;
      v159[1] = &unk_10021D740;
      v92 = _Block_copy(&aBlock);

      sub_10000635C(v90, v92);
      _Block_release(v92);
      LOBYTE(v92) = swift_isEscapingClosureAtFileLocation();

      if (v92)
      {
        break;
      }

      if (v160)
      {
        swift_errorRetain();

        swift_willThrow();
        (TupleTypeMetadata2)(v150, v148);
LABEL_28:
      }

      v62 = v142;
      v78 = v147;
      v93 = v90;
      v61 = v133;
      v94 = v155;
      sub_1000CD000(v147, v93, v133, v140, v142);
      AssociatedTypeWitness = v148;
      v59 = v150;
      if (v94)
      {
        (TupleTypeMetadata2)(v150, v148);

        goto LABEL_28;
      }

      if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
      {
        v155 = v63;

        v61 = v131;
        v60 = v135;
        if (qword_100239CD8 == -1)
        {
          goto LABEL_30;
        }

        goto LABEL_38;
      }

      v155 = 0;
      v95 = TupleTypeMetadata2;
      (TupleTypeMetadata2)(v62, AssociatedTypeWitness);
      (*v125[0])(v138, v59, AssociatedTypeWitness);
      v95(v59, AssociatedTypeWitness);
      v82 = v146 + 1;

      v152 = sub_1000CE680;
      v80 = v63;
      v60 = v135;
      v81 = v143;
      if (v141 == v82)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_24:
  v152 = 0;
LABEL_25:

  return sub_1000CE4F4(v152);
}

uint64_t sub_1000CCDBC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  v17 = 0;
  v3 = sub_1001ABB58(a1, v2, &v17);

  v4 = v17;
  if (v3 && (v5 = v17, v6 = String._bridgeToObjectiveC()(), v17 = 0, v7 = sub_1001ABB58(a1, v6, &v17), v6, v4 = v17, v7))
  {
    v8 = v17;
  }

  else
  {
    v9 = v4;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100239CD8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FCB8);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Failed to setup database store schema: %@", v13, 0xCu);
      sub_1000AEA80(v14);
    }

    else
    {
    }
  }

  return 1;
}

uint64_t sub_1000CD000@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v69 = a5;
  v74 = a1;
  v7 = *(a3 - 8);
  v71 = a2;
  v72 = v7;
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(a1);
  v65 = v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v70 = v58 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v68 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = v58 - v18;
  v20 = *(AssociatedTypeWitness - 8);
  v21 = v20[8];
  __chkstk_darwin(v17);
  v23 = v58 - v22;
  aBlock[0] = 0;
  v78 = a4;
  v73 = a3;
  v67 = *(swift_getAssociatedConformanceWitness() + 24);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v66 = v20[6];
  if (v66(v19, 1, AssociatedTypeWitness) != 1)
  {
    v59 = v13;
    v60 = v12;
    v61 = v20;
    v30 = v20[4];
    v63 = v20 + 4;
    v64 = v23;
    v62 = v30;
    v30(v23, v19, AssociatedTypeWitness);
    v76 = 0;
    v77 = 1;
    v31 = String._bridgeToObjectiveC()();
    v33 = v72;
    v32 = v73;
    v34 = *(v72 + 16);
    v35 = v70;
    v58[1] = v72 + 16;
    v58[0] = v34;
    v34(v70, v74, v73);
    v36 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v37 = (v8 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
    v38 = swift_allocObject();
    v39 = v78;
    *(v38 + 16) = v32;
    *(v38 + 24) = v39;
    (*(v33 + 32))(v38 + v36, v35, v32);
    *(v38 + v37) = &v76;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1000CEAC8;
    *(v40 + 24) = v38;
    v70 = v38;
    aBlock[4] = sub_1000CEB40;
    aBlock[5] = v40;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CE47C;
    aBlock[3] = &unk_10021D830;
    v41 = _Block_copy(aBlock);

    sub_1000061F0(v71, v31, v41);

    _Block_release(v41);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    v42 = v78;
    if (v31)
    {
      __break(1u);
    }

    else
    {
      if (v77)
      {
        v43 = v64;
LABEL_15:
        v62(v69, v43, AssociatedTypeWitness);
      }

      v37 = v33;
      v40 = v76;
      aBlock[0] = v76;
      v43 = v68;
      dispatch thunk of RawRepresentable.init(rawValue:)();
      if (v66(v43, 1, AssociatedTypeWitness) != 1)
      {
        (v61[1])(v64, AssociatedTypeWitness);
        goto LABEL_15;
      }

      v33 = v42;
      (*(v59 + 8))(v43, v60);
      if (qword_100239CD8 == -1)
      {
LABEL_12:
        v44 = type metadata accessor for Logger();
        sub_10000DAC0(v44, qword_10023FCB8);
        v45 = v65;
        (v58[0])(v65, v74, v32);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          LODWORD(v74) = v47;
          v49 = v45;
          v50 = v48;
          v71 = swift_slowAlloc();
          aBlock[0] = v71;
          *v50 = 136315394;
          v51 = (*(v33 + 40))(v32, v33);
          v53 = v52;
          (*(v37 + 8))(v49, v32);
          v54 = sub_10017AD04(v51, v53, aBlock);

          *(v50 + 4) = v54;
          *(v50 + 12) = 2048;
          *(v50 + 14) = v40;
          _os_log_impl(&_mh_execute_header, v46, v74, "Unknown schema version found for schema '%s': %lld", v50, 0x16u);
          sub_10000DB58(v71);
        }

        else
        {

          (*(v37 + 8))(v45, v32);
        }

        v55 = v61;
        v56 = v64;
        sub_1000CD860();
        swift_allocError();
        *v57 = 1;
        swift_willThrow();
        (v55[1])(v56, AssociatedTypeWitness);
      }
    }

    swift_once();
    goto LABEL_12;
  }

  (*(v13 + 8))(v19, v12);
  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000DAC0(v24, qword_10023FCB8);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&_mh_execute_header, v25, v26, "No zero version for schema", v27, 2u);
  }

  sub_1000CD860();
  swift_allocError();
  *v28 = 0;
  return swift_willThrow();
}

unint64_t sub_1000CD860()
{
  result = qword_10023C8F0;
  if (!qword_10023C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023C8F0);
  }

  return result;
}

uint64_t sub_1000CD8B4(void *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v78 = a5;
  v80 = a4;
  v79 = *(a6 - 8);
  v12 = *(v79 + 64);
  __chkstk_darwin(a1);
  v74 = v13;
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(AssociatedTypeWitness);
  v76 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v17);
  v73 = &v66 - v19;
  __chkstk_darwin(v18);
  v21 = &v66 - v20;
  v75 = a3;
  v22 = swift_projectBox();
  v23 = objc_allocWithZone(SQLiteDatabaseStoreMigrator);
  v69 = a1;
  v24 = sub_1001AC9A4(v23, a1);
  swift_beginAccess();
  v25 = *(v15 + 16);
  v71 = v22;
  v81 = v25;
  v82 = v15 + 16;
  v25(v21, v22, AssociatedTypeWitness);
  (*(a7 + 56))(v21, v24, a6, a7);
  v77 = v15;
  v68 = a7;
  v26 = v74;
  v27 = v70;
  v28 = v79;
  v72 = *(v15 + 8);
  v72(v21, AssociatedTypeWitness);
  if (sub_1001ACC74(v24))
  {
    v67 = v24;
    v66 = String._bridgeToObjectiveC()();
    v30 = v27;
    (*(v28 + 16))(v27, a2, a6);
    v31 = v73;
    v81(v73, v80, AssociatedTypeWitness);
    v32 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v33 = (v26 + v32 + *(v15 + 80)) & ~*(v15 + 80);
    v34 = swift_allocObject();
    v35 = v68;
    *(v34 + 16) = a6;
    *(v34 + 24) = v35;
    (*(v28 + 32))(v34 + v32, v30, a6);
    v36 = *(v15 + 32);
    v70 = AssociatedTypeWitness;
    v36(v34 + v33, v31, AssociatedTypeWitness);
    v37 = swift_allocObject();
    v37->data = sub_1000CE91C;
    v37->length = v34;
    v79 = v34;
    aBlock[4] = sub_1000CEA14;
    aBlock[5] = v37;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000CE21C;
    aBlock[3] = &unk_10021D7B8;
    v38 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v39 = v66;
    LODWORD(v33) = sub_1001ABB68(v69, v66, aBlock, v38);
    _Block_release(v38);

    if (v33)
    {
      v40 = aBlock[0];

      return 1;
    }

    v47 = aBlock[0];
    v42 = _convertNSErrorToError(_:)();

    swift_willThrow();
    v74 = sub_1000CE91C;
    v43 = v76;
    v45 = v81;
    v46 = v72;
    v24 = v67;
    AssociatedTypeWitness = v70;
  }

  else
  {
    v42 = sub_1001ACC60(v24, v29);
    v43 = v76;
    if (!v42)
    {
      sub_1000CD860();
      v42 = swift_allocError();
      *v44 = 3;
    }

    swift_willThrow();
    v74 = 0;
    v79 = 0;
    v45 = v81;
    v46 = v72;
  }

  if (qword_100239CD8 != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  sub_10000DAC0(v48, qword_10023FCB8);
  v45(v43, v80, AssociatedTypeWitness);

  swift_errorRetain();
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    LODWORD(v81) = v50;
    v52 = v51;
    v80 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v84 = v82;
    *v52 = 136315650;
    v72 = v46;
    v53 = v71;
    swift_beginAccess();
    v54 = v73;
    v45(v73, v53, AssociatedTypeWitness);
    v55 = String.init<A>(describing:)();
    v56 = v45;
    v58 = sub_10017AD04(v55, v57, &v84);

    *(v52 + 4) = v58;
    *(v52 + 12) = 2080;
    v56(v54, v43, AssociatedTypeWitness);
    v59 = String.init<A>(describing:)();
    v61 = v60;
    v72(v43, AssociatedTypeWitness);
    v62 = sub_10017AD04(v59, v61, &v84);

    *(v52 + 14) = v62;
    *(v52 + 22) = 2112;
    swift_errorRetain();
    v63 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 24) = v63;
    v64 = v80;
    *v80 = v63;
    _os_log_impl(&_mh_execute_header, v49, v81, "Failed to migrate from %s to %s: %@", v52, 0x20u);
    sub_1000AEA80(v64);

    swift_arrayDestroy();
  }

  else
  {

    v46(v43, AssociatedTypeWitness);
  }

  v65 = *v78;
  *v78 = v42;

  sub_1000CE4F4(v74);
  return 0;
}