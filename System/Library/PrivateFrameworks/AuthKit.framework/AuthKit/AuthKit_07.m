uint64_t sub_1001F84F4(uint64_t a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_1001F858C;

  return sub_1001BCE30(a1);
}

uint64_t sub_1001F858C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_1001F86BC, 0, 0);
  }
}

uint64_t sub_1001F86BC()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 128) = v2;
  v3 = 1 << v2;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(v1 + 64);

  v6 = 0;
  while (1)
  {
    if (!v5)
    {
      while (1)
      {
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        v7 = *(v0 + 16);
        if (v8 >= (((1 << *(v0 + 128)) + 63) >> 6))
        {
          break;
        }

        v5 = *(v7 + 8 * v8 + 64);
        ++v6;
        if (v5)
        {
          v6 = v8;
          goto LABEL_13;
        }
      }

      v21 = *(v0 + 8);

      return v21();
    }

    v7 = *(v0 + 16);
LABEL_13:
    *(v0 + 40) = v5;
    *(v0 + 48) = v6;
    v9 = __clz(__rbit64(v5)) | (v6 << 6);
    v10 = (*(v7 + 48) + 16 * v9);
    *(v0 + 56) = *v10;
    *(v0 + 64) = v10[1];
    v11 = *(*(v7 + 56) + 8 * v9);
    *(v0 + 72) = v11;

    v12 = v11;
    v13 = [v12 deviceList];
    if (!v13)
    {

      goto LABEL_6;
    }

    v14 = v13;
    sub_100013C00(0, &unk_100374310, AKRemoteDevice_ptr);
    v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    *(v0 + 80) = v15;

    result = v15 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 88) = result;
    v17 = *(v0 + 80);
    if (result)
    {
      break;
    }

    v18 = *(v0 + 64);
    v19 = *(v0 + 72);
    v20 = *(v0 + 80);

    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
LABEL_6:
    v5 &= v5 - 1;
  }

  if ((v17 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v22 = *(v17 + 32);
  }

  v23 = v22;
  *(v0 + 96) = v22;
  *(v0 + 104) = 1;
  v24 = swift_task_alloc();
  *(v0 + 112) = v24;
  *v24 = v0;
  v24[1] = sub_1001F8970;
  v25 = *(v0 + 56);
  v26 = *(v0 + 64);
  v27 = *(v0 + 24);

  return sub_1001F8DB4(v23, v25, v26);
}

uint64_t sub_1001F8970()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v8 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = *(v2 + 64);

    v6 = sub_1001F8D40;
  }

  else
  {
    v6 = sub_1001F8A98;
  }

  return _swift_task_switch(v6, 0, 0);
}

void sub_1001F8A98()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  if (v1 == v2)
  {
    v3 = AKRemoteDevice_ptr;
    while (2)
    {
      v5 = *(v0 + 72);
      v4 = *(v0 + 80);
      v6 = *(v0 + 64);

      v8 = *(v0 + 40);
      v7 = *(v0 + 48);
      while (1)
      {
        v8 &= v8 - 1;
        if (!v8)
        {
          while (1)
          {
            v10 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              __break(1u);
              goto LABEL_29;
            }

            v9 = *(v0 + 16);
            if (v10 >= (((1 << *(v0 + 128)) + 63) >> 6))
            {
              break;
            }

            v8 = *(v9 + 8 * v10 + 64);
            ++v7;
            if (v8)
            {
              v7 = v10;
              goto LABEL_10;
            }
          }

          v27 = *(v0 + 8);

          v27();
          return;
        }

        v9 = *(v0 + 16);
LABEL_10:
        *(v0 + 40) = v8;
        *(v0 + 48) = v7;
        v11 = __clz(__rbit64(v8)) | (v7 << 6);
        v12 = (*(v9 + 48) + 16 * v11);
        *(v0 + 56) = *v12;
        *(v0 + 64) = v12[1];
        v13 = *(*(v9 + 56) + 8 * v11);
        *(v0 + 72) = v13;

        v14 = v13;
        v15 = [v14 deviceList];
        if (v15)
        {
          break;
        }
      }

      v16 = v15;
      sub_100013C00(0, &unk_100374310, AKRemoteDevice_ptr);
      v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
      *(v0 + 80) = v17;

      if (v17 >> 62)
      {
        v19 = _CocoaArrayWrapper.endIndex.getter();
        *(v0 + 88) = v19;
        if (!v19)
        {
          continue;
        }
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v0 + 88) = v18;
        if (!v18)
        {
          continue;
        }
      }

      break;
    }

    v3 = 0;
  }

  else
  {
    v3 = *(v0 + 104);
  }

  v20 = *(v0 + 80);
  if ((v20 & 0xC000000000000001) != 0)
  {
LABEL_29:
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (v3 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_31:
      __break(1u);
      return;
    }

    v21 = *(v20 + 8 * v3 + 32);
  }

  v22 = v21;
  *(v0 + 96) = v21;
  *(v0 + 104) = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
    goto LABEL_31;
  }

  v23 = swift_task_alloc();
  *(v0 + 112) = v23;
  *v23 = v0;
  v23[1] = sub_1001F8970;
  v24 = *(v0 + 56);
  v25 = *(v0 + 64);
  v26 = *(v0 + 24);

  sub_1001F8DB4(v22, v24, v25);
}

uint64_t sub_1001F8D40()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[2];

  v4 = v0[15];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001F8DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = type metadata accessor for Date();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();

  return _swift_task_switch(sub_1001F8EB0, 0, 0);
}

uint64_t sub_1001F8EB0()
{
  if (qword_100371BC8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1001AD2E4(v2, qword_100377668);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "DeviceListProvider - Begin saving device %@", v7, 0xCu);
    sub_1001FA4B4(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v10 = *(v0 + 24);

  v11 = [v10 lastUpdatedDate];
  if (!v11)
  {
    __break(1u);
  }

  v12 = v11;
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);
  v15 = *(v0 + 56);
  v16 = *(v0 + 64);
  v17 = *(v0 + 24);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();

  Date.timeIntervalSince1970.getter();
  v19 = v18;
  v20 = *(v16 + 8);
  v20(v13, v15);
  v141 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v19];
  *(v0 + 96) = v141;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v22 = v21;
  v20(v14, v15);
  v143 = [objc_allocWithZone(NSDecimalNumber) initWithDouble:v22];
  *(v0 + 104) = v143;
  v23 = [v17 additionalInfo];
  if (v23)
  {
    v24 = v23;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    sub_10023A660(&_swiftEmptyArrayStorage);
  }

  v25 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *(v0 + 16) = 0;
  v27 = [v25 dataWithJSONObject:isa options:0 error:v0 + 16];

  v28 = *(v0 + 16);
  if (v27)
  {
    v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;
  }

  else
  {
    v32 = v28;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v29 = 0;
    v31 = 0xF000000000000000;
  }

  *(v0 + 112) = v29;
  *(v0 + 120) = v31;
  v33 = *(v0 + 24);
  sub_1001AD17C(&unk_100374270, &qword_10029DE30);
  v34 = swift_allocObject();
  *(v0 + 128) = v34;
  *(v34 + 16) = xmmword_10029E250;
  v35 = [v33 machineId];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    *(v34 + 56) = &type metadata for String;
    if (v39)
    {
      goto LABEL_17;
    }

    v37 = 0;
  }

  else
  {
    v37 = 0;
    *(v34 + 56) = &type metadata for String;
  }

  v39 = 0xE000000000000000;
LABEL_17:
  v40 = *(v0 + 24);
  *(v34 + 32) = v37;
  *(v34 + 40) = v39;
  v41 = [v40 name];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = (v34 + 64);
    *(v34 + 88) = &type metadata for String;
    if (v45)
    {
      *v46 = v43;
      goto LABEL_22;
    }
  }

  else
  {
    v46 = (v34 + 64);
    *(v34 + 88) = &type metadata for String;
  }

  *v46 = 0;
  v45 = 0xE000000000000000;
LABEL_22:
  v47 = *(v0 + 24);
  *(v34 + 72) = v45;
  v48 = [v47 serialNumber];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = (v34 + 96);
    *(v34 + 120) = &type metadata for String;
    if (v52)
    {
      *v53 = v50;
      goto LABEL_27;
    }
  }

  else
  {
    v53 = (v34 + 96);
    *(v34 + 120) = &type metadata for String;
  }

  *v53 = 0;
  v52 = 0xE000000000000000;
LABEL_27:
  v54 = *(v0 + 24);
  *(v34 + 104) = v52;
  v55 = [v54 model];
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = (v34 + 128);
    *(v34 + 152) = &type metadata for String;
    if (v59)
    {
      *v60 = v57;
      goto LABEL_32;
    }
  }

  else
  {
    v60 = (v34 + 128);
    *(v34 + 152) = &type metadata for String;
  }

  *v60 = 0;
  v59 = 0xE000000000000000;
LABEL_32:
  v61 = *(v0 + 24);
  *(v34 + 136) = v59;
  v62 = [v61 operatingSystemName];
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;

    v67 = (v34 + 160);
    *(v34 + 184) = &type metadata for String;
    if (v66)
    {
      *v67 = v64;
      goto LABEL_37;
    }
  }

  else
  {
    v67 = (v34 + 160);
    *(v34 + 184) = &type metadata for String;
  }

  *v67 = 0;
  v66 = 0xE000000000000000;
LABEL_37:
  v68 = *(v0 + 24);
  *(v34 + 168) = v66;
  v69 = [v68 operatingSystemVersion];
  if (v69)
  {
    v70 = v69;
    v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v72;

    v74 = (v34 + 192);
    *(v34 + 216) = &type metadata for String;
    if (v73)
    {
      *v74 = v71;
      goto LABEL_42;
    }
  }

  else
  {
    v74 = (v34 + 192);
    *(v34 + 216) = &type metadata for String;
  }

  *v74 = 0;
  v73 = 0xE000000000000000;
LABEL_42:
  v75 = *(v0 + 24);
  *(v34 + 200) = v73;
  v76 = [v75 colorCode];
  if (v76)
  {
    v77 = v76;
    v78 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v80 = v79;

    v81 = (v34 + 224);
    *(v34 + 248) = &type metadata for String;
    if (v80)
    {
      *v81 = v78;
      goto LABEL_47;
    }
  }

  else
  {
    v81 = (v34 + 224);
    *(v34 + 248) = &type metadata for String;
  }

  *v81 = 0;
  v80 = 0xE000000000000000;
LABEL_47:
  v82 = *(v0 + 24);
  *(v34 + 232) = v80;
  v83 = [v82 coverGlassColorCode];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;

    v88 = (v34 + 256);
    *(v34 + 280) = &type metadata for String;
    if (v87)
    {
      *v88 = v85;
      goto LABEL_52;
    }
  }

  else
  {
    v88 = (v34 + 256);
    *(v34 + 280) = &type metadata for String;
  }

  *v88 = 0;
  v87 = 0xE000000000000000;
LABEL_52:
  v89 = *(v0 + 24);
  *(v34 + 264) = v87;
  v90 = [v89 backingColorCode];
  if (v90)
  {
    v91 = v90;
    v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v94 = v93;

    v95 = (v34 + 288);
    *(v34 + 312) = &type metadata for String;
    if (v94)
    {
      *v95 = v92;
      goto LABEL_57;
    }
  }

  else
  {
    v95 = (v34 + 288);
    *(v34 + 312) = &type metadata for String;
  }

  *v95 = 0;
  v94 = 0xE000000000000000;
LABEL_57:
  v96 = *(v0 + 24);
  *(v34 + 296) = v94;
  v97 = [v96 housingColorCode];
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;

    v102 = (v34 + 320);
    *(v34 + 344) = &type metadata for String;
    if (v101)
    {
      *v102 = v99;
      goto LABEL_62;
    }
  }

  else
  {
    v102 = (v34 + 320);
    *(v34 + 344) = &type metadata for String;
  }

  *v102 = 0;
  v101 = 0xE000000000000000;
LABEL_62:
  v103 = *(v0 + 24);
  *(v34 + 328) = v101;
  v104 = [v103 enclosureColorCode];
  if (v104)
  {
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;

    v109 = (v34 + 352);
    *(v34 + 376) = &type metadata for String;
    if (v108)
    {
      *v109 = v106;
      goto LABEL_67;
    }
  }

  else
  {
    v109 = (v34 + 352);
    *(v34 + 376) = &type metadata for String;
  }

  *v109 = 0;
  v108 = 0xE000000000000000;
LABEL_67:
  v110 = *(v0 + 24);
  *(v34 + 360) = v108;
  [v110 inCircle];
  v111 = Bool._bridgeToObjectiveC()().super.super.isa;
  v112 = sub_100013C00(0, &qword_100372D58, NSNumber_ptr);
  *(v34 + 408) = v112;
  *(v34 + 384) = v111;
  v113 = [v110 buildNumber];
  if (v113)
  {
    v114 = v113;
    v115 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v116;

    v118 = (v34 + 416);
    *(v34 + 440) = &type metadata for String;
    if (v117)
    {
      *v118 = v115;
      goto LABEL_72;
    }
  }

  else
  {
    v118 = (v34 + 416);
    *(v34 + 440) = &type metadata for String;
  }

  *v118 = 0;
  v117 = 0xE000000000000000;
LABEL_72:
  v119 = *(v0 + 32);
  v120 = *(v0 + 40);
  v121 = *(v0 + 24);
  *(v34 + 424) = v117;
  [v121 trusted];
  v122.super.super.isa = Bool._bridgeToObjectiveC()().super.super.isa;
  *(v34 + 472) = v112;
  *(v34 + 448) = v122;
  v123 = sub_100013C00(0, &qword_100372D60, NSDecimalNumber_ptr);
  v124 = v123;
  *(v34 + 480) = v142;
  *(v34 + 536) = &type metadata for Data;
  if (v31 >> 60 == 15)
  {
    v125 = 0;
  }

  else
  {
    v125 = v29;
  }

  v126 = 0xC000000000000000;
  if (v31 >> 60 != 15)
  {
    v126 = v31;
  }

  *(v34 + 504) = v123;
  *(v34 + 512) = v125;
  *(v34 + 520) = v126;
  *(v34 + 568) = &type metadata for String;
  *(v34 + 544) = v119;
  *(v34 + 552) = v120;
  v127 = v142;

  sub_1001F9DB8(v29, v31);
  v128 = [v121 services];
  if (v128)
  {
    v129 = v128;
    v130 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v132 = v131;

    v133 = (v34 + 576);
    *(v34 + 600) = &type metadata for String;
    if (v132)
    {
      *v133 = v130;
      goto LABEL_82;
    }
  }

  else
  {
    v133 = (v34 + 576);
    *(v34 + 600) = &type metadata for String;
  }

  *v133 = 0;
  v132 = 0xE000000000000000;
LABEL_82:
  *(v34 + 584) = v132;
  *(v34 + 632) = v124;
  *(v34 + 608) = v143;
  v134 = v143;
  _StringGuts.grow(_:)(286);
  v135._object = 0x80000001002AAF70;
  v135._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v135);
  v136._countAndFlagsBits = 0x6C5F656369766564;
  v136._object = 0xEB00000000747369;
  String.append(_:)(v136);
  v137._countAndFlagsBits = 0xD000000000000105;
  v137._object = 0x80000001002AB920;
  String.append(_:)(v137);
  *(v0 + 136) = 0xE000000000000000;
  v138 = swift_task_alloc();
  *(v0 + 144) = v138;
  *v138 = v0;
  v138[1] = sub_1001F98B8;
  v139 = *(v0 + 48);

  return sub_1001BD4F8(0, 0xE000000000000000, v34);
}

uint64_t sub_1001F98B8(char a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 152) = v1;

  v7 = *(v3 + 136);
  v8 = *(v3 + 128);

  if (v1)
  {
    v9 = sub_1001F9BF8;
  }

  else
  {
    v9 = sub_1001F9A48;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_1001F9A48()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 24);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 160);
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v5;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v3, v4, "DeviceListProvider - Finished saving device %@ with success: %{BOOL}d", v7, 0x12u);
    sub_1001FA4B4(v8, &unk_1003726A0, &unk_10029CFA0);
  }

  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v12 = *(v0 + 104);
  v14 = *(v0 + 72);
  v13 = *(v0 + 80);

  sub_1001AE1E4(v11, v10);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1001F9BF8()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[9];
  v4 = v0[10];
  sub_1001AE1E4(v0[14], v0[15]);

  v5 = v0[1];
  v6 = v0[19];

  return v5();
}

uint64_t sub_1001F9CB8()
{

  return swift_deallocClassInstance();
}

double sub_1001F9D14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10023A350(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100231BF0();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1000122C0((*(v12 + 56) + 32 * v9), a3);
    sub_1001D1C1C(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1001F9DB8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001F9DCC(a1, a2);
  }

  return a1;
}

uint64_t sub_1001F9DCC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_1001F9E20(void *a1)
{
  v2 = [a1 includeUntrustedDevices];
  if (v2)
  {
    v3 = 0xD00000000000002BLL;
  }

  else
  {
    v3 = 0xD00000000000003BLL;
  }

  if (v2)
  {
    v4 = "?, ?, ?, ?, ?, ?, ?);";
  }

  else
  {
    v4 = "vice_list WHERE altDSID = ?";
  }

  v5 = v4 | 0x8000000000000000;
  v6 = [a1 serialNumbers];
  if (v6)
  {
    v7 = v6;
    v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v9 = *(v8 + 16);
    if (v9)
    {
      v66 = v3;
      v70 = &_swiftEmptyArrayStorage;
      sub_100233A2C(0, v9, 0);
      v10 = &_swiftEmptyArrayStorage;
      v11 = (v8 + 40);
      do
      {
        v12 = *(v11 - 1);
        v13 = *v11;
        v69[0] = 39;
        v69[1] = 0xE100000000000000;

        v14._countAndFlagsBits = v12;
        v14._object = v13;
        String.append(_:)(v14);
        v15._countAndFlagsBits = 39;
        v15._object = 0xE100000000000000;
        String.append(_:)(v15);

        v70 = v10;
        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          sub_100233A2C((v16 > 1), v17 + 1, 1);
          v10 = v70;
        }

        v10[2] = v17 + 1;
        v18 = &v10[2 * v17];
        v18[4] = 39;
        v18[5] = 0xE100000000000000;
        v11 += 2;
        --v9;
      }

      while (v9);

      v3 = v66;
    }

    else
    {

      v10 = &_swiftEmptyArrayStorage;
    }

    _StringGuts.grow(_:)(26);

    v70 = v10;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 41;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v69[0] = v3;
    v69[1] = v5;

    v24._countAndFlagsBits = 0xD000000000000017;
    v24._object = 0x80000001002ABAC0;
    String.append(_:)(v24);
  }

  v25 = [a1 operatingSystems];
  if (v25)
  {
    v26 = v25;
    v27 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v28 = *(v27 + 16);
    if (v28)
    {
      v67 = v3;
      v70 = &_swiftEmptyArrayStorage;
      sub_100233A2C(0, v28, 0);
      v29 = &_swiftEmptyArrayStorage;
      v30 = (v27 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;
        v69[0] = 39;
        v69[1] = 0xE100000000000000;

        v33._countAndFlagsBits = v31;
        v33._object = v32;
        String.append(_:)(v33);
        v34._countAndFlagsBits = 39;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);

        v70 = v29;
        v36 = v29[2];
        v35 = v29[3];
        if (v36 >= v35 >> 1)
        {
          sub_100233A2C((v35 > 1), v36 + 1, 1);
          v29 = v70;
        }

        v29[2] = v36 + 1;
        v37 = &v29[2 * v36];
        v37[4] = 39;
        v37[5] = 0xE100000000000000;
        v30 += 2;
        --v28;
      }

      while (v28);

      v3 = v67;
    }

    else
    {

      v29 = &_swiftEmptyArrayStorage;
    }

    strcpy(v69, " AND os IN (");
    BYTE5(v69[1]) = 0;
    HIWORD(v69[1]) = -5120;
    v70 = v29;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v38 = BidirectionalCollection<>.joined(separator:)();
    v40 = v39;

    v41._countAndFlagsBits = v38;
    v41._object = v40;
    String.append(_:)(v41);

    v42._countAndFlagsBits = 41;
    v42._object = 0xE100000000000000;
    String.append(_:)(v42);
    v43 = v69[0];
    v44 = v69[1];
    v69[0] = v3;
    v69[1] = v5;

    v45._countAndFlagsBits = v43;
    v45._object = v44;
    String.append(_:)(v45);
  }

  v46 = [a1 services];
  if (v46)
  {
    v47 = v46;
    v48 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v49 = *(v48 + 16);
    if (v49)
    {
      v68 = v3;
      v70 = &_swiftEmptyArrayStorage;
      sub_100233A2C(0, v49, 0);
      v50 = &_swiftEmptyArrayStorage;
      v51 = (v48 + 40);
      do
      {
        v52 = *(v51 - 1);
        v53 = *v51;

        _StringGuts.grow(_:)(20);

        v69[0] = 0xD000000000000010;
        v69[1] = 0x80000001002ABAA0;
        v54._countAndFlagsBits = v52;
        v54._object = v53;
        String.append(_:)(v54);
        v55._countAndFlagsBits = 10021;
        v55._object = 0xE200000000000000;
        String.append(_:)(v55);

        v70 = v50;
        v57 = v50[2];
        v56 = v50[3];
        if (v57 >= v56 >> 1)
        {
          sub_100233A2C((v56 > 1), v57 + 1, 1);
          v50 = v70;
        }

        v50[2] = v57 + 1;
        v58 = &v50[2 * v57];
        v58[4] = 0xD000000000000010;
        v58[5] = 0x80000001002ABAA0;
        v51 += 2;
        --v49;
      }

      while (v49);

      v3 = v68;
    }

    else
    {

      v50 = &_swiftEmptyArrayStorage;
    }

    v70 = v50;
    sub_1001AD17C(&qword_100373418, qword_10029E2A8);
    sub_1001FA514();
    v59 = BidirectionalCollection<>.joined(separator:)();
    v61 = v60;

    v62._countAndFlagsBits = v59;
    v62._object = v61;
    String.append(_:)(v62);

    v63._countAndFlagsBits = 41;
    v63._object = 0xE100000000000000;
    String.append(_:)(v63);
    v69[0] = v3;
    v69[1] = v5;

    v64._countAndFlagsBits = 0x2820444E4120;
    v64._object = 0xE600000000000000;
    String.append(_:)(v64);
  }

  return v3;
}

uint64_t sub_1001FA4B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1001AD17C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1001FA514()
{
  result = qword_100373420;
  if (!qword_100373420)
  {
    sub_1001C5270(&qword_100373418, qword_10029E2A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373420);
  }

  return result;
}

NSObject *sub_1001FA578(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_1001B8248(a1, a2, a3, a4);
  v9 = *(v4 + 16);
  v43 = 0;
  v10 = [v9 keychainItemForDescriptor:v8 error:&v43];
  v11 = v10;
  if (v43)
  {
    v12 = v43;

LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  if (!v10)
  {
LABEL_8:
    v12 = [objc_opt_self() ak_errorWithCode:-7001];
    goto LABEL_9;
  }

  v13 = [v10 value];
  if (!v13)
  {

    goto LABEL_8;
  }

  v14 = v13;
  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  sub_100200AC4(0, &unk_1003734C0, NSKeyedUnarchiver_ptr);
  type metadata accessor for BiscuitToken();
  v18 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (!v5)
  {
    v19 = v18;
    sub_100013B34(v15, v17);

    return v19;
  }

  sub_100013B34(v15, v17);

  v8 = v11;
  v12 = v5;
LABEL_10:

  v43 = v12;
  swift_errorRetain();
  v19 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
  sub_100200AC4(0, &qword_100373000, NSError_ptr);
  if (!swift_dynamicCast())
  {
LABEL_25:

    return v19;
  }

  if ([v42 code] != -25300)
  {
LABEL_20:
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1001AD2E4(v34, static Logger.akd);

    v35 = v42;
    v19 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v44 = v39;
      *v37 = 136315394;
      *(v37 + 4) = sub_10024B050(a1, a2, &v44);
      *(v37 + 12) = 2112;
      *(v37 + 14) = v35;
      *v38 = v35;
      v40 = v35;
      _os_log_impl(&_mh_execute_header, v19, v36, "Failed to fetch token with identifier %s: %@", v37, 0x16u);
      sub_100012054(v38, &unk_1003726A0, &unk_10029CFA0);

      sub_1001FF914(v39);
    }

    swift_willThrow();
    goto LABEL_25;
  }

  v20 = [v42 domain];
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = v22;

  if (v21 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v23 != v24)
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v25)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

LABEL_16:
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1001AD2E4(v26, static Logger.akd);

  v27 = v42;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v44 = v32;
    *v30 = 136315394;
    *(v30 + 4) = sub_10024B050(a1, a2, &v44);
    *(v30 + 12) = 2112;
    *(v30 + 14) = v27;
    *v31 = v27;
    v33 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "No token found in keychain with identifier %s: %@", v30, 0x16u);
    sub_100012054(v31, &unk_1003726A0, &unk_10029CFA0);

    sub_1001FF914(v32);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001FAB4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v31 = 0;
  v10 = [objc_opt_self() archivedDataWithRootObject:a3 requiringSecureCoding:1 error:&v31];
  v11 = v31;
  if (v10)
  {
    v12 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_1001B8248(a1, a2, a4, a5);
    v16 = objc_allocWithZone(AAFKeychainItem);
    v17 = v15;
    sub_1001F9DCC(v12, v14);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v19 = [v16 initWithDescriptor:v17 value:isa];

    sub_100013B34(v12, v14);
    v20 = *(v5 + 16);
    v31 = 0;
    [v20 addOrUpdateKeychainItem:v19 error:&v31];
    v21 = v31;
    if (!v31)
    {

      return sub_100013B34(v12, v14);
    }

    swift_willThrow();
    v21;

    sub_100013B34(v12, v14);
  }

  else
  {
    v22 = v11;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_1001AD2E4(v23, static Logger.akd);

  swift_errorRetain();
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v26 = 136315394;
    *(v26 + 4) = sub_10024B050(a1, a2, &v31);
    *(v26 + 12) = 2112;
    swift_errorRetain();
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v26 + 14) = v29;
    *v27 = v29;
    _os_log_impl(&_mh_execute_header, v24, v25, "Failed to update token with identifier %s: %@", v26, 0x16u);
    sub_100012054(v27, &unk_1003726A0, &unk_10029CFA0);

    sub_1001FF914(v28);
  }

  return swift_willThrow();
}

uint64_t sub_1001FAFA8()
{
  v1 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v10 - v3;
  v5 = OBJC_IVAR___AKBAADeviceTokenController__sendBAACertWithToken;
  result = *&v0[OBJC_IVAR___AKBAADeviceTokenController__sendBAACertWithToken];
  if (!result)
  {
    v7 = type metadata accessor for TaskPriority();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v9 = v0;
    sub_100248D54(0, 0, v4, &unk_10029E360, v8);

    return *&v0[v5];
  }

  return result;
}

uint64_t sub_1001FB0BC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001FB14C;

  return sub_1001FEAB4();
}

uint64_t sub_1001FB14C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_1001FB240()
{
  result = [objc_allocWithZone(type metadata accessor for BAADeviceTokenController()) init];
  qword_100377660 = result;
  return result;
}

void *sub_1001FB270@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(AAFKeychainManager) init];
  v3 = type metadata accessor for TokenKeychainManager();
  result = swift_allocObject();
  result[3] = 0xD00000000000001ELL;
  result[4] = 0x80000001002ABDE0;
  result[2] = v2;
  a1[3] = v3;
  a1[4] = &off_1003267C0;
  *a1 = result;
  return result;
}

id sub_1001FB2FC(uint64_t a1)
{
  sub_100200AC4(0, &qword_100373508, &off_10031CFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  swift_unknownObjectRetain();
  v3 = [objc_allocWithZone(ObjCClassFromMetadata) initWithRequestProvider:a1];
  swift_unknownObjectRelease();
  return v3;
}

id sub_1001FB36C()
{
  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001FB590()
{
  v1[36] = v0;
  v2 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  v1[37] = swift_task_alloc();
  v3 = *(*(sub_1001AD17C(&qword_100372298, &qword_10029CF30) - 8) + 64) + 15;
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v1[40] = v4;
  v5 = *(v4 - 8);
  v1[41] = v5;
  v1[42] = *(v5 + 64);
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();

  return _swift_task_switch(sub_1001FB6E0, 0, 0);
}

uint64_t sub_1001FB6E0()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[45] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing BAA device token", v4, 2u);
  }

  v5 = v0[36];

  sub_1001FC8FC();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Checking for device token feature status in URL bag.", v8, 2u);
  }

  v9 = v0[39];
  v10 = v0[36];

  v11 = *(v10 + OBJC_IVAR___AKBAADeviceTokenController_featureFlag);
  v0[2] = v0;
  v0[7] = v9;
  v0[3] = sub_1001FB9B4;
  v12 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003734D0, &qword_10029F510);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001FCA34;
  v0[13] = &unk_100327FA0;
  v0[14] = v12;
  [v11 fetchURLWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FB9B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_1001FC5AC;
  }

  else
  {
    v3 = sub_1001FBAC4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FBAC4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 328);
  v3 = *(v0 + 304);
  sub_1001FFB70(*(v0 + 312), v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = *(v0 + 360);
    sub_100012054(*(v0 + 304), &qword_100372298, &qword_10029CF30);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "BAA device token refresh feature is disabled.", v7, 2u);
    }

    [objc_opt_self() ak_errorWithCode:-7027];
    swift_willThrow();
    v9 = *(v0 + 344);
    v8 = *(v0 + 352);
    v11 = *(v0 + 304);
    v10 = *(v0 + 312);
    v12 = *(v0 + 296);

    v13 = *(v0 + 8);
    goto LABEL_5;
  }

  v15 = *(v0 + 288);
  v16 = *(*(v0 + 328) + 32);
  v16(*(v0 + 352), *(v0 + 304), *(v0 + 320));
  *(v0 + 432) = 0;
  v17 = OBJC_IVAR___AKBAADeviceTokenController_refreshDispatchQueue;
  *(v0 + 376) = OBJC_IVAR___AKBAADeviceTokenController_refreshDispatchQueue;
  v18 = *&v15[v17];
  v19 = swift_allocObject();
  *(v19 + 16) = v15;
  *(v19 + 24) = v0 + 432;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1001FFBE0;
  *(v20 + 24) = v19;
  *(v0 + 176) = sub_1001FFC08;
  *(v0 + 184) = v20;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1001FAEC8;
  *(v0 + 168) = &unk_100328018;
  v21 = _Block_copy((v0 + 144));
  v22 = *(v0 + 184);
  v23 = v18;
  v24 = v15;

  dispatch_sync(v23, v21);

  _Block_release(v21);
  LOBYTE(v21) = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
    __break(1u);
    return Task.value.getter(v25, v26, v27, v28, v29);
  }

  v30 = *(v0 + 432);

  if (v30 == 1)
  {
    v32 = *(v0 + 344);
    v31 = *(v0 + 352);
    v34 = *(v0 + 328);
    v33 = *(v0 + 336);
    v35 = *(v0 + 320);
    v37 = *(v0 + 288);
    v36 = *(v0 + 296);
    v38 = type metadata accessor for TaskPriority();
    (*(*(v38 - 8) + 56))(v36, 1, 1, v38);
    (*(v34 + 16))(v32, v31, v35);
    v39 = (*(v34 + 80) + 40) & ~*(v34 + 80);
    v40 = swift_allocObject();
    *(v40 + 2) = 0;
    *(v40 + 3) = 0;
    *(v40 + 4) = v37;
    v16(&v40[v39], v32, v35);
    v41 = v37;
    v42 = sub_1001FD378(0, 0, v36, &unk_10029E348, v40);
    *(v0 + 384) = v42;
    v43 = *&v41[OBJC_IVAR___AKBAADeviceTokenController_refreshTask];
    *&v41[OBJC_IVAR___AKBAADeviceTokenController_refreshTask] = v42;

    v44 = async function pointer to Task.value.getter[1];
    v45 = swift_task_alloc();
    *(v0 + 392) = v45;
    v25 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    *v45 = v0;
    v46 = sub_1001FC0B4;
    goto LABEL_15;
  }

  v47 = *(v0 + 360);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "BAA device token refresh already in progress.", v50, 2u);
  }

  v51 = *(v0 + 288);

  v42 = *(v51 + OBJC_IVAR___AKBAADeviceTokenController_refreshTask);
  *(v0 + 408) = v42;
  if (v42)
  {
    v52 = async function pointer to Task.value.getter[1];

    v45 = swift_task_alloc();
    *(v0 + 416) = v45;
    v25 = sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    *v45 = v0;
    v46 = sub_1001FC3CC;
LABEL_15:
    v45[1] = v46;
    v29 = &protocol self-conformance witness table for Error;
    v27 = &type metadata for () + 8;
    v26 = v42;
    v28 = v25;

    return Task.value.getter(v25, v26, v27, v28, v29);
  }

  (*(*(v0 + 328) + 8))(*(v0 + 352), *(v0 + 320));
  v54 = *(v0 + 344);
  v53 = *(v0 + 352);
  v56 = *(v0 + 304);
  v55 = *(v0 + 312);
  v57 = *(v0 + 296);

  v13 = *(v0 + 8);
LABEL_5:

  return v13();
}

uint64_t sub_1001FC0B4()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v7 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = *(v2 + 384);

    v5 = sub_1001FC704;
  }

  else
  {
    v5 = sub_1001FC1D0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1001FC1D0()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[44];
  v4 = v0[40];
  v5 = v0[41];
  v6 = v0[36];

  v7 = *&v6[v2];
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_100200B60;
  *(v9 + 24) = v8;
  v0[34] = sub_100200B50;
  v0[35] = v9;
  v0[30] = _NSConcreteStackBlock;
  v0[31] = 1107296256;
  v0[32] = sub_1001FAEC8;
  v0[33] = &unk_100328130;
  v10 = _Block_copy(v0 + 30);
  v11 = v0[35];
  v12 = v6;
  v13 = v7;

  dispatch_sync(v13, v10);

  _Block_release(v10);
  (*(v5 + 8))(v3, v4);
  LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    __break(1u);
  }

  else
  {
    v16 = v0[43];
    v15 = v0[44];
    v18 = v0[38];
    v17 = v0[39];
    v19 = v0[37];

    v20 = v0[1];

    return v20();
  }

  return result;
}

uint64_t sub_1001FC3CC()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  *(*v1 + 424) = v0;

  v5 = *(v2 + 408);

  if (v0)
  {
    v6 = sub_1001FC650;
  }

  else
  {
    v6 = sub_1001FC500;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1001FC500()
{
  (*(v0[41] + 8))(v0[44], v0[40]);
  v2 = v0[43];
  v1 = v0[44];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[37];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1001FC5AC()
{
  v1 = v0[46];
  swift_willThrow();
  v2 = v0[46];
  v4 = v0[43];
  v3 = v0[44];
  v6 = v0[38];
  v5 = v0[39];
  v7 = v0[37];

  v8 = v0[1];

  return v8();
}

uint64_t sub_1001FC650()
{
  (*(v0[41] + 8))(v0[44], v0[40]);
  v1 = v0[53];
  v3 = v0[43];
  v2 = v0[44];
  v5 = v0[38];
  v4 = v0[39];
  v6 = v0[37];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1001FC704()
{
  v1 = v0[44];
  v2 = v0[40];
  v3 = v0[41];
  v4 = v0[36];
  v5 = *&v4[v0[47]];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1001FFD40;
  *(v7 + 24) = v6;
  v0[28] = sub_100200B4C;
  v0[29] = v7;
  v0[24] = _NSConcreteStackBlock;
  v0[25] = 1107296256;
  v0[26] = sub_1001FAEC8;
  v0[27] = &unk_1003280B8;
  v8 = _Block_copy(v0 + 24);
  v9 = v0[29];
  v10 = v4;
  v11 = v5;

  dispatch_sync(v11, v8);

  _Block_release(v8);
  (*(v3 + 8))(v1, v2);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }

  else
  {
    v13 = v0[50];
    v15 = v0[43];
    v14 = v0[44];
    v17 = v0[38];
    v16 = v0[39];
    v18 = v0[37];

    v19 = v0[1];

    return v19();
  }

  return result;
}

void sub_1001FC8FC()
{
  v1 = *(v0 + OBJC_IVAR___AKBAADeviceTokenController_haveBAAOperationsSucceeded);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 1)
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1001AD2E4(v3, static Logger.akd);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "BAA operations not yet successful, aborting device token request", v6, 2u);
    }

    [objc_opt_self() ak_errorWithCode:-7133];
    swift_willThrow();
  }
}

uint64_t sub_1001FCA34(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v20 - v11;
  v13 = *sub_1001FF8D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v14 = swift_allocError();
    *v15 = a3;
    v16 = a3;

    return _swift_continuation_throwingResumeWithError(v13, v14);
  }

  else
  {
    if (a2)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v10, 0, 1, v17);
    }

    else
    {
      v18 = type metadata accessor for URL();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
    }

    sub_1001FFB70(v10, v12);
    sub_1001FFB70(v12, *(*(v13 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001FCC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 168) = a4;
  *(v5 + 176) = a5;
  return _swift_task_switch(sub_1001FCC30, 0, 0);
}

uint64_t sub_1001FCC30()
{
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[23] = sub_1001AD2E4(v1, static Logger.akd);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Refreshing BAA device token.", v4, 2u);
  }

  v6 = v0[21];
  v5 = v0[22];

  v7 = OBJC_IVAR___AKBAADeviceTokenController_cachedToken;
  v0[24] = OBJC_IVAR___AKBAADeviceTokenController_cachedToken;
  v8 = *(v6 + v7);
  *(v6 + v7) = 0;

  v9 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
  v10 = objc_allocWithZone(AKGrandSlamRequestProvider);
  URL._bridgeToObjectiveC()(v11);
  v13 = v12;
  v14 = [v10 initWithContext:v9 url:v12];
  v0[25] = v14;

  [v14 setAuthenticatedRequest:0];
  [v14 setRequestBodyType:1];
  [v14 setExpectedResponseType:1];
  v15 = v14;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  [v15 setAuthKitBody:isa];

  v17 = v6 + OBJC_IVAR___AKBAADeviceTokenController_serviceControllerProvider;
  v19 = *(v6 + OBJC_IVAR___AKBAADeviceTokenController_serviceControllerProvider);
  v18 = *(v17 + 8);
  v20 = v15;
  v21 = v19();
  v0[26] = v21;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1001FCF3C;
  v22 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100372C80, &qword_10029E350);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001CD6E4;
  v0[13] = &unk_100328158;
  v0[14] = v22;
  [v21 executeRequestWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FCF3C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_1001FD2FC;
  }

  else
  {
    v3 = sub_1001FD04C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FD04C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  sub_1001F9DCC(v1, v2);
  v3 = sub_100200060(v1, v2);
  v4 = *(v0 + 184);
  sub_100013B34(v1, v2);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Saving BAA device token.", v7, 2u);
  }

  v8 = *(v0 + 168);

  v9 = *(v8 + OBJC_IVAR___AKBAADeviceTokenController_tokenKeychainProvider + 8);
  (*(v8 + OBJC_IVAR___AKBAADeviceTokenController_tokenKeychainProvider))();
  v10 = *sub_1001FF8D0((v0 + 80), *(v0 + 104));
  sub_1001FAB4C(0xD000000000000010, 0x80000001002ABD60, v3, 0, 0);
  v13 = *(v0 + 184);
  v12 = *(v0 + 192);
  v14 = *(v0 + 168);
  v15 = *(v14 + v12);
  *(v14 + v12) = v3;
  v16 = v3;

  sub_1001FF914((v0 + 80));
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Successfully Saved BAA device token.", v19, 2u);
  }

  v21 = *(v0 + 200);
  v20 = *(v0 + 208);
  v22 = *(v0 + 192);
  v23 = *(v0 + 168);

  swift_unknownObjectRelease();
  sub_100013B34(v1, v2);

  v24 = *(v23 + v22);
  *(v23 + v22) = v3;

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1001FD2FC()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  swift_unknownObjectRelease();
  v4 = v0[27];
  v5 = v0[1];

  return v5();
}

uint64_t sub_1001FD378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1001FFB08(a3, v24 - v10, &unk_100372310, &qword_10029CEC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012054(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100012054(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012054(a3, &unk_100372310, &qword_10029CEC0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001FD624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1001FFB08(a3, v24 - v10, &unk_100372310, &qword_10029CEC0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100012054(v11, &unk_100372310, &qword_10029CEC0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_1001AD17C(&qword_100372298, &qword_10029CF30);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100012054(a3, &unk_100372310, &qword_10029CEC0);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100012054(a3, &unk_100372310, &qword_10029CEC0);
  sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1001FDA54(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001FDAFC;

  return sub_1001FB590();
}

uint64_t sub_1001FDAFC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 32);
  v6 = *(*v1 + 16);
  v7 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = _convertErrorToNSError(_:)();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1001FDC80()
{
  *(v1 + 192) = v0;
  v2 = *(*(sub_1001AD17C(&unk_100372310, &qword_10029CEC0) - 8) + 64) + 15;
  *(v1 + 200) = swift_task_alloc();

  return _swift_task_switch(sub_1001FDD1C, 0, 0);
}

uint64_t sub_1001FDD1C()
{
  v1 = *(v0[24] + OBJC_IVAR___AKBAADeviceTokenController_featureFlag);
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_1001FDE44;
  v2 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_1003734B0, &qword_10029E320);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1001FE4A8;
  v0[13] = &unk_100327F50;
  v0[14] = v2;
  [v1 featureStatusWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1001FDE44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_1001FE438;
  }

  else
  {
    v3 = sub_1001FDF54;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FDF54()
{
  if (v0[23] == 1)
  {
    v1 = *(v0[24] + OBJC_IVAR___AKBAADeviceTokenController_cachedToken);
    if (v1)
    {
      v2 = qword_100371BB0;
      v3 = v1;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      sub_1001AD2E4(v4, static Logger.akd);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = "Returning cached BAA device token.";
      goto LABEL_7;
    }

    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1001AD2E4(v19, static Logger.akd);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Fetching BAA device token from keychain.", v22, 2u);
    }

    v23 = v0[24];

    v24 = *(v23 + OBJC_IVAR___AKBAADeviceTokenController_tokenKeychainProvider + 8);
    (*(v23 + OBJC_IVAR___AKBAADeviceTokenController_tokenKeychainProvider))();
    v25 = *sub_1001FF8D0(v0 + 18, v0[21]);
    v3 = sub_1001FA578(0xD000000000000010, 0x80000001002ABD60, 0, 0);
    sub_1001FF914(v0 + 18);
    if (v3)
    {
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v5, v6))
      {
        goto LABEL_8;
      }

      v7 = "Successfully fetched BAA device token.";
LABEL_7:
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, v7, v8, 2u);

LABEL_8:
      v9 = v0[25];

      v10 = v0[1];

      return v10(v3);
    }

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No BAA device token found in keychain. Refreshing...", v28, 2u);
    }

    v30 = v0[24];
    v29 = v0[25];

    v31 = type metadata accessor for TaskPriority();
    (*(*(v31 - 8) + 56))(v29, 1, 1, v31);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v30;
    v33 = v30;
    sub_1001FD378(0, 0, v29, &unk_10029E330, v32);

    v16 = -7132;
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_1001AD2E4(v12, static Logger.akd);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "BAA device token refresh feature is disabled.", v15, 2u);
    }

    v16 = -7027;
  }

  [objc_opt_self() ak_errorWithCode:v16];
  swift_willThrow();
  v17 = v0[25];

  v18 = v0[1];

  return v18();
}

uint64_t sub_1001FE438()
{
  v1 = v0[26];
  swift_willThrow();
  v2 = v0[25];
  v3 = v0[26];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1001FE4A8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1001FF8D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001FE574()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1001FE604;

  return sub_1001FB590();
}

uint64_t sub_1001FE604()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001FE86C(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001FE914;

  return sub_1001FDC80();
}

uint64_t sub_1001FE914(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1001FEAD4()
{
  v1 = v0[26];
  v2 = OBJC_IVAR___AKBAADeviceTokenController__sendBAACertWithToken;
  v0[27] = OBJC_IVAR___AKBAADeviceTokenController__sendBAACertWithToken;
  if (*(v1 + v2))
  {
    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v1 + OBJC_IVAR___AKBAADeviceTokenController_urlBagProvider;
    v7 = *v5;
    v6 = *(v5 + 8);

    v9 = v7(v8);
    v0[28] = v9;

    v10 = AKURLBagKeySendBAACertsWithToken;
    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_1001FEC88;
    v11 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_1003734A8, &unk_10029E310);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_1001FF368;
    v0[13] = &unk_100327F28;
    v0[14] = v11;
    [v9 configurationValueForKey:v10 fromCache:1 completion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }
}

uint64_t sub_1001FEC88()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_1001FF068;
  }

  else
  {
    v3 = sub_1001FED98;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001FED98()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  *(v0 + 144) = *(v0 + 176);
  *(v0 + 160) = v2;

  sub_1001FFB08(v0 + 144, v0 + 80, &qword_100372080, &qword_10029C6E0);
  if (!*(v0 + 104))
  {
    sub_100012054(v0 + 80, &qword_100372080, &qword_10029C6E0);
LABEL_9:
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1001AD2E4(v8, static Logger.akd);
    v4 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    v6 = 2;
    if (os_log_type_enabled(v4, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "BAA certs with token config not present. Certs wont be sent with token.";
      v12 = v9;
      v13 = v4;
LABEL_18:
      _os_log_impl(&_mh_execute_header, v13, v12, v11, v10, 2u);

      goto LABEL_19;
    }

    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(v0 + 176) == 1)
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_1001AD2E4(v3, static Logger.akd);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = 1;
    if (os_log_type_enabled(v4, v5))
    {
      v7 = "BAA certs with token config is available. Certs will be sent with token.";
LABEL_17:
      v10 = swift_slowAlloc();
      *v10 = 0;
      v12 = v5;
      v13 = v4;
      v11 = v7;
      goto LABEL_18;
    }
  }

  else
  {
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, static Logger.akd);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.info.getter();
    v6 = 2;
    if (os_log_type_enabled(v4, v5))
    {
      v7 = "BAA certs with token config not present. Certs wont be sent with token.";
      goto LABEL_17;
    }
  }

LABEL_19:
  v16 = *(v0 + 208);
  v15 = *(v0 + 216);

  sub_100012054(v0 + 144, &qword_100372080, &qword_10029C6E0);
  *(v16 + v15) = v6;
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1001FF068()
{
  v27 = v0;
  v2 = v0[28];
  v1 = v0[29];
  swift_willThrow();

  v0[10] = v1;
  sub_1001AD17C(&qword_100373250, qword_10029D0B0);
  sub_100200AC4(0, &qword_100373000, NSError_ptr);
  result = swift_dynamicCast();
  if (result)
  {
    v4 = v0[18];
    if (qword_100371BB0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1001AD2E4(v5, static Logger.akd);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v26 = v10;
      *v9 = 136315138;
      v11 = v6;
      v12 = v6;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_10024B050(v14, v16, &v26);

      *(v9 + 4) = v17;
      v6 = v11;
      _os_log_impl(&_mh_execute_header, v7, v8, "Error getting the config for BAA certs with token - %s", v9, 0xCu);
      sub_1001FF914(v10);
    }

    if ([v6 code] == -7097)
    {
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "BAA certs with token config not present. Certs wont be sent with token.", v20, 2u);
      }

      v21 = 2;
    }

    else
    {
      v21 = 0;
    }

    v23 = v0[26];
    v22 = v0[27];

    *(v23 + v22) = v21;
    v24 = v0[10];

    v25 = v0[1];

    return v25();
  }

  return result;
}

uint64_t sub_1001FF368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *sub_1001FF8D0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    if (a2)
    {
      ObjectType = swift_getObjectType();
      *&v12 = a2;
      sub_1000122C0(&v12, &v14);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    v9 = *(*(v5 + 64) + 40);
    v10 = v15;
    *v9 = v14;
    v9[1] = v10;
    swift_unknownObjectRetain();
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_1001FF5E0(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_1001FF688;

  return sub_1001FEAB4();
}

uint64_t sub_1001FF688()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  v2[2](v2);
  _Block_release(v2);
  v4 = *(v6 + 8);

  return v4();
}

id sub_1001FF7C0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BAADeviceTokenController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_1001FF8D0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1001FF914(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1001FF960()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1001FFA14;

  return sub_1001FE574();
}

uint64_t sub_1001FFA14()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1001FFB08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1001AD17C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1001FFB70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1001FFBE0()
{
  v1 = *(v0 + 16);
  if ((*(v1 + OBJC_IVAR___AKBAADeviceTokenController_refreshInProgress) & 1) == 0)
  {
    v2 = *(v0 + 24);
    *(v1 + OBJC_IVAR___AKBAADeviceTokenController_refreshInProgress) = 1;
    *v2 = 1;
  }
}

uint64_t sub_1001FFC08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1001FFC30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001FFC48(uint64_t a1)
{
  v4 = *(type metadata accessor for URL() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100200B54;

  return sub_1001FCC10(a1, v6, v7, v8, v1 + v5);
}

id sub_1001FFD54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a7;
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v29 = a1;
  v27 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v7 = *(v27 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v27);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v28 = type metadata accessor for BAADeviceTokenController();
  v15 = objc_allocWithZone(v28);
  *&v15[OBJC_IVAR___AKBAADeviceTokenController_cachedToken] = 0;
  *&v15[OBJC_IVAR___AKBAADeviceTokenController_refreshTask] = 0;
  v26 = OBJC_IVAR___AKBAADeviceTokenController_refreshDispatchQueue;
  sub_100200AC4(0, &qword_1003734E0, OS_dispatch_queue_ptr);
  static DispatchQoS.unspecified.getter();
  v37 = &_swiftEmptyArrayStorage;
  sub_1001E7BC4();
  sub_1001AD17C(&unk_1003734F0, &unk_10029DEA8);
  sub_1001E7C1C();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v7 + 104))(v10, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v27);
  *&v15[v26] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v15[OBJC_IVAR___AKBAADeviceTokenController_refreshInProgress] = 0;
  *&v15[OBJC_IVAR___AKBAADeviceTokenController__sendBAACertWithToken] = 0;
  v16 = OBJC_IVAR___AKBAADeviceTokenController_haveBAAOperationsSucceeded;
  sub_1001AD17C(&qword_100373500, qword_10029E3C0);
  v17 = swift_allocObject();
  *(v17 + 20) = 0;
  *(v17 + 16) = 0;
  *&v15[v16] = v17;
  v18 = &v15[OBJC_IVAR___AKBAADeviceTokenController_tokenKeychainProvider];
  v19 = v30;
  *v18 = v29;
  v18[1] = v19;
  v20 = &v15[OBJC_IVAR___AKBAADeviceTokenController_serviceControllerProvider];
  v21 = v32;
  *v20 = v31;
  v20[1] = v21;
  v22 = &v15[OBJC_IVAR___AKBAADeviceTokenController_urlBagProvider];
  v23 = v34;
  *v22 = v33;
  v22[1] = v23;
  *&v15[OBJC_IVAR___AKBAADeviceTokenController_featureFlag] = v35;
  v36.receiver = v15;
  v36.super_class = v28;
  return objc_msgSendSuper2(&v36, "init");
}

uint64_t sub_100200060(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    goto LABEL_9;
  }

  v4 = objc_opt_self();
  sub_1001F9DCC(a1, a2);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 dictionaryFromObject:isa ofType:@"application/json"];

  if (v6)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = 0x6F54656369766564;
    v22 = 0xEB000000006E656BLL;
    AnyHashable.init<A>(_:)();
    if (!*(v7 + 16) || (v8 = sub_10023A30C(v23), (v9 & 1) == 0))
    {
      sub_1001AE1E4(a1, a2);

      sub_1001AD3EC(v23);
      goto LABEL_9;
    }

    sub_1000087A8(*(v7 + 56) + 32 * v8, v24);
    sub_1001AD3EC(v23);

    if (swift_dynamicCast())
    {
      v10 = v21;
      v11 = v22;
      v12 = type metadata accessor for BiscuitToken();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR___AKBiscuitToken_identifier] = 1;
      v14 = &v13[OBJC_IVAR___AKBiscuitToken_value];
      *v14 = v10;
      *(v14 + 1) = v11;
      v20.receiver = v13;
      v20.super_class = v12;
      v15 = objc_msgSendSuper2(&v20, "init");
      sub_1001AE1E4(a1, a2);
      return v15;
    }
  }

  sub_1001AE1E4(a1, a2);
LABEL_9:
  if (qword_100371BB0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_1001AD2E4(v16, static Logger.akd);
  v17 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v15))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v17, v15, "Unable to extract device token from server response.", v18, 2u);
  }

  [objc_opt_self() ak_errorWithCode:-7021];
  swift_willThrow();
  return v15;
}

uint64_t sub_100200340()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100200380()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100200B2C;

  return sub_1001FB0BC();
}

uint64_t sub_100200434()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1002004E0;

  return sub_1001FF5E0(v2, v3);
}

uint64_t sub_1002004E0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1002005D4()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100200B34;

  return sub_1001FE86C(v2, v3);
}

uint64_t sub_100200680()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100200B38;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_100200740(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100200B3C;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_10020080C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10020084C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100200B40;

  return sub_1001FDA54(v2, v3);
}

uint64_t sub_1002008F8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_100200B44;

  return sub_10000A98C(v2, v3, v5);
}

uint64_t sub_1002009B8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1002009F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100200B48;

  return sub_1000099A4(a1, v4, v5, v7);
}

uint64_t sub_100200AC4(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100200B74(void *a1)
{
  v10 = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for ApplicationMetadataRequestProvider();
  if (objc_msgSendSuper2(&v9, "signRequest:error:", a1, &v10))
  {
    if (*&v1[OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID + 8])
    {
      v3 = *&v1[OBJC_IVAR___AKApplicationMetadataRequestProvider_clientID];
      v4 = v10;

      v5 = String._bridgeToObjectiveC()();

      v6 = String._bridgeToObjectiveC()();
      [a1 addValue:v5 forHTTPHeaderField:v6];
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v7 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }
}

void sub_100200D44(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v13[0] = 0;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for ApplicationMetadataRequestProvider();
  v4 = objc_msgSendSuper2(&v12, "validateResponseData:error:", isa, v13);

  if (v4)
  {
    v5 = v13[0];
  }

  else
  {
    v6 = v13[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v7 = _convertErrorToNSError(_:)();
    if ([v7 code] == -7010)
    {
      v8 = [v7 userInfo];
      v9 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      if (*(v9 + 16) && (v10 = sub_10023A350(25445, 0xE200000000000000), (v11 & 1) != 0))
      {
        sub_1000087A8(*(v9 + 56) + 32 * v10, v13);

        swift_dynamicCast();
      }

      else
      {
      }
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

id sub_10020138C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ApplicationMetadataRequestProvider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id *sub_1002013F8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100230B50(v3, 0);
  sub_100205378((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

id *sub_10020148C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + 64;
    v5 = -1 << *(v1 + 32);
    result = _HashTable.startBucket.getter();
    v6 = result;
    v7 = 0;
    v8 = *(v1 + 36);
    v20 = v1 + 72;
    v21 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v1 + 36))
      {
        goto LABEL_22;
      }

      v22 = v7;
      v11 = *(*(v1 + 56) + 8 * v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v12 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      v1 = v21;
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = specialized ContiguousArray._endMutation()();
      v9 = 1 << *(v21 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v13 = *(v4 + 8 * v10);
      if ((v13 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      if (v8 != *(v21 + 36))
      {
        goto LABEL_25;
      }

      v14 = v13 & (-2 << (v6 & 0x3F));
      if (v14)
      {
        v9 = __clz(__rbit64(v14)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v10 << 6;
        v16 = v10 + 1;
        v17 = (v20 + 8 * v10);
        while (v16 < (v9 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            result = sub_1002064B8(v6, v8, 0);
            v9 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        result = sub_1002064B8(v6, v8, 0);
      }

LABEL_4:
      v7 = v22 + 1;
      v6 = v9;
      if (v22 + 1 == v2)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1002016A0(uint64_t a1)
{
  *(v2 + 312) = a1;
  *(v2 + 320) = v1;
  return _swift_task_switch(sub_1002016C0, 0, 0);
}

uint64_t sub_1002016C0()
{
  if ([*(*(v0 + 320) + 16) isSiwaInPasswordsFeatureEnabled])
  {
    v1 = *(v0 + 320);
    sub_100203488();
    v2 = [*(v0 + 312) altDSID];
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    *(v0 + 328) = v5;
    v6 = swift_task_alloc();
    *(v0 + 336) = v6;
    *v6 = v0;
    v6[1] = sub_1002018F0;
    v7 = *(v0 + 320);

    return sub_1002036D4(v3, v5);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1001AD2E4(v9, qword_100377698);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Feature flag SiwaInPasswords is not enabled", v12, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 280) = -16001;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v13 = *(v0 + 272);
    swift_willThrow();
    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1002018F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 336);
  v8 = *v2;
  v3[43] = a1;
  v3[44] = v1;

  if (v1)
  {
    v5 = sub_100203128;
  }

  else
  {
    v6 = v3[41];

    v5 = sub_100201A0C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100201A0C()
{
  if (sub_10020615C(*(v0 + 344)))
  {
    v1 = *(v0 + 344);
    v2 = *(v0 + 312);
    v3 = *(v0 + 320);

    v4 = *(v3 + 96);
    v5 = [v2 altDSID];
    if (!v5)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = String._bridgeToObjectiveC()();
    }

    *(v0 + 360) = v5;
    v6 = *(*(v0 + 320) + 24);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 304;
    *(v0 + 88) = sub_100201E38;
    v7 = swift_continuation_init();
    *(v0 + 264) = sub_1001AD17C(&qword_100373638, &unk_10029E4C8);
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_100203C94;
    *(v0 + 232) = &unk_100328370;
    *(v0 + 240) = v7;
    [v4 fetchAppInformationWithAltDSID:v5 client:v6 completion:v0 + 208];
    v8 = v0 + 80;
    goto LABEL_5;
  }

  v9 = *(v0 + 352);
  *(v0 + 408) = *(v0 + 344);
  v10 = *(v0 + 312);
  v11 = *(v0 + 320);

  v13 = sub_10020148C(v12);

  *(v0 + 288) = sub_1002013F8(v13);
  v14 = sub_1002063C8((v11 + 56), *(v11 + 80));
  v15 = [v10 altDSID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = *v14;
  v17 = sub_10020EE0C();
  if (v9)
  {
  }

  else
  {
    v18 = v17;

    if (v18)
    {
      v19 = *(*(v0 + 320) + 48);
      v20 = [*(v0 + 312) currentGroupID];
      *(v0 + 416) = v20;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 296;
      *(v0 + 24) = sub_100202458;
      v21 = swift_continuation_init();
      *(v0 + 200) = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
      *(v0 + 144) = _NSConcreteStackBlock;
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1001DD224;
      *(v0 + 168) = &unk_100328348;
      *(v0 + 176) = v21;
      [v19 fetchSharedAccountsWithGroupID:v20 completionHandler:v0 + 144];
      v8 = v0 + 16;
LABEL_5:

      return _swift_continuation_await(v8);
    }
  }

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_1001AD2E4(v22, qword_100377698);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Account is not eligible for sharing. Skipping fetching of shared accounts.", v25, 2u);
  }

  sub_100203D64((v0 + 288));
  v26 = *(v0 + 288);
  v27 = *(v0 + 8);

  return v27(v26);
}

uint64_t sub_100201E38()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 368) = v2;
  if (v2)
  {
    v3 = sub_10020318C;
  }

  else
  {
    v3 = sub_100201F48;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100201F48()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 312);
  v3 = [v2 altDSID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 376) = v6;
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_10020202C;
  v8 = *(v0 + 320);

  return sub_1002036D4(v4, v6);
}

uint64_t sub_10020202C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 384);
  v6 = *v2;
  *(*v2 + 392) = v1;

  if (v1)
  {
    v7 = sub_10020327C;
  }

  else
  {
    v8 = *(v4 + 376);

    *(v4 + 400) = a1;
    v7 = sub_10020215C;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_10020215C()
{
  v1 = *(v0 + 392);
  *(v0 + 408) = *(v0 + 400);
  v2 = *(v0 + 312);
  v3 = *(v0 + 320);

  v5 = sub_10020148C(v4);

  *(v0 + 288) = sub_1002013F8(v5);
  v6 = sub_1002063C8((v3 + 56), *(v3 + 80));
  v7 = [v2 altDSID];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = *v6;
  v9 = sub_10020EE0C();
  if (v1)
  {

LABEL_7:

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_1001AD2E4(v14, qword_100377698);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Account is not eligible for sharing. Skipping fetching of shared accounts.", v17, 2u);
    }

    sub_100203D64((v0 + 288));
    v18 = *(v0 + 288);
    v19 = *(v0 + 8);

    return v19(v18);
  }

  v10 = v9;

  if ((v10 & 1) == 0)
  {
    goto LABEL_7;
  }

  v11 = *(*(v0 + 320) + 48);
  v12 = [*(v0 + 312) currentGroupID];
  *(v0 + 416) = v12;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 296;
  *(v0 + 24) = sub_100202458;
  v13 = swift_continuation_init();
  *(v0 + 200) = sub_1001AD17C(&qword_100372E38, &unk_10029DBF0);
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1001DD224;
  *(v0 + 168) = &unk_100328348;
  *(v0 + 176) = v13;
  [v11 fetchSharedAccountsWithGroupID:v12 completionHandler:v0 + 144];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100202458()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 424) = v3;
  if (v3)
  {
    v4 = *(v1 + 408);

    v5 = sub_1002032E0;
  }

  else
  {
    v5 = sub_100202570;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100202570()
{
  v1 = v0[52];
  v2 = v0[40];
  v0[54] = v0[37];

  v3 = *sub_1002063C8((v2 + 104), *(v2 + 128));
  v4 = swift_task_alloc();
  v0[55] = v4;
  *v4 = v0;
  v4[1] = sub_100202620;

  return sub_10020FF44();
}

uint64_t sub_100202620(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  *(*v2 + 448) = v1;

  if (v1)
  {
    v7 = v4[54];
    v8 = v4[51];

    v9 = sub_100202F8C;
  }

  else
  {
    v4[57] = a1;
    v9 = sub_10020275C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10020275C()
{
  v88 = v0;
  isa = v0[57].isa;
  v2 = v0[54].isa;
  v3 = *&isa[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants];

  v5 = sub_10022C268(v4);

  if (v2 >> 62)
  {
    goto LABEL_51;
  }

  v6 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = v0[51].isa;
  if (v6)
  {
    v79 = v0[51].isa;
    v8 = 0;
    v80 = v0[54].isa + 32;
    v81 = v2 & 0xFFFFFFFFFFFFFF8;
    v85 = v2 & 0xC000000000000001;
    v86 = v5 + 56;
    v82 = v0;
    v83 = v5;
    v84 = v6;
    while (1)
    {
      if (v85)
      {
        v20 = v0[54].isa;
        v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v81 + 16))
        {
          goto LABEL_50;
        }

        v21 = *(v80 + 8 * v8);
      }

      v22 = v21;
      if (__OFADD__(v8++, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        if (v0[54].isa < 0)
        {
          v77 = v0[54].isa;
        }

        v6 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v24 = [v21 shareInfo];
      if (!v24)
      {
        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for Logger();
        sub_1001AD2E4(v41, qword_100377698);
        v42 = v22;
        v2 = Logger.logObject.getter();
        v43 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v2, v43))
        {

          goto LABEL_7;
        }

        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v87[0] = v45;
        *v44 = 136315138;
        v46 = [v42 clientID];
        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        v50 = v47;
        v5 = v83;
        v51 = sub_10024B050(v50, v49, v87);
        v6 = v84;

        *(v44 + 4) = v51;
        v0 = v82;
        _os_log_impl(&_mh_execute_header, v2, v43, "We have a keychain item (%s that has an invalid shareInfo", v44, 0xCu);
        sub_100206110(v45);

        goto LABEL_6;
      }

      v25 = v24;
      v26 = [v24 groupID];
      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (*(v5 + 16) && (v30 = *(v5 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v31 = Hasher._finalize()(), v32 = -1 << *(v5 + 32), v33 = v31 & ~v32, ((*(v86 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) != 0))
      {
        v34 = ~v32;
        while (1)
        {
          v35 = (*(v5 + 48) + 16 * v33);
          v36 = *v35 == v27 && v35[1] == v29;
          if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            break;
          }

          v33 = (v33 + 1) & v34;
          if (((*(v86 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
          {
            goto LABEL_23;
          }
        }

        if (![v25 isCurrentUser])
        {
          v60 = v22;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v0[36].isa & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[36].isa & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v70 = *((v0[36].isa & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          v2 = &v0[36];
          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          goto LABEL_7;
        }

        v52 = [v22 clientID];
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        if (!*(v79 + 2))
        {

          v6 = v84;
LABEL_40:
          if (qword_100371BD8 != -1)
          {
            swift_once();
          }

          v61 = type metadata accessor for Logger();
          sub_1001AD2E4(v61, qword_100377698);
          v62 = v22;
          v2 = Logger.logObject.getter();
          v63 = static os_log_type_t.fault.getter();

          if (!os_log_type_enabled(v2, v63))
          {

            goto LABEL_7;
          }

          v64 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v87[0] = v78;
          *v64 = 136315138;
          v65 = [v62 clientID];
          v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v68 = v67;

          v69 = sub_10024B050(v66, v68, v87);
          v6 = v84;

          *(v64 + 4) = v69;
          v5 = v83;
          _os_log_impl(&_mh_execute_header, v2, v63, "We have a keychain item (%s which doesn't map to a local account ", v64, 0xCu);
          sub_100206110(v78);

          goto LABEL_6;
        }

        v56 = v0[51].isa;
        v57 = sub_10023A350(v53, v55);
        v59 = v58;

        v6 = v84;
        if ((v59 & 1) == 0)
        {
          goto LABEL_40;
        }

        v2 = *(*(v79 + 7) + 8 * v57);
        [v2 setShareInfo:v25];
      }

      else
      {
LABEL_23:

        if (qword_100371BD8 != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        sub_1001AD2E4(v37, qword_100377698);
        v38 = v22;
        v39 = v25;
        v2 = Logger.logObject.getter();
        v40 = static os_log_type_t.fault.getter();

        if (!os_log_type_enabled(v2, v40))
        {

          goto LABEL_7;
        }

        v9 = swift_slowAlloc();
        v87[0] = swift_slowAlloc();
        *v9 = 136315394;
        v10 = [v38 clientID];
        v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = v12;

        v14 = sub_10024B050(v11, v13, v87);

        *(v9 + 4) = v14;
        *(v9 + 12) = 2080;
        v15 = [v39 groupID];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        v0 = v82;
        v19 = sub_10024B050(v16, v18, v87);
        v5 = v83;

        *(v9 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v2, v40, "Keychain item for (%s is associated with group %s where the user is not a member of. Skipping...", v9, 0x16u);
        swift_arrayDestroy();

        v6 = v84;
      }

LABEL_6:

LABEL_7:
      if (v8 == v6)
      {
        v71 = v0[54].isa;
        v72 = v0[51].isa;
        break;
      }
    }
  }

  v73 = v0[56].isa;
  sub_100203D64(&v0[36]);
  v74 = v0[36].isa;
  v75 = v0[1].isa;

  return v75(v74);
}

uint64_t sub_100202F8C()
{
  v1 = v0[56];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "There was an error fetching shared acccounts. Skipping shared accounts. Error: %@", v5, 0xCu);
    sub_1001B4EB8(v6);
  }

  else
  {
  }

  sub_100203D64(v0 + 36);
  v8 = v0[36];
  v9 = v0[1];

  return v9(v8);
}

uint64_t sub_100203128()
{
  v1 = v0[41];

  v2 = v0[44];
  v3 = v0[1];

  return v3();
}

uint64_t sub_10020318C()
{
  v1 = *(v0 + 368);
  swift_willThrow();

  v2 = *(v0 + 312);

  v3 = [v2 altDSID];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 376) = v6;
  v7 = swift_task_alloc();
  *(v0 + 384) = v7;
  *v7 = v0;
  v7[1] = sub_10020202C;
  v8 = *(v0 + 320);

  return sub_1002036D4(v4, v6);
}

uint64_t sub_10020327C()
{
  v1 = v0[47];

  v2 = v0[49];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002032E0()
{
  v1 = v0[52];
  v2 = v0[53];
  swift_willThrow();

  v3 = v0[53];
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1001AD2E4(v4, qword_100377698);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "There was an error fetching shared acccounts. Skipping shared accounts. Error: %@", v7, 0xCu);
    sub_1001B4EB8(v8);
  }

  else
  {
  }

  sub_100203D64(v0 + 36);
  v10 = v0[36];
  v11 = v0[1];

  return v11(v10);
}

uint64_t sub_100203488()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Entitlement Check", v4, 2u);
  }

  v5 = *(v0 + 24);
  if (([v5 hasInternalAccess] & 1) != 0 || objc_msgSend(v5, "hasPrivateAccess"))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Client has necessary permission for accounts listing", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client doesn't have access to perform account listing", v11, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_1002036D4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(sub_1002036F8, 0, 0);
}

uint64_t sub_1002036F8()
{
  v27 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v26 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10024B050(v6, v5, &v26);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetcing SIWA accounts from local store for altDSID %s", v7, 0xCu);
    sub_100206110(v8);
  }

  v9 = v0[20];
  v10 = v0[19];
  v11 = *(v0[21] + 32);
  v12 = String._bridgeToObjectiveC()();
  v13 = [v11 authKitAccountWithAltDSID:v12];

  if (v13)
  {
    v14 = v0[20];
    v15 = v0[21];
    v16 = v0[19];

    v17 = *(v15 + 40);
    v18 = String._bridgeToObjectiveC()();
    v0[22] = v18;
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_100203A94;
    v19 = swift_continuation_init();
    v0[17] = sub_1001AD17C(&qword_100373620, &qword_10029E4B0);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10022C54C;
    v0[13] = &unk_100328320;
    v0[14] = v19;
    [v17 fetchAllDeveloperTeamsAndApplicationsForAltDSID:v18 withCompletion:v0 + 10];

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No authkit account for altDSID", v22, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    v0[18] = -16004;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v23 = v0[10];
    swift_willThrow();
    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_100203A94()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100203C24;
  }

  else
  {
    v3 = sub_100203BA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100203BA4()
{
  v1 = *(v0 + 144);

  v2 = sub_100205D1C(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_100203C24()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  v3 = v0[23];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100203C94(uint64_t a1, void *a2, void *a3)
{
  v5 = *sub_1002063C8((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return swift_continuation_throwingResume();
  }
}

Swift::Int sub_100203D64(unint64_t *a1)
{
  v2 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v2 & 0x8000000000000000) != 0 || (v2 & 0x4000000000000000) != 0)
  {
    v2 = sub_100205508(v2);
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v5[0] = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
  v5[1] = v3;
  result = sub_100204358(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_100203DDC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100203DFC, 0, 0);
}

uint64_t sub_100203DFC()
{
  v1 = *(v0 + 24);
  sub_100203488();
  v2 = [*(v0 + 16) altDSID];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 32) = v5;
  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  *v6 = v0;
  v6[1] = sub_100203F14;
  v7 = *(v0 + 24);

  return sub_1002036D4(v3, v5);
}

uint64_t sub_100203F14(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 40);
  v8 = *v2;
  v3[6] = a1;
  v3[7] = v1;

  if (v1)
  {
    v5 = sub_100204244;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_100204030;
  }

  return _swift_task_switch(v5, 0, 0);
}

void sub_100204030()
{
  v1 = *(v0 + 48);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 48);

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    if (!v4)
    {
      break;
    }

LABEL_8:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = *(*(v1 + 56) + ((v7 << 9) | (8 * v10)));
    v12 = [v11 privateEmail];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v15;
      v25 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10020E824(0, *(v8 + 2) + 1, 1, v8);
      }

      v17 = *(v8 + 2);
      v16 = *(v8 + 3);
      if (v17 >= v16 >> 1)
      {
        v8 = sub_10020E824((v16 > 1), v17 + 1, 1, v8);
      }

      *(v8 + 2) = v17 + 1;
      v18 = &v8[16 * v17];
      *(v18 + 4) = v25;
      *(v18 + 5) = v24;
    }

    else
    {
    }
  }

  while (1)
  {
    v7 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return;
    }

    if (v7 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v7);
    ++v9;
    if (v4)
    {
      goto LABEL_8;
    }
  }

  v19 = *(v0 + 48);

  v20 = sub_100233E2C(v8);

  v21 = *(v20 + 16);

  v22 = [objc_allocWithZone(NSNumber) initWithInteger:v21];
  v23 = *(v0 + 8);

  v23(v22);
}

uint64_t sub_100204244()
{
  v1 = v0[4];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1002042A8()
{
  v1 = *(v0 + 40);
  swift_unknownObjectRelease();
  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  sub_100206110((v0 + 56));

  sub_100206110((v0 + 104));
  return v0;
}

uint64_t sub_100204300()
{
  sub_1002042A8();

  return swift_deallocClassInstance();
}

Swift::Int sub_100204358(unint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10020640C(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1002045E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_10020446C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_10020446C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v26 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = result - a3;
LABEL_6:
    v24 = v4;
    v25 = a3;
    v6 = *(v26 + 8 * a3);
    v23 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 localizedAppName];
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v14 = [v9 localizedAppName];
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v11 == v15 && v13 == v17)
      {

LABEL_5:
        a3 = v25 + 1;
        v4 = v24 + 8;
        v5 = v23 - 1;
        if (v25 + 1 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v26)
      {
        break;
      }

      v20 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v20;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1002045E8(id **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_107:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_146;
    }

    v4 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v107 = v4;
LABEL_110:
      v4 = v107[2];
      if (v4 >= 2)
      {
        do
        {
          v108 = *v6;
          if (!*v6)
          {
            goto LABEL_144;
          }

          v6 = (v4 - 1);
          v109 = v107[2 * v4];
          v110 = v107;
          v111 = v107[2 * v4 + 3];
          sub_100204DE8((v108 + 8 * v109), (v108 + 8 * v107[2 * v4 + 2]), (v108 + 8 * v111), v5);
          if (v126)
          {
            break;
          }

          if (v111 < v109)
          {
            goto LABEL_133;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v110 = sub_100205260(v110);
          }

          if (v4 - 2 >= v110[2])
          {
            goto LABEL_134;
          }

          v112 = &v110[2 * v4];
          *v112 = v109;
          v112[1] = v111;
          sub_1002051D4(v4 - 1);
          v107 = v110;
          v4 = v110[2];
          v6 = a3;
        }

        while (v4 > 1);
      }

LABEL_118:

      return;
    }

LABEL_140:
    v107 = sub_100205260(v4);
    goto LABEL_110;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v122 = v7;
      v114 = v9;
      v116 = v10;
      v4 = *v6;
      v11 = *(*v6 + 8 * v8);
      v12 = *(*v6 + 8 * v10);
      v13 = v11;
      v14 = v12;
      v15 = [v13 localizedAppName];
      v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v17;

      v19 = [v14 localizedAppName];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = v21;

      if (v16 == v20 && v18 == v5)
      {
        v127 = 0;
      }

      else
      {
        v127 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v10 = v116;
      v8 = v116 + 2;
      if (v116 + 2 >= v122)
      {
        v6 = a3;
      }

      else
      {
        v4 += 8 * v116 + 16;
        do
        {
          v124 = v8;
          v24 = *(v4 - 8);
          v25 = *v4;
          v26 = v24;
          v27 = [v25 localizedAppName];
          v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;

          v30 = [v26 localizedAppName];
          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          if (v5 == v31 && v29 == v33)
          {

            v8 = v124;
            if (v127)
            {
              v6 = a3;
              v9 = v114;
              v10 = v116;
              goto LABEL_26;
            }
          }

          else
          {
            v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v8 = v124;
            if ((v127 ^ v23))
            {
              goto LABEL_24;
            }
          }

          ++v8;
          v4 += 8;
        }

        while (v122 != v8);
        v8 = v122;
LABEL_24:
        v6 = a3;
        v10 = v116;
      }

      v9 = v114;
      if (v127)
      {
LABEL_26:
        if (v8 < v10)
        {
          goto LABEL_137;
        }

        if (v10 < v8)
        {
          v35 = 8 * v8 - 8;
          v36 = 8 * v10;
          v37 = v8;
          v38 = v10;
          do
          {
            if (v38 != --v37)
            {
              v39 = *v6;
              if (!*v6)
              {
                goto LABEL_143;
              }

              v40 = *(v39 + v36);
              *(v39 + v36) = *(v39 + v35);
              *(v39 + v35) = v40;
            }

            ++v38;
            v35 -= 8;
            v36 += 8;
          }

          while (v38 < v37);
        }
      }
    }

    v41 = v6[1];
    if (v8 < v41)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_136;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v8 < v10)
    {
      goto LABEL_135;
    }

    v60 = v9;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v9 = v60;
    }

    else
    {
      v9 = sub_10020E720(0, *(v60 + 16) + 1, 1, v60);
    }

    v4 = v9[2];
    v61 = v9[3];
    v62 = v4 + 1;
    if (v4 >= v61 >> 1)
    {
      v9 = sub_10020E720((v61 > 1), v4 + 1, 1, v9);
    }

    v9[2] = v62;
    v63 = &v9[2 * v4];
    v63[4] = v10;
    v63[5] = v8;
    v64 = *a1;
    if (!*a1)
    {
      goto LABEL_145;
    }

    if (v4)
    {
      while (1)
      {
        v65 = v62 - 1;
        if (v62 >= 4)
        {
          break;
        }

        if (v62 == 3)
        {
          v66 = v9[4];
          v67 = v9[5];
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_75:
          if (v69)
          {
            goto LABEL_124;
          }

          v82 = &v9[2 * v62];
          v84 = *v82;
          v83 = v82[1];
          v85 = __OFSUB__(v83, v84);
          v86 = v83 - v84;
          v87 = v85;
          if (v85)
          {
            goto LABEL_127;
          }

          v88 = &v9[2 * v65 + 4];
          v90 = *v88;
          v89 = v88[1];
          v76 = __OFSUB__(v89, v90);
          v91 = v89 - v90;
          if (v76)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v86, v91))
          {
            goto LABEL_131;
          }

          if (v86 + v91 >= v68)
          {
            if (v68 < v91)
            {
              v65 = v62 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v92 = &v9[2 * v62];
        v94 = *v92;
        v93 = v92[1];
        v76 = __OFSUB__(v93, v94);
        v86 = v93 - v94;
        v87 = v76;
LABEL_89:
        if (v87)
        {
          goto LABEL_126;
        }

        v95 = &v9[2 * v65];
        v97 = v95[4];
        v96 = v95[5];
        v76 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v76)
        {
          goto LABEL_129;
        }

        if (v98 < v86)
        {
          goto LABEL_3;
        }

LABEL_96:
        v4 = v65 - 1;
        if (v65 - 1 >= v62)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        if (!*v6)
        {
          goto LABEL_142;
        }

        v5 = v8;
        v103 = v9;
        v104 = v9[2 * v4 + 4];
        v105 = v9[2 * v65 + 5];
        sub_100204DE8((*v6 + 8 * v104), (*v6 + 8 * v9[2 * v65 + 4]), (*v6 + 8 * v105), v64);
        if (v126)
        {
          goto LABEL_118;
        }

        if (v105 < v104)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_100205260(v103);
        }

        if (v4 >= v103[2])
        {
          goto LABEL_121;
        }

        v106 = &v103[2 * v4];
        v106[4] = v104;
        v106[5] = v105;
        sub_1002051D4(v65);
        v9 = v103;
        v62 = v103[2];
        v8 = v5;
        if (v62 <= 1)
        {
          goto LABEL_3;
        }
      }

      v70 = &v9[2 * v62 + 4];
      v71 = *(v70 - 64);
      v72 = *(v70 - 56);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_122;
      }

      v75 = *(v70 - 48);
      v74 = *(v70 - 40);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_123;
      }

      v77 = &v9[2 * v62];
      v79 = *v77;
      v78 = v77[1];
      v76 = __OFSUB__(v78, v79);
      v80 = v78 - v79;
      if (v76)
      {
        goto LABEL_125;
      }

      v76 = __OFADD__(v68, v80);
      v81 = v68 + v80;
      if (v76)
      {
        goto LABEL_128;
      }

      if (v81 >= v73)
      {
        v99 = &v9[2 * v65 + 4];
        v101 = *v99;
        v100 = v99[1];
        v76 = __OFSUB__(v100, v101);
        v102 = v100 - v101;
        if (v76)
        {
          goto LABEL_132;
        }

        if (v68 < v102)
        {
          v65 = v62 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  v42 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_138;
  }

  if (v42 >= v41)
  {
    v42 = v6[1];
  }

  if (v42 < v10)
  {
LABEL_139:
    __break(1u);
    goto LABEL_140;
  }

  if (v8 == v42)
  {
    goto LABEL_55;
  }

  v115 = v9;
  v117 = v10;
  v128 = *v6;
  v4 = *v6 + 8 * v8 - 8;
  v43 = v10 - v8;
  v120 = v42;
LABEL_44:
  v123 = v4;
  v125 = v8;
  v44 = *(v128 + 8 * v8);
  v121 = v43;
  v45 = v43;
  while (1)
  {
    v46 = *v4;
    v47 = v44;
    v48 = v46;
    v49 = [v47 localizedAppName];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;

    v52 = [v48 localizedAppName];
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;

    if (v5 == v53 && v51 == v55)
    {

LABEL_43:
      v8 = v125 + 1;
      v4 = v123 + 8;
      v43 = v121 - 1;
      if ((v125 + 1) == v120)
      {
        v8 = v120;
        v6 = a3;
        v9 = v115;
        v10 = v117;
        goto LABEL_55;
      }

      goto LABEL_44;
    }

    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v57 & 1) == 0)
    {
      goto LABEL_43;
    }

    if (!v128)
    {
      break;
    }

    v58 = *v4;
    v44 = *(v4 + 8);
    *v4 = v44;
    *(v4 + 8) = v58;
    v4 -= 8;
    if (__CFADD__(v45++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
}

uint64_t sub_100204DE8(void **__dst, id *__src, id *a3, id *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - __src;
  v11 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 3;
  if (v9 >= v11 >> 3)
  {
    if (a4 != __src || &__src[v12] <= a4)
    {
      v29 = a4;
      memmove(a4, __src, 8 * v12);
      a4 = v29;
    }

    v54 = &a4[v12];
    v13 = a4;
    if (v10 >= 8 && v5 > v6)
    {
      v49 = a4;
      v48 = v6;
LABEL_32:
      v30 = v5 - 1;
      v31 = v4;
      v32 = v54;
      v51 = v5 - 1;
      v53 = v5;
      do
      {
        v33 = *--v32;
        v34 = *v30;
        v35 = v33;
        v36 = v34;
        v37 = [v35 localizedAppName];
        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        v41 = [v36 localizedAppName];
        v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v44 = v43;

        if (v38 == v42 && v40 == v44)
        {

          v4 = (v31 - 8);
        }

        else
        {
          v46 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v4 = (v31 - 8);
          if (v46)
          {
            v13 = v49;
            if (v31 != v53)
            {
              *v4 = *v51;
            }

            if (v54 <= v49 || (v5 = v51, v51 <= v48))
            {
              v5 = v51;
              goto LABEL_49;
            }

            goto LABEL_32;
          }
        }

        v13 = v49;
        v30 = v51;
        if (v54 != v31)
        {
          *v4 = *v32;
        }

        v54 = v32;
        v31 = v4;
      }

      while (v32 > v49);
      v54 = v32;
      v5 = v53;
    }
  }

  else
  {
    v13 = a4;
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      memmove(a4, __dst, 8 * v9);
    }

    v54 = &v13[v9];
    if (v7 >= 8 && v5 < v4)
    {
      v50 = v4;
      while (1)
      {
        v52 = v5;
        v14 = *v13;
        v15 = *v5;
        v16 = v14;
        v17 = [v15 localizedAppName];
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

        v21 = [v16 localizedAppName];
        v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v24 = v23;

        v25 = v18 == v22 && v20 == v24;
        if (v25)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v26 & 1) == 0)
        {
          goto LABEL_20;
        }

        v27 = v52;
        v5 = v52 + 1;
        v28 = v50;
        if (v6 != v52)
        {
          goto LABEL_21;
        }

LABEL_22:
        ++v6;
        if (v13 >= v54 || v5 >= v28)
        {
          goto LABEL_24;
        }
      }

LABEL_20:
      v27 = v13;
      v25 = v6 == v13++;
      v5 = v52;
      v28 = v50;
      if (v25)
      {
        goto LABEL_22;
      }

LABEL_21:
      *v6 = *v27;
      goto LABEL_22;
    }

LABEL_24:
    v5 = v6;
  }

LABEL_49:
  if (v5 != v13 || v5 >= (v13 + ((v54 - v13 + (v54 - v13 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v13, 8 * ((v54 - v13) / 8));
  }

  return 1;
}

uint64_t sub_1002051D4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100205260(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

id *sub_100205274(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001AD17C(&unk_100373650, qword_10029E4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_100205378(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100206454();
          for (i = 0; i != v6; ++i)
          {
            sub_1001AD17C(&qword_100373640, &qword_10029E4D8);
            v9 = sub_1001DD6EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10020640C(0, &qword_1003743E0, AKSignInWithAppleAccount_ptr);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100205508(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0, a1);
}

void sub_10020556C(id a1)
{
  v2 = sub_1001AD17C(&qword_100373628, &qword_10029E4B8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &isa - v4;
  v6 = [a1 privateEmail];
  if (v6)
  {
    v7 = v6;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v73 = v8;
  }

  else
  {
    v70 = 0;
    v73 = 0;
  }

  v71 = v5;
  v9 = [a1 userIdentifier];
  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = String._bridgeToObjectiveC()();

    v9 = v10;
  }

  v72 = v9;
  v11 = [a1 apps];
  sub_10020640C(0, &qword_100373630, AKConsentedApplication_ptr);
  v12 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = 0;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v17 = (v14 + 63) >> 6;
  v74 = &_swiftEmptyDictionarySingleton;
  if (v16)
  {
    while (1)
    {
LABEL_15:
      v19 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v20 = *(*(v12 + 56) + ((v13 << 9) | (8 * v19)));
      v21 = [v20 primaryClientID];
      if (!v21)
      {
        goto LABEL_10;
      }

      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      if (v23 == 1280070990 && v25 == 0xE400000000000000)
      {

LABEL_23:
        if ([v20 state] != 1 && objc_msgSend(v20, "state") != 3)
        {
          goto LABEL_10;
        }

        v28 = [v20 clientID];
        if (!v28)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = String._bridgeToObjectiveC()();

          v28 = v29;
        }

        v67 = v28;
        v30 = [v20 scopes];
        if (v30)
        {
          v31 = v30;
          type metadata accessor for Scope(0);
          v69 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
        }

        else
        {
          v69 = _swiftEmptyArrayStorage;
        }

        v32 = [v20 creationDate];
        v68 = a1;
        if (v32)
        {
          v33 = v71;
          v34 = v32;
          static Date._unconditionallyBridgeFromObjectiveC(_:)();

          v35 = 0;
        }

        else
        {
          v35 = 1;
          v33 = v71;
        }

        v36 = type metadata accessor for Date();
        v37 = *(v36 - 8);
        (*(v37 + 56))(v33, v35, 1, v36);
        type metadata accessor for Scope(0);
        isa = Array._bridgeToObjectiveC()().super.isa;

        v38 = 0;
        if ((*(v37 + 48))(v33, 1, v36) != 1)
        {
          v39 = v71;
          v38 = Date._bridgeToObjectiveC()().super.isa;
          (*(v37 + 8))(v39, v36);
        }

        if (v73)
        {

          v40 = String._bridgeToObjectiveC()();
        }

        else
        {
          v40 = 0;
        }

        v41 = objc_allocWithZone(AKSignInWithAppleAccount);
        v43 = isa;
        v42 = v67;
        v69 = [v41 initWithClientID:v67 userID:v72 scopes:isa creationDate:v38 privateEmail:v40];

        v44 = [v20 appiTunesMetadata];
        v45 = [v44 appName];

        if (!v45)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = String._bridgeToObjectiveC()();
        }

        [v69 setLocalizedAppName:v45];

        v46 = [v20 appiTunesMetadata];
        v47 = [v46 appDeveloperName];

        if (v47)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        v48 = String._bridgeToObjectiveC()();

        v49 = v69;
        [v69 setLocalizedAppDeveloperName:v48];

        v50 = [v68 teamID];
        if (!v50)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v50 = String._bridgeToObjectiveC()();
        }

        [v49 setTeamID:v50];

        v51 = [v20 appiTunesMetadata];
        v52 = [v51 adamID];

        if (v52)
        {
          v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v55 = v54;

          if (v53 == 1280070990 && v55 == 0xE400000000000000)
          {
          }

          else
          {
            v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v56 & 1) == 0)
            {
              v57 = [v20 appiTunesMetadata];
              v58 = [v57 adamID];

              [v69 setAppStoreAdamID:v58];
            }
          }
        }

        v59 = [v20 clientID];
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = v69;
        v64 = v74;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v75 = v64;
        sub_100231834(v63, v60, v62, isUniquelyReferenced_nonNull_native);

        v74 = v75;
        a1 = v68;
        if (!v16)
        {
          break;
        }
      }

      else
      {
        v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v27)
        {
          goto LABEL_23;
        }

LABEL_10:

        if (!v16)
        {
          break;
        }
      }
    }
  }

  while (1)
  {
    v18 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v18 >= v17)
    {

      return;
    }

    v16 = *(v12 + 64 + 8 * v18);
    ++v13;
    if (v16)
    {
      v13 = v18;
      goto LABEL_15;
    }
  }

  __break(1u);
}

unint64_t sub_100205D1C(unint64_t a1)
{
  isUniquelyReferenced_nonNull_native = a1;
  if (a1 >> 62)
  {
LABEL_38:
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      if (v2 >= 1)
      {
        v3 = 0;
        v44 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
        v42 = isUniquelyReferenced_nonNull_native + 32;
        v4 = &_swiftEmptyDictionarySingleton;
        v43 = v2;
        while (1)
        {
          v5 = v44 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v42 + 8 * v3);
          v6 = v5;
          sub_10020556C(v5);
          v8 = v7;
          if (*(v7 + 16))
          {
            break;
          }

LABEL_6:
          if (++v3 == v2)
          {
            return v4;
          }
        }

        v46 = v6;
        v47 = v3;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v50 = v4;
        v9 = v8 + 64;
        v10 = -1 << *(v8 + 32);
        if (-v10 < 64)
        {
          v11 = ~(-1 << -v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(v8 + 64);
        v45 = -1 << *(v8 + 32);
        v13 = (63 - v10) >> 6;

        v14 = 0;
        for (i = v8; ; v8 = i)
        {
          if (!v12)
          {
            v18 = v14;
            while (1)
            {
              v17 = v18 + 1;
              if (__OFADD__(v18, 1))
              {
                break;
              }

              if (v17 >= v13)
              {
                sub_100206108();

                v2 = v43;
                v3 = v47;
                goto LABEL_6;
              }

              v12 = *(v9 + 8 * v17);
              ++v18;
              if (v12)
              {
                v49 = isUniquelyReferenced_nonNull_native;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
            goto LABEL_38;
          }

          v49 = isUniquelyReferenced_nonNull_native;
          v17 = v14;
LABEL_24:
          v19 = __clz(__rbit64(v12)) | (v17 << 6);
          v20 = *(v8 + 56);
          v21 = (*(v8 + 48) + 16 * v19);
          v23 = *v21;
          v22 = v21[1];
          v24 = *(v20 + 8 * v19);

          isUniquelyReferenced_nonNull_native = v24;
          v26 = sub_10023A350(v23, v22);
          v27 = v4[2];
          v28 = (v25 & 1) == 0;
          v29 = v27 + v28;
          if (__OFADD__(v27, v28))
          {
            goto LABEL_36;
          }

          v30 = v25;
          if (v4[3] >= v29)
          {
            if ((v49 & 1) == 0)
            {
              sub_100231F20();
            }
          }

          else
          {
            sub_100230E98(v29, v49 & 1);
            v31 = sub_10023A350(v23, v22);
            if ((v30 & 1) != (v32 & 1))
            {
              result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              return result;
            }

            v26 = v31;
          }

          v12 &= v12 - 1;
          v4 = v50;
          if (v30)
          {

            v15 = v50[7];
            v16 = *(v15 + 8 * v26);
            *(v15 + 8 * v26) = isUniquelyReferenced_nonNull_native;
          }

          else
          {
            v50[(v26 >> 6) + 8] |= 1 << v26;
            v33 = (v50[6] + 16 * v26);
            *v33 = v23;
            v33[1] = v22;
            *(v50[7] + 8 * v26) = isUniquelyReferenced_nonNull_native;
            v34 = v50[2];
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_37;
            }

            v50[2] = v36;
          }

          isUniquelyReferenced_nonNull_native = 1;
          v14 = v17;
        }
      }

      __break(1u);
      goto LABEL_46;
    }
  }

  if (qword_100371BD8 != -1)
  {
LABEL_46:
    swift_once();
  }

  v38 = type metadata accessor for Logger();
  sub_1001AD2E4(v38, qword_100377698);
  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&_mh_execute_header, v39, v40, "No accounts found in local store", v41, 2u);
  }

  return sub_10023A8A0(_swiftEmptyArrayStorage);
}

uint64_t sub_100206110(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

BOOL sub_10020615C(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  if (v6)
  {
    goto LABEL_10;
  }

  while (1)
  {
LABEL_6:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v8;
    if (v6)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = *(*(a1 + 56) + ((v9 << 9) | (8 * v10)));
        v12 = [v11 localizedAppName];
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v1 = v14;

        v15 = HIBYTE(v1) & 0xF;
        if ((v1 & 0x2000000000000000) == 0)
        {
          v15 = v13 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v16 = _swiftEmptyArrayStorage[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          v8 = v9;
          if (!v6)
          {
            goto LABEL_6;
          }
        }

        else
        {

          v8 = v9;
          if (!v6)
          {
            goto LABEL_6;
          }
        }

LABEL_10:
        v9 = v8;
      }
    }
  }

  v1 = *(a1 + 16);
  if ((_swiftEmptyArrayStorage & 0x8000000000000000) == 0 && (_swiftEmptyArrayStorage & 0x4000000000000000) == 0)
  {
    v17 = _swiftEmptyArrayStorage[2];
    goto LABEL_19;
  }

LABEL_27:
  v17 = _CocoaArrayWrapper.endIndex.getter();
LABEL_19:

  if (v1 != v17)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1001AD2E4(v18, qword_100377698);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Some accounts are missing metadata. Requires app metadata fetch from server", v21, 2u);
    }
  }

  return v1 != v17;
}

void *sub_1002063C8(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10020640C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_100206454()
{
  result = qword_100373648;
  if (!qword_100373648)
  {
    sub_1001C5270(&qword_100373640, &qword_10029E4D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373648);
  }

  return result;
}

uint64_t sub_1002064B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_10020653C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1001DEB84(v3, a2);
  sub_1001AD2E4(v3, a2);

  return Logger.init(subsystem:category:)();
}

id sub_100206670()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100206718(void *a1, uint64_t a2)
{
  v4 = sub_1001AD17C(&qword_100372298, &qword_10029CF30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v29 - v6;
  result = [objc_opt_self() sharedBag];
  if (result)
  {
    v9 = result;
    v10 = [result unenrollPasskeyURL];

    if (v10)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(v7, 0, 1, v11);
      sub_1001F2EFC(v7);
      v12 = [objc_allocWithZone(AKAppleIDAuthenticationContext) init];
      v13 = [a1 altDSID];
      if (!v13)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v13 = String._bridgeToObjectiveC()();
      }

      [v12 setAltDSID:v13];

      v14 = String._bridgeToObjectiveC()();

      [v12 setAppProvidedContext:v14];

      v15 = [objc_allocWithZone(type metadata accessor for AppleIDPasskeyRequestProvider()) initWithContext:v12 urlBagKey:AKURLBagKeyUnenrollPasskey];
      [v15 setAuthenticatedRequest:1];
      [v15 setClient:a2];
      v16 = [objc_allocWithZone(AKServiceControllerImpl) initWithRequestProvider:v15];
      v17 = [objc_opt_self() sharedInstance];
      v18 = type metadata accessor for AppleIDPasskeyUnenrollProvider();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_serviceController] = v16;
      *&v19[OBJC_IVAR___AKAppleIDPasskeyUnenrollProvider_accountManager] = v17;
      v30.receiver = v19;
      v30.super_class = v18;
      v20 = v16;
      v21 = v17;
      v22 = objc_msgSendSuper2(&v30, "init");
    }

    else
    {
      v23 = type metadata accessor for URL();
      (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      sub_1001F2EFC(v7);
      if (qword_100371BE0 != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      sub_1001AD2E4(v24, qword_1003776B0);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&_mh_execute_header, v25, v26, "Missing passkey unenroll url.", v27, 2u);
      }

      type metadata accessor for AppleIDPasskeyError(0);
      v22 = v28;
      v31 = -120013;
      sub_1001E4150(&_swiftEmptyArrayStorage);
      sub_1001B1020();
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
    }

    return v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100206B80(char a1)
{
  *(v2 + 208) = v1;
  *(v2 + 249) = a1;
  return _swift_task_switch(sub_100206BA4, 0, 0);
}

uint64_t sub_100206BA4()
{
  v1 = *(*(v0 + 208) + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_passkeyValidator);
  v2 = *(v0 + 249);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 248;
  *(v0 + 24) = sub_100206CE0;
  v3 = swift_continuation_init();
  v4 = sub_1001AD17C(&qword_100372280, &qword_10029CEF0);
  *(v0 + 216) = v4;
  *(v0 + 200) = v4;
  *(v0 + 144) = _NSConcreteStackBlock;
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1001B8454;
  *(v0 + 168) = &unk_100328398;
  *(v0 + 176) = v3;
  [v1 canUnenrollPasskeyWithForced:v2 completionHandler:v0 + 144];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100206CE0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  if (v2)
  {
    v3 = sub_100207200;
  }

  else
  {
    v3 = sub_100206DF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100206DF0()
{
  if (*(v0 + 248) == 1)
  {
    if (qword_100371BE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    *(v0 + 232) = sub_1001AD2E4(v1, qword_1003776B0);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Passkey unenroll checks passed. Starting unenroll request with server...", v4, 2u);
    }

    v6 = *(v0 + 208);
    v5 = *(v0 + 216);

    v7 = *(v6 + OBJC_IVAR___AKAppleIDPasskeyUnenrollController_unenrollProvider);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 248;
    *(v0 + 88) = sub_100207008;
    v8 = swift_continuation_init();
    *(v0 + 200) = v5;
    *(v0 + 144) = _NSConcreteStackBlock;
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1001B8454;
    *(v0 + 168) = &unk_1003283C0;
    *(v0 + 176) = v8;
    [v7 performUnenrollRequestWithCompletionHandler:v0 + 144];

    return _swift_continuation_await(v0 + 80);
  }

  else
  {
    v9 = *(v0 + 8);

    return v9(0);
  }
}

uint64_t sub_100207008()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_100207270;
  }

  else
  {
    v3 = sub_100207118;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100207118()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "Passkey unenroll request completed with result - %{BOOL}d.", v5, 8u);
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_100207200()
{
  v1 = *(v0 + 224);
  swift_willThrow();
  v2 = *(v0 + 224);
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_100207270()
{
  v1 = *(v0 + 240);
  swift_willThrow();
  v2 = *(v0 + 240);
  v3 = *(v0 + 8);

  return v3(0);
}

uint64_t sub_100207318(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v5 = 0x4449746E65696C63;
    v6 = 0x614E746E65696C63;
    v7 = 0x444972657375;
    if (a1 != 3)
    {
      v7 = 0x6B6F546572616873;
    }

    if (a1 != 2)
    {
      v6 = v7;
    }

    if (a1)
    {
      v5 = 0x44496D616574;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4565746176697270;
    v2 = 0x65706F6C65766564;
    if (a1 != 9)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x444970756F7267;
    if (a1 != 5)
    {
      v3 = 0x7069636974726170;
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

Swift::Int sub_1002074B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100207528()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100207574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100208BF4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002075B4(uint64_t a1)
{
  v2 = sub_100208298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002075F0(uint64_t a1)
{
  v2 = sub_100208298();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_10020762C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SignInWithAppleSharedCredential();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100207788(void *a1)
{
  v3 = v1;
  v5 = sub_1001AD17C(&qword_100373738, &qword_10029E5D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v32[-v8];
  v10 = a1[4];
  sub_1001BB81C(a1, a1[3]);
  sub_100208298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID);
  v12 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID + 8);
  LOBYTE(v33) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID);
    v14 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID + 8);
    LOBYTE(v33) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName);
    v16 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName + 8);
    LOBYTE(v33) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_userID);
    v18 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_userID + 8);
    LOBYTE(v33) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken);
    v20 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken + 8);
    LOBYTE(v33) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID);
    v22 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID + 8);
    LOBYTE(v33) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID);
    v24 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID + 8);
    LOBYTE(v33) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName);
    v26 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName + 8);
    LOBYTE(v33) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail);
    v28 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail + 8);
    LOBYTE(v33) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v29 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName);
    v30 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName + 8);
    LOBYTE(v33) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v3 + OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs);
    v32[7] = 10;
    sub_1001AD17C(&qword_1003729C8, &unk_10029D620);
    sub_10020891C(&qword_1003729F8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_100207B00(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1001AD17C(&qword_100373728, &unk_10029E5C0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v45 - v8;
  v45 = OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs;
  *&v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = &_swiftEmptySetSingleton;
  v10 = a1[4];
  sub_1001BB81C(a1, a1[3]);
  sub_100208298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1001BB7D0(a1);
    v12 = *&v1[v45];

    type metadata accessor for SignInWithAppleSharedCredential();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v48) = 0;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
    *v14 = v11;
    v14[1] = v15;
    LOBYTE(v48) = 1;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
    *v17 = v16;
    v17[1] = v18;
    LOBYTE(v48) = 2;
    v19 = KeyedDecodingContainer.decode(_:forKey:)();
    v20 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
    *v20 = v19;
    v20[1] = v21;
    LOBYTE(v48) = 3;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
    *v23 = v22;
    v23[1] = v24;
    LOBYTE(v48) = 4;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
    *v26 = v25;
    v26[1] = v27;
    LOBYTE(v48) = 5;
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v29 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v48) = 6;
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
    *v32 = v31;
    v32[1] = v33;
    LOBYTE(v48) = 7;
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v48) = 8;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v48) = 9;
    v40 = KeyedDecodingContainer.decode(_:forKey:)();
    v41 = &v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
    *v41 = v40;
    v41[1] = v42;
    sub_1001AD17C(&qword_1003729C8, &unk_10029D620);
    v47 = 10;
    sub_10020891C(&qword_1003729C0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = *&v1[v45];
    *&v1[v45] = v48;

    v44 = type metadata accessor for SignInWithAppleSharedCredential();
    v46.receiver = v1;
    v46.super_class = v44;
    v3 = objc_msgSendSuper2(&v46, "init");
    (*(v6 + 8))(v9, v5);
    sub_1001BB7D0(a1);
  }

  return v3;
}

id sub_100208220@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for SignInWithAppleSharedCredential());
  result = sub_100207B00(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100208298()
{
  result = qword_100373730;
  if (!qword_100373730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373730);
  }

  return result;
}

id sub_1002082EC(void *a1)
{
  v3 = [a1 shareInfo];
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [v3 shareToken];
  if (!v5)
  {

LABEL_6:
    type metadata accessor for SignInWithAppleError(0);
    v68 = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v1;
  }

  v6 = v5;
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v8;
  v66 = v7;

  v9 = [a1 clientID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v63 = v11;
  v64 = v10;

  v12 = [a1 teamID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v14;
  v62 = v13;

  v15 = [a1 localizedAppName];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v17;
  v60 = v16;

  v18 = [a1 userID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v20;
  v58 = v19;

  v21 = [v4 groupID];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v23;
  v56 = v22;

  v24 = [v4 participantID];
  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v53 = v26;
  v54 = v25;

  v27 = [v4 participantName];
  v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v30 = v29;

  v31 = [a1 privateEmail];
  if (v31)
  {
    v32 = v31;
    v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = [a1 localizedAppDeveloperName];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v39 = v38;

  v40 = type metadata accessor for SignInWithAppleSharedCredential();
  v41 = objc_allocWithZone(v40);
  *&v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = &_swiftEmptySetSingleton;
  v42 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
  *v42 = v64;
  *(v42 + 1) = v63;
  v43 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
  *v43 = v62;
  *(v43 + 1) = v61;
  v44 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
  *v44 = v60;
  *(v44 + 1) = v59;
  v45 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
  *v45 = v58;
  *(v45 + 1) = v57;
  v46 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
  *v46 = v66;
  *(v46 + 1) = v65;
  v47 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
  *v47 = v56;
  *(v47 + 1) = v55;
  v48 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
  *v48 = v54;
  *(v48 + 1) = v53;
  v49 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
  *v49 = v28;
  v49[1] = v30;
  v50 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
  *v50 = v33;
  v50[1] = v35;
  v51 = &v41[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
  *v51 = v37;
  v51[1] = v39;
  v67.receiver = v41;
  v67.super_class = v40;
  v1 = objc_msgSendSuper2(&v67, "init");

  return v1;
}

id sub_100208654(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a1 clientID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v8;
  v62 = v7;

  v9 = [a1 teamID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v11;
  v60 = v10;

  v12 = [a1 localizedAppName];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v57 = v14;
  v58 = v13;

  v15 = [a1 userID];
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v17;
  v56 = v16;

  v18 = [a2 groupID];
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v51 = v20;
  v53 = v19;

  v21 = [a2 participantID];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  v25 = [a2 participantName];
  v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v28 = v27;

  v29 = [a1 privateEmail];
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0;
  }

  v34 = [a1 localizedAppDeveloperName];
  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = type metadata accessor for SignInWithAppleSharedCredential();
  v39 = objc_allocWithZone(v38);
  *&v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = &_swiftEmptySetSingleton;
  v40 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientID];
  *v40 = v62;
  *(v40 + 1) = v61;
  v41 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_teamID];
  *v41 = v60;
  *(v41 + 1) = v59;
  v42 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_clientName];
  *v42 = v58;
  *(v42 + 1) = v57;
  v43 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_userID];
  *v43 = v56;
  *(v43 + 1) = v55;
  v44 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_shareToken];
  *v44 = a3;
  *(v44 + 1) = a4;
  v45 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupID];
  *v45 = v54;
  *(v45 + 1) = v52;
  v46 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantID];
  *v46 = v22;
  v46[1] = v24;
  v47 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_participantName];
  *v47 = v26;
  v47[1] = v28;
  v48 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_privateEmail];
  *v48 = v31;
  v48[1] = v33;
  v49 = &v39[OBJC_IVAR___AKSignInWithAppleSharedCredential_developerName];
  *v49 = v35;
  v49[1] = v37;
  v65.receiver = v39;
  v65.super_class = v38;
  return objc_msgSendSuper2(&v65, "init");
}

uint64_t sub_10020891C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001C5270(&qword_1003729C8, &unk_10029D620);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignInWithAppleSharedCredential.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignInWithAppleSharedCredential.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100208AF0()
{
  result = qword_100373740;
  if (!qword_100373740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373740);
  }

  return result;
}

unint64_t sub_100208B48()
{
  result = qword_100373748;
  if (!qword_100373748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373748);
  }

  return result;
}

unint64_t sub_100208BA0()
{
  result = qword_100373750;
  if (!qword_100373750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100373750);
  }

  return result;
}

uint64_t sub_100208BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E746E65696C63 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6B6F546572616873 && a2 == 0xEA00000000006E65 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444970756F7267 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xED00004449746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7069636974726170 && a2 == 0xEF656D614E746E61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x4565746176697270 && a2 == 0xEC0000006C69616DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65706F6C65766564 && a2 == 0xED0000656D614E72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001002AC070 == a2)
  {

    return 10;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_100208FA4(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10020C518((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_10020907C(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  return _swift_task_switch(sub_1002090A0, 0, 0);
}

uint64_t sub_1002090A0()
{
  if ([*(*(v0 + 80) + 24) isSiwaCredentialSharingEnabled])
  {
    v1 = *(v0 + 80);
    sub_100209C1C();
    v2 = [*(v0 + 64) signInWithAppleAccount];
    *(v0 + 88) = v2;
    if (v2)
    {
      v3 = v2;
      v4 = *(v0 + 64);
      v5 = sub_10020C518((*(v0 + 80) + 32), *(*(v0 + 80) + 56));
      v6 = [v4 altDSID];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v7 = *v5;
      sub_10020EE0C();
      v20 = *(v0 + 64);

      v21 = [v20 altDSID];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      *(v0 + 96) = v24;
      v25 = swift_task_alloc();
      *(v0 + 104) = v25;
      *v25 = v0;
      v25[1] = sub_100209488;
      v26 = *(v0 + 80);

      return sub_100209E68(v3, v22, v24);
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1001AD2E4(v15, qword_100377698);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "No SIWA account set in context.", v18, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 40) = -16007;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v19 = *(v0 + 32);
  }

  else
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1001AD2E4(v8, qword_100377698);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Feature flag SiwaCredentialSharingEnabled is not enabled", v11, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    *(v0 + 24) = -16001;
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v12 = *(v0 + 16);
  }

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_100209488()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v7 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_100209AEC;
  }

  else
  {
    v5 = *(v2 + 96);

    v4 = sub_1002095A4;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1002095A4()
{
  if ([*(v0 + 64) _isMoveAccountRequest])
  {
    v1 = [*(v0 + 64) currentGroupID];
    if (!v1)
    {
LABEL_14:
      v19 = *(v0 + 88);
      type metadata accessor for SignInWithAppleError(0);
      *(v0 + 56) = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      v20 = *(v0 + 48);
      swift_willThrow();

      v21 = *(v0 + 8);

      return v21();
    }

    v2 = *(v0 + 72);
    v3 = v1;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    *(v0 + 120) = v6;
    v7 = [v2 groupID];
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;

    if (v4 == v8 && v6 == v10)
    {

LABEL_13:

      goto LABEL_14;
    }

    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v12)
    {
      goto LABEL_13;
    }

    v22 = swift_task_alloc();
    *(v0 + 128) = v22;
    *v22 = v0;
    v22[1] = sub_100209830;
    v24 = *(v0 + 80);
    v23 = *(v0 + 88);
    v26 = *(v0 + 64);
    v25 = *(v0 + 72);

    return sub_10020B720(v26, v23, v4, v6, v25);
  }

  else
  {
    v13 = swift_task_alloc();
    *(v0 + 144) = v13;
    *v13 = v0;
    v13[1] = sub_1002099D8;
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v17 = *(v0 + 64);
    v16 = *(v0 + 72);

    return sub_10020A650(v17, v14, v16);
  }
}

uint64_t sub_100209830()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 120);

  if (v0)
  {
    v6 = sub_100209B54;
  }

  else
  {
    v6 = sub_100209964;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_100209964()
{
  [*(v0 + 88) setShareInfo:*(v0 + 72)];
  v1 = *(v0 + 8);
  v2 = *(v0 + 88);

  return v1(v2);
}

uint64_t sub_1002099D8()
{
  v2 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_100209BB8;
  }

  else
  {
    v3 = sub_10020C5A8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100209AEC()
{
  v2 = v0[11];
  v1 = v0[12];

  v3 = v0[14];
  v4 = v0[1];

  return v4();
}

uint64_t sub_100209B54()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100209BB8()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100209C1C()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Performing Entitlement Check", v4, 2u);
  }

  v5 = *(v0 + 16);
  if (([v5 hasInternalAccess] & 1) != 0 || objc_msgSend(v5, "hasPrivateAccess"))
  {
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Client has necessary permission for accounts sharing", v8, 2u);
    }
  }

  else
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Client doesn't have access to perform account sharing", v11, 2u);
    }

    type metadata accessor for SignInWithAppleError(0);
    sub_1001E4150(_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return 1;
}

uint64_t sub_100209E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return _swift_task_switch(sub_100209E8C, 0, 0);
}

uint64_t sub_100209E8C()
{
  v1 = *(*(v0 + 176) + 72);
  v2 = [*(v0 + 152) clientID];
  if (!v2)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = String._bridgeToObjectiveC()();
  }

  *(v0 + 184) = v2;
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = String._bridgeToObjectiveC()();
  *(v0 + 192) = v5;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_10020A004;
  v6 = swift_continuation_init();
  *(v0 + 136) = sub_1001AD17C(&unk_100372AE0, qword_10029D7E8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100208FA4;
  *(v0 + 104) = &unk_1003284A0;
  *(v0 + 112) = v6;
  [v1 fetchDeveloperTeamWithClientID:v2 withAltDSID:v5 completion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10020A004()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_10020A5D4;
  }

  else
  {
    v3 = sub_10020A114;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020A114()
{
  v49 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 184);
  v3 = *(v0 + 152);

  v4 = [v1 apps];
  sub_1001C9300();
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v3 clientID];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  if (!*(v5 + 16))
  {

    goto LABEL_7;
  }

  sub_10023A350(v7, v9);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_7:
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v20 = *(v0 + 152);
    v21 = type metadata accessor for Logger();
    sub_1001AD2E4(v21, qword_100377698);
    v22 = v1;
    v23 = v20;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v24, v25))
    {
      goto LABEL_12;
    }

    v47 = *(v0 + 152);
    v26 = swift_slowAlloc();
    v48[0] = swift_slowAlloc();
    *v26 = 136315394;
    v27 = [v22 teamID];
    v28 = v1;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v32 = v29;
    v1 = v28;
    v33 = sub_10024B050(v32, v31, v48);

    *(v26 + 4) = v33;
    *(v26 + 12) = 2080;
    v34 = [v47 clientID];
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v37 = v36;

    v38 = sub_10024B050(v35, v37, v48);

    *(v26 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v24, v25, "Developer team %s doesn't have the app with client id %s", v26, 0x16u);
    swift_arrayDestroy();

    goto LABEL_11;
  }

  v12 = [*(v0 + 152) userID];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = [v1 userIdentifier];
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  if (v13 != v17 || v15 != v19)
  {
    v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v42)
    {
      goto LABEL_14;
    }

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_1001AD2E4(v44, qword_100377698);
    v24 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v24, v45))
    {
LABEL_12:

      type metadata accessor for SignInWithAppleError(0);
      *(v0 + 144) = -16007;
      sub_1001E4150(_swiftEmptyArrayStorage);
      sub_1001B754C();
      _BridgedStoredNSError.init(_:userInfo:)();
      v39 = *(v0 + 80);
      swift_willThrow();

      v40 = *(v0 + 8);
      v41 = 0;
      goto LABEL_15;
    }

    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&_mh_execute_header, v24, v45, "User identfier doesn't match", v46, 2u);
LABEL_11:

    goto LABEL_12;
  }

LABEL_14:

  v40 = *(v0 + 8);
  v41 = 1;
LABEL_15:

  return v40(v41);
}

uint64_t sub_10020A5D4()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  swift_willThrow();

  v4 = v0[25];
  v5 = v0[1];

  return v5(0);
}

uint64_t sub_10020A650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;

  return _swift_task_switch(sub_10020A6E4, 0, 0);
}

uint64_t sub_10020A6E4()
{
  if ([*(v0 + 24) _simulateAccountSharingResponse])
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 32);
    v3 = v1;
    v4 = sub_10020C40C();
    v6 = sub_100208654(v2, v3, v4, v5);
    v7 = *(v0 + 32);

    v13 = qword_100371BD8;
    v14 = v6;
    v15 = v14;
    if (v13 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1001AD2E4(v16, qword_100377698);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, v18, "Simulated share token", v19, 2u);
    }

    *(v0 + 72) = v15;
    v20 = *(v0 + 24);
    v21 = [*(v0 + 32) clientID];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    *(v0 + 80) = v24;
    v25 = [v20 altDSID];
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    *(v0 + 88) = v28;
    v29 = swift_task_alloc();
    *(v0 + 96) = v29;
    *v29 = v0;
    v29[1] = sub_10020AD04;
    v30 = *(v0 + 48);

    return sub_10020AFB4(v22, v24, v26, v28);
  }

  else
  {
    v8 = *sub_10020C518((*(v0 + 48) + 88), *(*(v0 + 48) + 112));
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_10020AA2C;
    v11 = *(v0 + 32);
    v10 = *(v0 + 40);

    return sub_1001CD7F0(v11, v10);
  }
}

uint64_t sub_10020AA2C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 64) = a1;

    return _swift_task_switch(sub_10020ABB4, 0, 0);
  }
}

uint64_t sub_10020ABB4()
{
  v1 = v0[8];
  v0[9] = v1;
  v3 = v0[3];
  v2 = v0[4];
  v4 = v1;
  v5 = [v2 clientID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[10] = v8;
  v9 = [v3 altDSID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[11] = v12;
  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_10020AD04;
  v14 = v0[6];

  return sub_10020AFB4(v6, v8, v10, v12);
}

uint64_t sub_10020AD04(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 104) = a1;

  return _swift_task_switch(sub_10020AE74, 0, 0);
}

uint64_t sub_10020AE74()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *&v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
  *&v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = v0[13];

  v4 = *(v2 + 80);
  v0[2] = 0;
  v5 = [v4 addSharedAccountWithCredential:v1 error:v0 + 2];

  v6 = v0[2];
  v7 = v0[9];
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v10 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020AFB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[22] = a4;
  v5[23] = v4;
  v5[20] = a2;
  v5[21] = a3;
  v5[19] = a1;
  return _swift_task_switch(sub_10020AFDC, 0, 0);
}

uint64_t sub_10020AFDC()
{
  v19 = v0;
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = type metadata accessor for Logger();
  v0[24] = sub_1001AD2E4(v2, qword_100377698);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[19];
    v5 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10024B050(v6, v5, &v18);
    _os_log_impl(&_mh_execute_header, v3, v4, "Fetcing all grouped apps for %s", v7, 0xCu);
    sub_10020C55C(v8);
  }

  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[19];
  v13 = *(v0[23] + 72);
  v14 = String._bridgeToObjectiveC()();
  v0[25] = v14;
  v15 = String._bridgeToObjectiveC()();
  v0[26] = v15;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10020B250;
  v16 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&unk_100372AE0, qword_10029D7E8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100208FA4;
  v0[13] = &unk_100328478;
  v0[14] = v16;
  [v13 fetchDeveloperTeamWithClientID:v14 withAltDSID:v15 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10020B250()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_10020B5BC;
  }

  else
  {
    v3 = sub_10020B360;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_10020B360()
{
  v35 = v0;
  v1 = *(v0 + 200);
  v2 = *(v0 + 144);

  v31 = v2;
  v3 = [v2 apps];
  sub_1001C9300();
  v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v5 = 0;
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v32 = v4;
  while (v9)
  {
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(v4 + 56) + ((v5 << 9) | (8 * v12)));
    v14 = [v13 primaryClientID];
    if (v14)
    {
      v33 = v13;
      v16 = *(v0 + 152);
      v15 = *(v0 + 160);
      v17 = v14;
      v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v20 = v19;

      if (v18 == v16 && v20 == v15)
      {

        v25 = v33;
LABEL_18:
        v26 = [v25 clientID];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        sub_100232370(&v34, v27, v29);

        v4 = v32;
      }

      else
      {
        v22 = *(v0 + 152);
        v23 = *(v0 + 160);
        v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v25 = v33;
        if (v24)
        {
          goto LABEL_18;
        }

        v4 = v32;
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  v30 = *(v0 + 8);

  v30(&_swiftEmptySetSingleton);
}

uint64_t sub_10020B5BC()
{
  v15 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  v5 = v0[20];
  swift_willThrow();

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[19];
    v8 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_10024B050(v9, v8, &v14);
    _os_log_impl(&_mh_execute_header, v6, v7, "No matching team found for %s. Continuing...", v10, 0xCu);
    sub_10020C55C(v11);
  }

  v12 = v0[1];

  return v12(&_swiftEmptySetSingleton);
}

uint64_t sub_10020B720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[9] = a5;
  v6[10] = v5;
  v6[7] = a3;
  v6[8] = a4;
  v6[5] = a1;
  v6[6] = a2;

  return _swift_task_switch(sub_10020B7B8, 0, 0);
}

uint64_t sub_10020B7B8()
{
  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 88) = sub_1001AD2E4(v1, qword_100377698);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Fetching old keychain item..", v4, 2u);
  }

  v5 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v8 = *(v0 + 48);

  v9 = *(v5 + 80);
  *(v0 + 96) = v9;
  v10 = String._bridgeToObjectiveC()();
  *(v0 + 16) = 0;
  v11 = [v9 shareTokenForAccount:v8 inGroup:v10 error:v0 + 16];

  v12 = *(v0 + 16);
  if (v11)
  {
    v13 = *(v0 + 40);
    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v16 = v15;
    *(v0 + 104) = v15;
    v17 = v12;

    if ([v13 _simulateAccountSharingResponse])
    {
      v18 = *(v0 + 72);
      v19 = *(v0 + 48);

      v20 = v19;
      v21 = v18;
      v22 = sub_10020C40C();
      v24 = sub_100208654(v20, v21, v22, v23);
      v25 = *(v0 + 48);

      v26 = v24;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v27, v28, "Simulated share token", v29, 2u);
      }

      *(v0 + 128) = v26;
      v30 = *(v0 + 40);
      v31 = [*(v0 + 48) clientID];
      v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v33;

      *(v0 + 136) = v34;
      v35 = [v30 altDSID];
      v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v38 = v37;

      *(v0 + 144) = v38;
      v39 = swift_task_alloc();
      *(v0 + 152) = v39;
      *v39 = v0;
      v39[1] = sub_10020BF3C;
      v40 = *(v0 + 80);

      return sub_10020AFB4(v32, v34, v36, v38);
    }

    else
    {
      v44 = *sub_10020C518((*(v0 + 80) + 88), *(*(v0 + 80) + 112));
      v45 = swift_task_alloc();
      *(v0 + 112) = v45;
      *v45 = v0;
      v45[1] = sub_10020BC3C;
      v47 = *(v0 + 64);
      v46 = *(v0 + 72);
      v49 = *(v0 + 48);
      v48 = *(v0 + 56);

      return sub_1001CE5F4(v49, v46, v48, v47, v14, v16);
    }
  }

  else
  {
    v42 = v12;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v43 = *(v0 + 8);

    return v43();
  }
}

uint64_t sub_10020BC3C(uint64_t a1)
{
  v5 = *v2;
  v4 = *v2;
  v6 = *(*v2 + 112);
  v7 = *v2;

  v8 = *(v4 + 104);

  if (v1)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 120) = a1;

    return _swift_task_switch(sub_10020BDEC, 0, 0);
  }
}

uint64_t sub_10020BDEC()
{
  v1 = v0[15];
  v0[16] = v1;
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1;
  v5 = [v2 clientID];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v0[17] = v8;
  v9 = [v3 altDSID];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  v0[18] = v12;
  v13 = swift_task_alloc();
  v0[19] = v13;
  *v13 = v0;
  v13[1] = sub_10020BF3C;
  v14 = v0[10];

  return sub_10020AFB4(v6, v8, v10, v12);
}

uint64_t sub_10020BF3C(uint64_t a1)
{
  v2 = *(*v1 + 152);
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 136);
  v6 = *v1;
  *(*v1 + 160) = a1;

  return _swift_task_switch(sub_10020C0AC, 0, 0);
}

uint64_t sub_10020C0AC()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = *&v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs];
  *&v1[OBJC_IVAR___AKSignInWithAppleSharedCredential_groupedAppsBundleIDs] = v0[20];

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Removing old keychain item", v6, 2u);
  }

  v7 = v0[12];
  v8 = v0[6];

  v0[3] = 0;
  v9 = [v7 removeSharedAccount:v8 error:v0 + 3];
  v10 = v0[3];
  if (v9)
  {
    v11 = v0[11];
    v12 = v10;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Removed old keychain item. Adding new keychain item with updated group.", v15, 2u);
    }

    v16 = v0[16];
    v17 = v0[12];

    v0[4] = 0;
    v18 = [v17 addSharedAccountWithCredential:v16 error:v0 + 4];
    v10 = v0[4];
    v19 = v0[16];
    if (v18)
    {
      v20 = v10;

      v21 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = v0[16];
  }

  v22 = v10;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v21 = v0[1];
LABEL_10:

  return v21();
}

uint64_t sub_10020C2FC()
{
  sub_10020C55C((v0 + 32));
  v1 = *(v0 + 72);
  swift_unknownObjectRelease();
  v2 = *(v0 + 80);
  swift_unknownObjectRelease();
  sub_10020C55C((v0 + 88));

  return swift_deallocClassInstance();
}

unint64_t sub_10020C380(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10020C40C()
{
  v0 = sub_10020C380(0xFFFFuLL);
  v1 = sub_10020C380(0xFFFFuLL);
  sub_1001AD17C(&qword_100373840, &qword_10029E780);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10029E6F0;
  *(v2 + 56) = &type metadata for Int;
  *(v2 + 64) = &protocol witness table for Int;
  *(v2 + 32) = v0;
  *(v2 + 96) = &type metadata for Int;
  *(v2 + 104) = &protocol witness table for Int;
  *(v2 + 72) = v1;
  v3 = String.init(format:_:)();
  v5 = v4;
  _StringGuts.grow(_:)(17);

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  return 0x7261685374736554;
}

void *sub_10020C518(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10020C55C(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_10020C5B4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26 = a5;
  v27 = a6;
  v30 = a2;
  v11 = sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v25 - v14;
  v16 = String._bridgeToObjectiveC()();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  (*(v12 + 32))(v19 + v17, v15, v11);
  v20 = (v19 + v18);
  v21 = v27;
  *v20 = v26;
  v20[1] = v21;
  v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
  v23 = v29;
  *v22 = v28;
  v22[1] = v23;
  aBlock[4] = sub_10020ED14;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10020D350;
  aBlock[3] = &unk_100328608;
  v24 = _Block_copy(aBlock);

  [v30 getGroupByGroupID:v16 completion:v24];
  _Block_release(v24);
}

void sub_10020C7E0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a4;
  v10 = a3;
  if (a2)
  {
    v11 = a2;
    swift_errorRetain();
    if (qword_100371BD8 == -1)
    {
LABEL_3:
      v12 = type metadata accessor for Logger();
      sub_1001AD2E4(v12, qword_100377698);

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v70[0] = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_10024B050(v10, v9, v70);
        _os_log_impl(&_mh_execute_header, v13, v14, "Error fetching information for group (%s)", v15, 0xCu);
        sub_1001AD48C(v16);
      }

      v70[0] = v11;
      sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
LABEL_6:
      CheckedContinuation.resume(throwing:)();
      return;
    }

LABEL_56:
    swift_once();
    goto LABEL_3;
  }

  if (!a1)
  {
    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    sub_1001AD2E4(v30, qword_100377698);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_10024B050(v10, v9, v70);
      _os_log_impl(&_mh_execute_header, v31, v32, "Current user is not part of the group (%s)", v33, 0xCu);
      sub_1001AD48C(v34);
    }

    type metadata accessor for SignInWithAppleError(0);
    v71 = -16010;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v71 = v70[0];
    sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
    goto LABEL_6;
  }

  v66 = a1;
  if (a6 == a8 && a7 == a9 || (v17 = _stringCompareWithSmolCheck(_:_:expecting:)(), a1 = v66, (v17 & 1) != 0))
  {
    v63 = a1;
    v18 = [v63 participants];
    sub_10020E930(0, &qword_100373850, KCSharingParticipant_ptr);
    v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v19 >> 62)
    {
LABEL_59:
      v20 = _CocoaArrayWrapper.endIndex.getter();
      if (v20)
      {
LABEL_13:
        v21 = 0;
        v11 = 0x80000001002AC180;
        while (1)
        {
          if ((v19 & 0xC000000000000001) != 0)
          {
            v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_55;
            }

            v22 = *(v19 + 8 * v21 + 32);
          }

          v10 = v22;
          v23 = v21 + 1;
          if (__OFADD__(v21, 1))
          {
            break;
          }

          v24 = [v22 participantID];
          if (v24)
          {
            v9 = v24;
            v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v27 = v26;

            if (v25 == 0xD000000000000010 && 0x80000001002AC180 == v27)
            {
              goto LABEL_48;
            }

            v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v29)
            {
              goto LABEL_49;
            }
          }

          ++v21;
          if (v23 == v20)
          {
            goto LABEL_60;
          }
        }

        __break(1u);
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v20)
      {
        goto LABEL_13;
      }
    }

LABEL_60:

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_1001AD2E4(v55, qword_100377698);

    v56 = Logger.logObject.getter();
    v57 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v58 = 136315394;
      *(v58 + 4) = sub_10024B050(a6, a7, v70);
      *(v58 + 12) = 2080;
      *(v58 + 14) = sub_10024B050(a3, a4, v70);
      _os_log_impl(&_mh_execute_header, v56, v57, "No such participant (%s) in the group (%s)", v58, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SignInWithAppleError(0);
    v71 = -16011;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v71 = v70[0];
    sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
    CheckedContinuation.resume(throwing:)();

    return;
  }

  v69 = v66;
  v35 = [v69 participants];
  sub_10020E930(0, &qword_100373850, KCSharingParticipant_ptr);
  v19 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v19 >> 62)
  {
    v36 = _CocoaArrayWrapper.endIndex.getter();
    if (v36)
    {
      goto LABEL_34;
    }

LABEL_66:

    if (qword_100371BD8 != -1)
    {
      swift_once();
    }

    v59 = type metadata accessor for Logger();
    sub_1001AD2E4(v59, qword_100377698);

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v70[0] = swift_slowAlloc();
      *v62 = 136315394;
      *(v62 + 4) = sub_10024B050(a6, a7, v70);
      *(v62 + 12) = 2080;
      *(v62 + 14) = sub_10024B050(a3, a4, v70);
      _os_log_impl(&_mh_execute_header, v60, v61, "No such participant (%s) in the group (%s)", v62, 0x16u);
      swift_arrayDestroy();
    }

    type metadata accessor for SignInWithAppleError(0);
    v71 = -16011;
    sub_1001E4150(&_swiftEmptyArrayStorage);
    sub_1001B754C();
    _BridgedStoredNSError.init(_:userInfo:)();
    v71 = v70[0];
    sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
    CheckedContinuation.resume(throwing:)();

    return;
  }

  v36 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
    goto LABEL_66;
  }

LABEL_34:
  v37 = 0;
  while (1)
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v37 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_58;
      }

      v38 = *(v19 + 8 * v37 + 32);
    }

    v10 = v38;
    v9 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v39 = [v38 participantID];
    if (!v39)
    {
      goto LABEL_35;
    }

    v40 = v39;
    v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = v42;

    if (v41 == a6 && v43 == a7)
    {
      break;
    }

    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v45)
    {
      goto LABEL_49;
    }

LABEL_35:

    ++v37;
    if (v9 == v36)
    {
      goto LABEL_66;
    }
  }

LABEL_48:

LABEL_49:

  v46 = [v10 handle];
  v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v49 = v48;

  if (qword_100371BD8 != -1)
  {
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  sub_1001AD2E4(v50, qword_100377698);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v70[0] = swift_slowAlloc();
    *v53 = 136315394;
    *(v53 + 4) = sub_10024B050(a6, a7, v70);
    *(v53 + 12) = 2080;

    v54 = sub_10024B050(v47, v49, v70);

    *(v53 + 14) = v54;
    _os_log_impl(&_mh_execute_header, v51, v52, "Handle for participant(%s - %s", v53, 0x16u);
    swift_arrayDestroy();
  }

  v70[0] = v47;
  v70[1] = v49;
  sub_1001AD17C(&qword_100373860, &qword_10029E7D0);
  CheckedContinuation.resume(returning:)();
}

void sub_10020D350(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10020D580(int a1, int a2, int a3, void *aBlock, void *a5)
{
  v5[4] = a5;
  v5[5] = _Block_copy(aBlock);
  v5[6] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[7] = v7;
  v5[8] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[9] = v8;
  v5[10] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5[11] = v9;
  v10 = a5;

  return _swift_task_switch(sub_10020D634, 0, 0);
}

uint64_t sub_10020D634()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v10 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = swift_task_alloc();
  *(v0 + 96) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v3;
  *(v6 + 40) = v10;
  *(v6 + 56) = v2;
  *(v6 + 64) = v1;
  v7 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v8 = swift_task_alloc();
  *(v0 + 104) = v8;
  *v8 = v0;
  v8[1] = sub_10020D75C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003DLL, 0x80000001002AC110, sub_10020ED00, v6, &type metadata for String);
}

uint64_t sub_10020D75C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v10 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = sub_10020D940;
  }

  else
  {
    v5 = v2[11];
    v6 = v2[12];
    v7 = v2[9];
    v8 = v2[7];

    v4 = sub_10020D8A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10020D8A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = String._bridgeToObjectiveC()();

  v4 = *(v0 + 40);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_10020D940()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v5 = v0[7];
  v6 = v0[4];

  v7 = _convertErrorToNSError(_:)();

  v8 = v0[5];
  (v8)[2](v8, 0, v7);

  _Block_release(v8);
  v9 = v0[1];

  return v9();
}

uint64_t sub_10020DA18()
{
  v1[21] = v0;
  v2 = type metadata accessor for Date();
  v1[22] = v2;
  v3 = *(v2 - 8);
  v1[23] = v3;
  v4 = *(v3 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_10020DAD8, 0, 0);
}

uint64_t sub_10020DAD8()
{
  v1 = v0[21];
  v2 = [objc_opt_self() all];
  v0[25] = v2;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_10020DC28;
  v3 = swift_continuation_init();
  v0[17] = sub_1001AD17C(&qword_100373848, &qword_10029E7A8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10020E1A4;
  v0[13] = &unk_100328540;
  v0[14] = v3;
  [v1 getGroupsWithRequest:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10020DC28()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_10020E128;
  }

  else
  {
    v3 = sub_10020DD38;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10020DD38()
{
  v46 = v0;
  v1 = *(v0 + 160);

  if (v1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    v41 = v1 & 0xC000000000000001;
    v38 = v1 + 32;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v4 = &_swiftEmptyDictionarySingleton;
    v40 = i;
    while (v41)
    {
      v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v13 = __OFADD__(v3, 1);
      v14 = v3 + 1;
      if (v13)
      {
        goto LABEL_34;
      }

LABEL_12:
      v43 = v12;
      v15 = [v12 participants];
      sub_10020E930(0, &qword_100373850, KCSharingParticipant_ptr);
      v16 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v16 >> 62)
      {
        v17 = _CocoaArrayWrapper.endIndex.getter();
        v44 = v14;
        if (v17)
        {
LABEL_14:
          v18 = 0;
          v1 = v16 & 0xC000000000000001;
          v5 = &_swiftEmptyArrayStorage;
          do
          {
            v19 = v18;
            while (1)
            {
              if (v1)
              {
                v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v19 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_33;
                }

                v20 = *(v16 + 8 * v19 + 32);
              }

              v21 = v20;
              v18 = v19 + 1;
              if (__OFADD__(v19, 1))
              {
                __break(1u);
LABEL_33:
                __break(1u);
                goto LABEL_34;
              }

              v22 = [v20 participantID];
              if (v22)
              {
                break;
              }

              ++v19;
              if (v18 == v17)
              {
                goto LABEL_5;
              }
            }

            v23 = v22;
            v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v42 = v25;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_10020E824(0, *(v5 + 2) + 1, 1, v5);
            }

            v27 = *(v5 + 2);
            v26 = *(v5 + 3);
            if (v27 >= v26 >> 1)
            {
              v5 = sub_10020E824((v26 > 1), v27 + 1, 1, v5);
            }

            *(v5 + 2) = v27 + 1;
            v28 = &v5[16 * v27];
            *(v28 + 4) = v24;
            *(v28 + 5) = v42;
          }

          while (v18 != v17);
          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v44 = v14;
        if (v17)
        {
          goto LABEL_14;
        }
      }

      v5 = &_swiftEmptyArrayStorage;
LABEL_5:

      v6 = [v43 groupID];
      v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      v10 = sub_100233E2C(v5);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v4;
      v1 = &v45;
      sub_1002319E4(v10, v7, v9, isUniquelyReferenced_nonNull_native);

      v3 = v44;
      v4 = v45;
      if (v44 == v40)
      {
        goto LABEL_38;
      }
    }

    if (v3 >= *(v39 + 16))
    {
      goto LABEL_35;
    }

    v12 = *(v38 + 8 * v3);
    v13 = __OFADD__(v3, 1);
    v14 = v3 + 1;
    if (!v13)
    {
      goto LABEL_12;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v4 = &_swiftEmptyDictionarySingleton;
LABEL_38:
  super_class = v37[11].super_class;
  receiver = v37[12].receiver;
  v31 = v37[11].receiver;

  v32 = type metadata accessor for SharedGroupsMembershipInfo();
  v33 = objc_allocWithZone(v32);
  *&v33[OBJC_IVAR___AKSharedGroupsMembershipInfo_groupsAndParticipants] = v4;
  static Date.now.getter();
  (*(super_class + 4))(&v33[OBJC_IVAR___AKSharedGroupsMembershipInfo_savedDate], receiver, v31);
  v37[9].receiver = v33;
  v37[9].super_class = v32;
  v34 = objc_msgSendSuper2(v37 + 9, "init");

  v35 = v37->super_class;

  return v35(v34);
}

uint64_t sub_10020E128()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

uint64_t sub_10020E1A4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_1001B1078((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_1001AD17C(&qword_100373250, qword_10029D0B0);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    sub_10020E930(0, &qword_100373858, KCSharingGroup_ptr);
    **(*(v4 + 64) + 40) = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_10020E408(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  a2;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_10020E4B0;

  return sub_10020DA18();
}

uint64_t sub_10020E4B0(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 24);
  if (v3)
  {
    v10 = _convertErrorToNSError(_:)();

    (v9)[2](v9, 0, v10);

    _Block_release(v9);
  }

  else
  {
    (v9)[2](v9, a1, 0);
    _Block_release(v9);
  }

  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_10020E650()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10020EDFC;

  return sub_10020E408(v2, v3);
}

id *sub_10020E720(id *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1001AD17C(&unk_100373650, qword_10029E4E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = (2 * (v12 >> 4));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = (v10 + 4);
  v14 = (a4 + 32);
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 16) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10020E824(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001AD17C(&qword_1003725B0, &qword_10029D9C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}