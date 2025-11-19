uint64_t sub_1001DADA8(unsigned __int8 a1, char a2)
{
  v2 = 7368801;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7368801;
  switch(v4)
  {
    case 1:
      v3 = 0xE700000000000000;
      v5 = 0x747865746E6F63;
      break;
    case 2:
      v5 = 7761509;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v5 = 0x6449796C696D6166;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE700000000000000;
      v2 = 0x747865746E6F63;
      break;
    case 2:
      v2 = 7761509;
      break;
    case 3:
      v6 = 0xE800000000000000;
      v2 = 0x6449796C696D6166;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DAEEC(unsigned __int8 a1, char a2)
{
  v2 = 1684628080;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1684627824;
    }

    else
    {
      v4 = 7894115;
    }

    if (v3 == 1)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1684628080;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 1684627824;
    }

    else
    {
      v2 = 7894115;
    }

    if (a2 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DAFA8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x746361736E617274;
  }

  else
  {
    v3 = 7761509;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xED000064496E6F69;
  }

  if (a2)
  {
    v5 = 0x746361736E617274;
  }

  else
  {
    v5 = 7761509;
  }

  if (a2)
  {
    v6 = 0xED000064496E6F69;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DB040()
{
  sub_10021A0EC();
  sub_10021AC24();
  sub_10021AC18();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100219A54();
  }

  return v3 & 1;
}

uint64_t sub_1001DB0CC(unsigned __int8 a1, char a2)
{
  v2 = 0xEE006E656B6F5465;
  v3 = 0x7669746341736168;
  v4 = a1;
  v5 = 0x7669746341736168;
  v6 = 0xEE006E656B6F5465;
  switch(v4)
  {
    case 1:
      v5 = 0x6D61466E656B6F74;
      v6 = 0xED00006449796C69;
      break;
    case 2:
      v5 = 0xD000000000000013;
      v6 = 0x8000000100313790;
      break;
    case 3:
      v5 = 0x746E456E656B6F74;
      v6 = 0xEC00000073656972;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6D61466E656B6F74;
      v2 = 0xED00006449796C69;
      break;
    case 2:
      v3 = 0xD000000000000013;
      v2 = 0x8000000100313790;
      break;
    case 3:
      v3 = 0x746E456E656B6F74;
      v2 = 0xEC00000073656972;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1001DB26C()
{
  sub_1000C446C();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0x7079546E656B6F74;
  }

  else
  {
    v4 = 0xD000000000000015;
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xE900000000000065;
  }

  if (v0)
  {
    v6 = 0x7079546E656B6F74;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (v0)
  {
    v7 = 0xE900000000000065;
  }

  else
  {
    v7 = v1;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_100219A54();
  }

  return v9 & 1;
}

uint64_t sub_1001DB304()
{
  sub_10021A0EC();
  sub_10021AC24();
  sub_10021AC18();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100219A54();
  }

  return v3 & 1;
}

uint64_t sub_1001DB38C()
{
  sub_10021A0EC();
  sub_10021AC24();
  sub_10021AC18();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100219A54();
  }

  return v3 & 1;
}

uint64_t sub_1001DB414(unsigned __int8 a1, char a2)
{
  v2 = 0x6E6F697369766572;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = "unfinishedTxnIds";
  v6 = 0x6E6F697369766572;
  v7 = "signedTransactions";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = sub_10021AC00();
      v3 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v6 = 0x65726F4D736168;
      break;
    default:
      v3 = 0x80000001003134F0;
      v6 = 0xD000000000000012;
      break;
  }

  v8 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      break;
    case 2:
      v2 = 0xD000000000000010;
      v8 = (v5 - 32) | 0x8000000000000000;
      break;
    case 3:
      v8 = 0xE700000000000000;
      v2 = 0x65726F4D736168;
      break;
    default:
      v8 = (v7 - 32) | 0x8000000000000000;
      v2 = 0xD000000000000012;
      break;
  }

  if (v6 == v2 && v3 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_100219A54();
  }

  return v10 & 1;
}

uint64_t sub_1001DB578(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000011;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0x737574617473;
    }

    if (v3 == 1)
    {
      v5 = 0x80000001003138D0;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x80000001003138B0;
    v4 = 0xD000000000000011;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0xD000000000000015;
    }

    else
    {
      v2 = 0x737574617473;
    }

    if (a2 == 1)
    {
      v6 = 0x80000001003138D0;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0x80000001003138B0;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DB658(unsigned __int8 a1, char a2)
{
  v2 = 1701998445;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7473696C2D707061;
    }

    else
    {
      v4 = 0x2D74706965636572;
    }

    if (v3 == 1)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xEC00000061746164;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1701998445;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7473696C2D707061;
    }

    else
    {
      v2 = 0x2D74706965636572;
    }

    if (a2 == 1)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xEC00000061746164;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DB754(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x73694C7465737361;
  v4 = a1;
  v5 = 0x73694C7465737361;
  v6 = 0xE900000000000074;
  switch(v4)
  {
    case 1:
      v6 = 0xE700000000000000;
      v5 = 0x64692D6D657469;
      break;
    case 2:
      v5 = 0xD000000000000016;
      v6 = 0x80000001003135D0;
      break;
    case 3:
      v6 = 0x80000001003135F0;
      v5 = 0xD000000000000017;
      break;
    case 4:
      v5 = 0x616E2D726566666FLL;
      v6 = 0xEA0000000000656DLL;
      break;
    case 5:
      v5 = 0x6573616863727570;
      v6 = 0xED0000657461642DLL;
      break;
    case 6:
      v6 = 0xE800000000000000;
      v5 = 0x797469746E617571;
      break;
    case 7:
      v5 = 0x2D74706965636572;
      v6 = 0xEC00000061746164;
      break;
    case 8:
      v5 = 0x4474736575716572;
      v6 = 0xEB00000000617461;
      break;
    case 9:
      v5 = 0x746361736E617274;
      v6 = 0xEE0064692D6E6F69;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE700000000000000;
      v3 = 0x64692D6D657469;
      break;
    case 2:
      v3 = 0xD000000000000016;
      v2 = 0x80000001003135D0;
      break;
    case 3:
      v2 = 0x80000001003135F0;
      sub_100219D58();
      v3 = v7 | 1;
      break;
    case 4:
      v3 = 0x616E2D726566666FLL;
      v2 = 0xEA0000000000656DLL;
      break;
    case 5:
      v3 = 0x6573616863727570;
      v2 = 0xED0000657461642DLL;
      break;
    case 6:
      v2 = 0xE800000000000000;
      v3 = 0x797469746E617571;
      break;
    case 7:
      v3 = 0x2D74706965636572;
      v2 = 0xEC00000061746164;
      break;
    case 8:
      v3 = 0x4474736575716572;
      v2 = 0xEB00000000617461;
      break;
    case 9:
      v3 = 0x746361736E617274;
      v2 = 0xEE0064692D6E6F69;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t sub_1001DBA74(unsigned __int8 a1, char a2)
{
  v2 = 0x79654B676F6CLL;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x79654B676F6CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x49746375646F7270;
      v3 = 0xE900000000000044;
      break;
    case 2:
      v5 = 0x69666F725079656BLL;
      v3 = 0xEA0000000000656CLL;
      break;
    case 3:
      v5 = 0x736D61726170;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x49746375646F7270;
      v6 = 0xE900000000000044;
      break;
    case 2:
      v2 = 0x69666F725079656BLL;
      v6 = 0xEA0000000000656CLL;
      break;
    case 3:
      v2 = 0x736D61726170;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

uint64_t sub_1001DBBD0()
{
  sub_10021A0EC();
  sub_10021AC24();
  sub_10021AC18();
  v2 = v2 && v0 == v1;
  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_100219A54();
  }

  return v3 & 1;
}

uint64_t sub_1001DBC88(unsigned __int8 a1, char a2)
{
  v2 = 0x65646F6378;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x65646F6378;
  switch(v4)
  {
    case 1:
      v5 = 0x67696C6674736574;
      v3 = 0xEA00000000007468;
      break;
    case 2:
      v5 = 0x69746375646F7270;
      v3 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v3 = 0xE700000000000000;
      v5 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  v6 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x67696C6674736574;
      v6 = 0xEA00000000007468;
      break;
    case 2:
      v2 = 0x69746375646F7270;
      v6 = 0xEA00000000006E6FLL;
      break;
    case 3:
      v6 = 0xE700000000000000;
      v2 = 0x786F62646E6173;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_100219A54();
  }

  return v8 & 1;
}

id sub_1001DBDFC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v219 = a7;
  v28 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v28);
  sub_100089118();
  __chkstk_darwin(v29);
  sub_1000891AC();
  sub_1001564A0(v30);
  v31 = sub_100080FB4(&unk_1003D20F0);
  v32 = sub_1000B01B0(v31);
  __chkstk_darwin(v32);
  sub_10018ECCC();
  v214 = v33;
  sub_10018ED10();
  __chkstk_darwin(v34);
  v213 = &v209 - v35;
  sub_10018ED10();
  __chkstk_darwin(v36);
  sub_1001B5378();
  sub_1001564A0(v37);
  v211 = a12;
  v212 = a13;
  v38 = sub_100080FB4(a12);
  sub_1000B01B0(v38);
  sub_100089118();
  __chkstk_darwin(v39);
  sub_100089360();
  v40 = (a14)(0);
  sub_100098B7C();
  __chkstk_darwin(v41);
  sub_10018ECCC();
  v224 = v42;
  sub_10018ED10();
  __chkstk_darwin(v43);
  sub_1001B5378();
  sub_1001564A0(v44);
  v236 = a1;
  v237 = a2;

  swift_task_localValuePush();
  v221 = a9;
  v240 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v220 = a12;
  v45 = type metadata accessor for SKLogger();
  v46 = sub_10007EDA4(v45, qword_1003F26C8);
  v47 = qword_1003CBE98;

  if (v47 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v223 = a18;
  v226 = a16;
  v225 = qword_1003F2700;
  TaskLocal.get()();
  v48 = v236;
  v49 = v237;
  v50 = static os_log_type_t.default.getter();

  v51 = Logger.logObject.getter();

  v52 = os_log_type_enabled(v51, v50);
  v222 = a8;
  if (v52)
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195CC();
    v53 = swift_slowAlloc();
    v217 = v40;
    *v234 = v53;
    sub_100106A78(4.8752e-34);
    v236 = v54;
    v237 = v55;
    v56._countAndFlagsBits = v48;
    v56._object = v49;
    String.append(_:)(v56);
    v57._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v57);
    sub_100080210(v236, v237, v234);
    sub_100219D4C();

    sub_1000AFD94();
    v58 = sub_100080210(v219, a8, v234);

    *(a14 + 14) = v58;
    sub_100219A8C();
    _os_log_impl(v59, v60, v61, v62, v63, v64);
    sub_10021A06C();
    swift_arrayDestroy();
    v40 = v217;
    sub_1000B7D68();

    sub_100219550();
  }

  else
  {
  }

  v65 = [objc_opt_self() currentConnection];
  if (!v65)
  {
    sub_10021A05C();
    _StringGuts.grow(_:)(35);

    sub_1000C446C();
    sub_10021AB08();
    *v234 = v76 + 6;
    *&v234[8] = v75;
    sub_1002196DC();
    swift_beginAccess();
    sub_100219D24();
    sub_10021A9FC();
    v77._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v77);

    sub_10021AA60();
    v78 = *v234;
    static os_log_type_t.error.getter();
    sub_1000B0678();

    Logger.logObject.getter();
    sub_10021A7E4();

    if (os_log_type_enabled(v46, v51))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      v219 = a11;
      sub_1002195DC();
      v235 = swift_slowAlloc();
      sub_1000AFD44(4.8752e-34);
      *v234 = v79;
      *&v234[8] = v80;
      String.append(_:)(v78);
      v81._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v81);
      v82 = *&v234[8];
      sub_100080210(*v234, *&v234[8], &v235);
      sub_100219E00();

      *(a11 + 4) = v78._countAndFlagsBits;
      sub_10013BC98();
      v83 = sub_10009F14C();
      sub_100080210(v83, v84, v85);
      sub_1000EDD18();

      *(a11 + 14) = v82;
      sub_100219A98();
      _os_log_impl(v86, v87, v88, v89, v90, v91);
      sub_10021960C();
      swift_arrayDestroy();
      sub_10015CFF0();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v137 = swift_allocError();
    sub_100219A48(v137, v138);
    swift_willThrow();
    goto LABEL_37;
  }

  v217 = v46;
  v219 = a11;
  v66 = v65;
  sub_1002199B4();
  swift_beginAccess();
  *&v238 = v40;
  *(&v238 + 1) = a15;
  sub_10009E720(&v236);
  v67 = sub_10021AB38();
  sub_10021A844(v67, v68);
  v209 = v238;
  sub_100086D24(&v236, v238);
  sub_1001B52B0();
  type metadata accessor for Optional();
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v69);
  sub_100089240();
  v216 = v66;
  (a17)(v66);
  sub_100219EF0();
  if (sub_100081D0C(v70, v71, v72) == 1)
  {
    v73 = sub_10017CB1C();
    v74(v73);
    memset(v234, 0, sizeof(v234));
  }

  else
  {
    *&v234[24] = v209;
    sub_10009E720(v234);
    sub_10012ADC8();
    (*(v92 + 32))();
  }

  sub_100080FB4(&qword_1003D27C0);
  v93 = v220;
  v94 = swift_dynamicCast();
  v95 = v217;
  if (!v94)
  {
    sub_1000B0690();
    sub_100081DFC(v115, v116, v117, v40);
    sub_10013B1E8(v93, v211);
    *v234 = 0;
    *&v234[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    sub_1000C446C();
    sub_10021AB08();
    v232 = v119;
    v233 = v118;
    sub_1002196DC();
    swift_beginAccess();
    sub_100219D24();
    sub_10021A9FC();
    v120._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v120);

    sub_10021AA60();
    v122 = v232;
    v121 = v233;
    static os_log_type_t.error.getter();
    sub_1000B0678();

    Logger.logObject.getter();
    sub_10021A7E4();

    if (os_log_type_enabled(v95, v51))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1002195DC();
      v227 = swift_slowAlloc();
      sub_1000AFD44(4.8752e-34);
      v232 = v123;
      v233 = v124;
      v125._countAndFlagsBits = v122;
      v125._object = v121;
      String.append(_:)(v125);
      v126._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v126);
      v127 = v233;
      sub_100080210(v232, v233, &v227);
      sub_100219E00();

      *(a17 + 4) = v122;
      sub_10013BC98();
      v128 = sub_10009F14C();
      sub_100080210(v128, v129, v130);
      sub_1000EDD18();

      *(a17 + 14) = v127;
      sub_100219A98();
      _os_log_impl(v131, v132, v133, v134, v135, v136);
      sub_10021960C();
      swift_arrayDestroy();
      sub_10015CFF0();

      sub_1000B7D58();
    }

    else
    {
    }

    sub_10021AD18();
    sub_1000ED9E4();
    swift_allocError();
    *v140 = 3;
    swift_willThrow();

    sub_100080F0C(&v236);
    goto LABEL_37;
  }

  sub_100219FA8();
  sub_100081DFC(v96, v97, v98, v99);
  v100 = v93;
  v101 = v210;
  sub_100218508(v100, v210);
  v102 = v240;
  swift_beginAccess();
  sub_100218560(v101, v102);
  sub_100080F0C(&v236);
  sub_1002199B4();
  swift_beginAccess();
  *&v238 = v40;
  v103 = sub_10009F14C();
  *(&v238 + 1) = sub_1002185B8(v103, v104);
  v105 = sub_10009E720(&v236);
  sub_10021A844(v102, v105);
  v106 = sub_10021ADD0();
  sub_100105C8C(v106 + *(v40 + 20), v213, &unk_1003D20F0);
  type metadata accessor for ClientOverride(0);
  sub_100219B1C();
  sub_100219D64();
  sub_100081D0C(v107, v108, v109);
  v110 = sub_10021AAF0();
  sub_10013B1E8(v110, &unk_1003D20F0);
  if (a21 == 1)
  {
    sub_100080F0C(&v236);
    sub_10021AAFC(v239);
    sub_1000B0690();
    sub_100081DFC(v111, v112, v113, v40);
    v114 = v216;
  }

  else
  {
    v114 = v216;
    if ([v216 sk_allowClientOverride])
    {
      v139 = sub_10021ADD0();
      v95 = v218;
      sub_100105C8C(v139 + *(v40 + 20), v218, &unk_1003D20F0);
    }

    else
    {
      v227 = 0;
      v228 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v230 = v227;
      v231 = v228;
      v141._countAndFlagsBits = 0xD00000000000001DLL;
      v141._object = 0x80000001003174C0;
      String.append(_:)(v141);
      sub_1002196DC();
      swift_beginAccess();
      sub_100219D24();
      sub_10021A9FC();
      v142._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v142);

      v143._countAndFlagsBits = 0xD00000000000001FLL;
      v143._object = 0x80000001003174E0;
      String.append(_:)(v143);
      v145 = v230;
      v144 = v231;
      sub_10021AA60();
      v146 = v231;
      v220 = v230;
      v147 = static os_log_type_t.error.getter();

      v148 = Logger.logObject.getter();

      if (os_log_type_enabled(v148, v147))
      {
        sub_1000B7DC8();
        swift_slowAlloc();
        v212 = v145;
        sub_1002195DC();
        v213 = swift_slowAlloc();
        v229._countAndFlagsBits = v213;
        sub_1000AFD44(4.8752e-34);
        v230 = v149;
        v231 = v150;
        v151._countAndFlagsBits = v220;
        v151._object = v146;
        String.append(_:)(v151);
        v152._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v152);
        v153 = v231;
        sub_100080210(v230, v231, &v229._countAndFlagsBits);
        v95 = v147;
        sub_100219CE4();

        *(v145 + 4) = v147;
        sub_10013BC98();
        sub_100080210(v212, v144, &v229._countAndFlagsBits);
        sub_10021A2E8();

        *(v145 + 14) = v153;
        sub_100219A98();
        _os_log_impl(v154, v155, v156, v157, v158, v159);
        sub_10021A594();
        swift_arrayDestroy();
        sub_1001B5198();

        sub_1000B7D58();
      }

      else
      {
      }

      sub_10021AAFC(v239);
      sub_1000B0690();
      sub_100081DFC(v160, v161, v162, v40);
      v114 = v216;
    }

    sub_100080F0C(&v236);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v95, v214, &unk_1003D20F0);
  v163 = v114;
  v164 = v215;
  sub_1001ABF2C();
  if (v164)
  {

    sub_10021A05C();
    _StringGuts.grow(_:)(30);

    sub_1000C446C();
    sub_10021AB08();
    v230 = (v167 + 1);
    v231 = v166;
    sub_1002199B4();
    swift_beginAccess();
    sub_10021A61C();
    sub_10021A844(v168, v169);
    sub_1002190EC();
    v170._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v170);

    sub_10021AA60();
    v171 = v230;
    v172 = v231;
    v173 = static os_log_type_t.error.getter();

    v174 = Logger.logObject.getter();

    if (os_log_type_enabled(v174, v173))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      v220 = v163;
      sub_1002197A4();
      v229._countAndFlagsBits = swift_slowAlloc();
      *v163 = 136446466;
      sub_10009F0F8();
      v230 = v175;
      v231 = v176;
      v177._countAndFlagsBits = v171;
      v177._object = v172;
      String.append(_:)(v177);
      v178._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v178);
      sub_100080210(v230, v231, &v229._countAndFlagsBits);
      sub_10001E11C();

      *(v163 + 4) = &v230;
      sub_100107150();
      v179 = sub_10017CB1C();
      v182 = sub_100080210(v179, v180, v181);

      *(v163 + 14) = v182;
      sub_1002199CC();
      _os_log_impl(v183, v184, v185, v186, v187, v188);
      sub_100219884();
      swift_arrayDestroy();
      sub_1000B7D68();

      v163 = v220;
      sub_1000B7D68();
    }

    else
    {
    }

    sub_10021AD18();
    sub_1000ED9E4();
    v207 = swift_allocError();
    sub_100219A48(v207, v208);
    swift_willThrow();

    sub_10013B1E8(v218, &unk_1003D20F0);
LABEL_37:
    swift_task_localValuePop();
  }

  v189 = v165;
  v220 = v163;
  sub_1002199B4();
  swift_beginAccess();
  sub_10021A61C();
  sub_10021A844(v190, v191);
  sub_1002190EC();
  v230 = _typeName(_:qualified:)();
  v231 = v192;
  v193._countAndFlagsBits = 95;
  v193._object = 0xE100000000000000;
  String.append(_:)(v193);
  sub_10021AA60();
  String.append(_:)(v229);

  v194 = v230;
  v195 = v231;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v197 = result;
    v240 = a25;
    v198 = String._bridgeToObjectiveC()();
    [v197 takeKeepAliveTransaction:v198];

    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v199, v200, v201, v202);
    sub_10021A790();
    v203 = swift_allocObject();
    v203[2] = 0;
    v203[3] = 0;
    v204 = v219;
    v203[4] = a10;
    v203[5] = v204;
    v205 = v221;
    v203[6] = v189;
    v203[7] = v205;
    v203[8] = v194;
    v203[9] = v195;

    v206 = v189;

    sub_100165CBC();

    sub_10013B1E8(v218, &unk_1003D20F0);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

id sub_1001DCF50(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v15 - 8);
  v136 = &v136 - v16;
  v17 = sub_100080FB4(&unk_1003D20F0);
  v18 = __chkstk_darwin(v17 - 8);
  v139 = &v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v138 = &v136 - v21;
  __chkstk_darwin(v20);
  v141 = &v136 - v22;
  v23 = sub_100080FB4(&qword_1003D2810);
  __chkstk_darwin(v23 - 8);
  v143 = &v136 - v24;
  v25 = type metadata accessor for ExternalGatewayRequest();
  v26 = __chkstk_darwin(v25);
  v28 = &v136 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v137 = &v136 - v29;
  v159 = a1;
  v160 = a2;

  swift_task_localValuePush();
  v146 = a9;
  v162 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for SKLogger();
  v31 = sub_10007EDA4(v30, qword_1003F26C8);
  v32 = qword_1003CBE98;

  if (v32 != -1)
  {
    swift_once();
  }

  v148 = qword_1003F2700;
  TaskLocal.get()();
  v34 = v159;
  v33 = v160;
  v35 = static os_log_type_t.default.getter();

  v145 = v31;
  v36 = Logger.logObject.getter();

  v37 = os_log_type_enabled(v36, v35);
  v147 = a8;
  v149 = v25;
  if (v37)
  {
    v38 = swift_slowAlloc();
    v142 = a7;
    v39 = a8;
    v40 = v38;
    v41 = swift_slowAlloc();
    *&v144 = v28;
    *v157 = v41;
    *v40 = 136446466;
    v159 = 91;
    v160 = 0xE100000000000000;
    v42._countAndFlagsBits = v34;
    v42._object = v33;
    String.append(_:)(v42);
    v43._countAndFlagsBits = 8285;
    v43._object = 0xE200000000000000;
    String.append(_:)(v43);
    v44 = sub_100080210(v159, v160, v157);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2082;
    v45 = sub_100080210(v142, v39, v157);

    *(v40 + 14) = v45;
    _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v40, 0x16u);
    swift_arrayDestroy();
    v25 = v149;
    v28 = v144;
  }

  else
  {
  }

  v46 = [objc_opt_self() currentConnection];
  if (!v46)
  {
    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *v157 = 0xD000000000000021;
    *&v157[8] = 0x8000000100317450;
    v55 = v162;
    swift_beginAccess();
    sub_100219094(v55, v28);
    sub_1002190EC();
    v56._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v56);

    v57 = *v157;
    TaskLocal.get()();
    v58 = *v157;
    v59 = static os_log_type_t.error.getter();

    v60 = Logger.logObject.getter();

    if (os_log_type_enabled(v60, v59))
    {
      v61 = swift_slowAlloc();
      v142 = a11;
      v62 = v61;
      v158 = swift_slowAlloc();
      *v62 = 136446466;
      *v157 = 91;
      *&v157[8] = 0xE100000000000000;
      String.append(_:)(v58);
      v63._countAndFlagsBits = 8285;
      v63._object = 0xE200000000000000;
      String.append(_:)(v63);
      v64 = sub_100080210(*v157, *&v157[8], &v158);

      *(v62 + 4) = v64;
      *(v62 + 12) = 2082;
      v65 = sub_100080210(v57, *(&v57 + 1), &v158);

      *(v62 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v60, v59, "%{public}s%{public}s", v62, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v91 = 1;
    swift_willThrow();
    goto LABEL_37;
  }

  v47 = v46;
  v48 = v162;
  swift_beginAccess();
  *&v161 = v25;
  *(&v161 + 1) = &off_100387660;
  v49 = sub_10009E720(&v159);
  sub_100219094(v48, v49);
  v144 = v161;
  v50 = v161;
  sub_100086D24(&v159, v161);
  v51 = type metadata accessor for Optional();
  v52 = *(v51 - 8);
  __chkstk_darwin(v51);
  v54 = &v136 - v53;
  sub_1000EFB38(v47, &v136 - v53);
  if (sub_100081D0C(v54, 1, v50) == 1)
  {
    (*(v52 + 8))(v54, v51);
    memset(v157, 0, sizeof(v157));
  }

  else
  {
    *&v157[24] = v144;
    v66 = sub_10009E720(v157);
    (*(*(v50 - 8) + 32))(v66, v54, v50);
  }

  v142 = a11;
  sub_100080FB4(&qword_1003D27C0);
  v67 = v143;
  v68 = v149;
  if (!swift_dynamicCast())
  {
    sub_100081DFC(v67, 1, 1, v68);
    sub_10013B1E8(v67, &qword_1003D2810);
    *v157 = 0;
    *&v157[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v155 = 0xD00000000000001BLL;
    v156 = 0x8000000100317480;
    v77 = v162;
    swift_beginAccess();
    sub_100219094(v77, v28);
    sub_1002190EC();
    v78._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v78);

    v80 = v155;
    v79 = v156;
    TaskLocal.get()();
    v82 = v155;
    v81 = v156;
    v83 = static os_log_type_t.error.getter();

    v84 = Logger.logObject.getter();

    if (os_log_type_enabled(v84, v83))
    {
      v85 = swift_slowAlloc();
      v162 = v80;
      v86 = v85;
      v150 = swift_slowAlloc();
      *v86 = 136446466;
      v155 = 91;
      v156 = 0xE100000000000000;
      v87._countAndFlagsBits = v82;
      v87._object = v81;
      String.append(_:)(v87);
      v88._countAndFlagsBits = 8285;
      v88._object = 0xE200000000000000;
      String.append(_:)(v88);
      v89 = sub_100080210(v155, v156, &v150);

      *(v86 + 4) = v89;
      *(v86 + 12) = 2082;
      v90 = sub_100080210(v162, v79, &v150);

      *(v86 + 14) = v90;
      _os_log_impl(&_mh_execute_header, v84, v83, "%{public}s%{public}s", v86, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v94 = 3;
    swift_willThrow();

    sub_100080F0C(&v159);
    goto LABEL_37;
  }

  *&v144 = v28;
  sub_100081DFC(v67, 0, 1, v68);
  v69 = v137;
  sub_100218508(v67, v137);
  v70 = v162;
  swift_beginAccess();
  sub_100218560(v69, v70);
  sub_100080F0C(&v159);
  swift_beginAccess();
  *&v161 = v68;
  *(&v161 + 1) = sub_1002185B8(&qword_1003D2818, type metadata accessor for ExternalGatewayRequest);
  v71 = sub_10009E720(&v159);
  sub_100219094(v70, v71);
  v72 = sub_100086D24(&v159, v161);
  v73 = v138;
  sub_100105C8C(v72 + *(v68 + 28), v138, &unk_1003D20F0);
  v74 = type metadata accessor for ClientOverride(0);
  v75 = sub_100081D0C(v73, 1, v74);
  sub_10013B1E8(v73, &unk_1003D20F0);
  if (v75 == 1)
  {
    sub_100080F0C(&v159);
    v76 = v141;
    sub_100081DFC(v141, 1, 1, v74);
  }

  else
  {
    v92 = [v47 sk_allowClientOverride];
    v76 = v141;
    if (v92)
    {
      v93 = sub_100086D24(&v159, v161);
      sub_100105C8C(v93 + *(v68 + 28), v76, &unk_1003D20F0);
    }

    else
    {
      v150 = 0;
      v151 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v153 = v150;
      v154 = v151;
      v95._countAndFlagsBits = 0xD00000000000001DLL;
      v95._object = 0x80000001003174C0;
      String.append(_:)(v95);
      v96 = v162;
      swift_beginAccess();
      sub_100219094(v96, v144);
      sub_1002190EC();
      v97._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v97);

      v98._countAndFlagsBits = 0xD00000000000001FLL;
      v98._object = 0x80000001003174E0;
      String.append(_:)(v98);
      v99 = v154;
      v143 = v153;
      TaskLocal.get()();
      v100 = v154;
      v137 = v153;
      v101 = static os_log_type_t.error.getter();

      v102 = Logger.logObject.getter();

      LODWORD(v138) = v101;
      if (os_log_type_enabled(v102, v101))
      {
        v103 = swift_slowAlloc();
        v152._countAndFlagsBits = swift_slowAlloc();
        *v103 = 136446466;
        v153 = 91;
        v154 = 0xE100000000000000;
        v104._countAndFlagsBits = v137;
        v104._object = v100;
        String.append(_:)(v104);
        v105._countAndFlagsBits = 8285;
        v105._object = 0xE200000000000000;
        String.append(_:)(v105);
        v106 = sub_100080210(v153, v154, &v152._countAndFlagsBits);

        *(v103 + 4) = v106;
        *(v103 + 12) = 2082;
        v107 = sub_100080210(v143, v99, &v152._countAndFlagsBits);

        *(v103 + 14) = v107;
        _os_log_impl(&_mh_execute_header, v102, v138, "%{public}s%{public}s", v103, 0x16u);
        swift_arrayDestroy();

        v76 = v141;
      }

      else
      {
      }

      sub_100081DFC(v76, 1, 1, v74);
    }

    sub_100080F0C(&v159);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v76, v139, &unk_1003D20F0);
  v143 = v47;
  v108 = v140;
  sub_1001ABF2C();
  if (v108)
  {

    v159 = 0;
    v160 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v153 = 0xD00000000000001CLL;
    v154 = 0x80000001003174A0;
    v110 = v162;
    swift_beginAccess();
    sub_100219094(v110, v144);
    sub_1002190EC();
    v111._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v111);

    v113 = v153;
    v112 = v154;
    TaskLocal.get()();
    v115 = v153;
    v114 = v154;
    v116 = static os_log_type_t.error.getter();

    v117 = Logger.logObject.getter();

    if (os_log_type_enabled(v117, v116))
    {
      v118 = swift_slowAlloc();
      v152._countAndFlagsBits = swift_slowAlloc();
      *v118 = 136446466;
      v153 = 91;
      v154 = 0xE100000000000000;
      v119._countAndFlagsBits = v115;
      v119._object = v114;
      String.append(_:)(v119);
      v120._countAndFlagsBits = 8285;
      v120._object = 0xE200000000000000;
      String.append(_:)(v120);
      v121 = sub_100080210(v153, v154, &v152._countAndFlagsBits);

      *(v118 + 4) = v121;
      *(v118 + 12) = 2082;
      v122 = sub_100080210(v113, v112, &v152._countAndFlagsBits);

      *(v118 + 14) = v122;
      _os_log_impl(&_mh_execute_header, v117, v116, "%{public}s%{public}s", v118, 0x16u);
      swift_arrayDestroy();

      v76 = v141;
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v135 = 1;
    swift_willThrow();

    sub_10013B1E8(v76, &unk_1003D20F0);
LABEL_37:
    swift_task_localValuePop();
  }

  v123 = v109;
  v124 = v162;
  swift_beginAccess();
  sub_100219094(v124, v144);
  sub_1002190EC();
  v153 = _typeName(_:qualified:)();
  v154 = v125;
  v126._countAndFlagsBits = 95;
  v126._object = 0xE100000000000000;
  String.append(_:)(v126);
  TaskLocal.get()();
  String.append(_:)(v152);

  v127 = v153;
  v128 = v154;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v130 = result;
    v131 = String._bridgeToObjectiveC()();
    [v130 takeKeepAliveTransaction:v131];

    v132 = type metadata accessor for TaskPriority();
    sub_100081DFC(v136, 1, 1, v132);
    v133 = swift_allocObject();
    v133[2] = 0;
    v133[3] = 0;
    v133[4] = a10;
    v133[5] = v142;
    v133[6] = v123;
    v133[7] = v146;
    v133[8] = v127;
    v133[9] = v128;

    v134 = v123;

    sub_100165CBC();

    sub_10013B1E8(v76, &unk_1003D20F0);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

id sub_1001DE4A4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, char *a11)
{
  v15 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v15 - 8);
  v113 = &v109 - v16;
  v120 = type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  __chkstk_darwin(v120);
  v122 = &v109 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100080FB4(&unk_1003D20F0);
  v19 = __chkstk_darwin(v18 - 8);
  v115 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v109 - v22;
  __chkstk_darwin(v21);
  v119 = &v109 - v24;
  v130 = a1;
  v131 = a2;

  swift_task_localValuePush();
  v118 = a9;
  v134 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for SKLogger();
  v26 = sub_10007EDA4(v25, qword_1003F26C8);
  v27 = qword_1003CBE98;

  if (v27 != -1)
  {
    swift_once();
  }

  v121 = qword_1003F2700;
  TaskLocal.get()();
  v28 = v130;
  v29 = v131;
  v30 = static os_log_type_t.default.getter();

  v117 = v26;
  v31 = Logger.logObject.getter();

  if (os_log_type_enabled(v31, v30))
  {
    v32 = a8;
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v114 = v23;
    v128 = v34;
    *v33 = 136446466;
    v130 = 91;
    v131 = 0xE100000000000000;
    v35._countAndFlagsBits = v28;
    v35._object = v29;
    String.append(_:)(v35);
    v36._countAndFlagsBits = 8285;
    v36._object = 0xE200000000000000;
    String.append(_:)(v36);
    v37 = sub_100080210(v130, v131, &v128);

    *(v33 + 4) = v37;
    *(v33 + 12) = 2082;
    v23 = v114;
    v38 = sub_100080210(a7, v32, &v128);

    *(v33 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v33, 0x16u);
    swift_arrayDestroy();

    a8 = v32;
  }

  else
  {
  }

  v39 = v120;
  v40 = [objc_opt_self() currentConnection];
  if (!v40)
  {
    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v128 = 0xD000000000000021;
    v129 = 0x8000000100317450;
    v48 = v134;
    swift_beginAccess();
    sub_100219094(v48, v122);
    sub_1002190EC();
    v49._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v49);

    v51 = v128;
    v50 = v129;
    TaskLocal.get()();
    v53 = v128;
    v52 = v129;
    v54 = static os_log_type_t.error.getter();

    v55 = Logger.logObject.getter();

    if (os_log_type_enabled(v55, v54))
    {
      v56 = swift_slowAlloc();
      v114 = a11;
      v57 = v56;
      v58 = swift_slowAlloc();
      v112 = a8;
      v123 = v58;
      *v57 = 136446466;
      v128 = 91;
      v129 = 0xE100000000000000;
      v59._countAndFlagsBits = v53;
      v59._object = v52;
      String.append(_:)(v59);
      v60._countAndFlagsBits = 8285;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61 = sub_100080210(v128, v129, &v123);

      *(v57 + 4) = v61;
      *(v57 + 12) = 2082;
      v62 = sub_100080210(v51, v50, &v123);

      *(v57 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v55, v54, "%{public}s%{public}s", v57, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v64 = 1;
    swift_willThrow();
    goto LABEL_29;
  }

  v41 = v40;
  v42 = v134;
  swift_beginAccess();
  v132 = v39;
  v133 = sub_1002185B8(&qword_1003D27D0, type metadata accessor for LegacyRestoreCompletedTransactionsTask);
  v43 = sub_10009E720(&v130);
  sub_100219094(v42, v43);
  v44 = sub_100086D24(&v130, v132);
  sub_100105C8C(v44 + v39[5], v23, &unk_1003D20F0);
  v45 = type metadata accessor for ClientOverride(0);
  v46 = sub_100081D0C(v23, 1, v45);
  sub_10013B1E8(v23, &unk_1003D20F0);
  v114 = a11;
  if (v46 == 1)
  {
    sub_100080F0C(&v130);
    v47 = v119;
    sub_100081DFC(v119, 1, 1, v45);
  }

  else
  {
    if ([v41 sk_allowClientOverride])
    {
      v63 = sub_100086D24(&v130, v132);
      v47 = v119;
      sub_100105C8C(v63 + v39[5], v119, &unk_1003D20F0);
    }

    else
    {
      v123 = 0;
      v124 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v126 = v123;
      v127 = v124;
      v65._countAndFlagsBits = 0xD00000000000001DLL;
      v65._object = 0x80000001003174C0;
      String.append(_:)(v65);
      v66 = v134;
      swift_beginAccess();
      sub_100219094(v66, v122);
      sub_1002190EC();
      v67._countAndFlagsBits = _typeName(_:qualified:)();
      String.append(_:)(v67);

      v68._countAndFlagsBits = 0xD00000000000001FLL;
      v68._object = 0x80000001003174E0;
      String.append(_:)(v68);
      v69 = v127;
      v111 = v126;
      TaskLocal.get()();
      v70 = v127;
      v109 = v126;
      v71 = static os_log_type_t.error.getter();

      v72 = Logger.logObject.getter();

      v110 = v71;
      if (os_log_type_enabled(v72, v71))
      {
        v73 = swift_slowAlloc();
        v112 = a8;
        v74 = v73;
        v125._countAndFlagsBits = swift_slowAlloc();
        *v74 = 136446466;
        v126 = 91;
        v127 = 0xE100000000000000;
        v75 = v72;
        v76._countAndFlagsBits = v109;
        v76._object = v70;
        String.append(_:)(v76);
        v77._countAndFlagsBits = 8285;
        v77._object = 0xE200000000000000;
        String.append(_:)(v77);
        v78 = sub_100080210(v126, v127, &v125._countAndFlagsBits);

        *(v74 + 4) = v78;
        *(v74 + 12) = 2082;
        v79 = sub_100080210(v111, v69, &v125._countAndFlagsBits);

        *(v74 + 14) = v79;
        _os_log_impl(&_mh_execute_header, v75, v110, "%{public}s%{public}s", v74, 0x16u);
        swift_arrayDestroy();

        a8 = v112;
      }

      else
      {
      }

      v47 = v119;
      sub_100081DFC(v119, 1, 1, v45);
    }

    sub_100080F0C(&v130);
  }

  type metadata accessor for Client(0);
  sub_100105C8C(v47, v115, &unk_1003D20F0);
  v120 = v41;
  v80 = v116;
  sub_1001ABF2C();
  if (v80)
  {

    v130 = 0;
    v131 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    v126 = 0xD00000000000001CLL;
    v127 = 0x80000001003174A0;
    v82 = v134;
    swift_beginAccess();
    sub_100219094(v82, v122);
    sub_1002190EC();
    v83._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v83);

    v85 = v126;
    v84 = v127;
    TaskLocal.get()();
    v87 = v126;
    v86 = v127;
    v88 = static os_log_type_t.error.getter();

    v89 = Logger.logObject.getter();

    if (os_log_type_enabled(v89, v88))
    {
      v90 = swift_slowAlloc();
      v112 = a8;
      v91 = v90;
      v125._countAndFlagsBits = swift_slowAlloc();
      *v91 = 136446466;
      v126 = 91;
      v127 = 0xE100000000000000;
      v92._countAndFlagsBits = v87;
      v92._object = v86;
      String.append(_:)(v92);
      v93._countAndFlagsBits = 8285;
      v93._object = 0xE200000000000000;
      String.append(_:)(v93);
      v94 = sub_100080210(v126, v127, &v125._countAndFlagsBits);

      *(v91 + 4) = v94;
      *(v91 + 12) = 2082;
      v95 = sub_100080210(v85, v84, &v125._countAndFlagsBits);

      *(v91 + 14) = v95;
      _os_log_impl(&_mh_execute_header, v89, v88, "%{public}s%{public}s", v91, 0x16u);
      swift_arrayDestroy();
      v47 = v119;
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v108 = 1;
    swift_willThrow();

    sub_10013B1E8(v47, &unk_1003D20F0);
LABEL_29:
    swift_task_localValuePop();

    goto LABEL_30;
  }

  v96 = v81;
  v97 = v134;
  swift_beginAccess();
  sub_100219094(v97, v122);
  sub_1002190EC();
  v126 = _typeName(_:qualified:)();
  v127 = v98;
  v99._countAndFlagsBits = 95;
  v99._object = 0xE100000000000000;
  String.append(_:)(v99);
  TaskLocal.get()();
  String.append(_:)(v125);

  v100 = v126;
  v101 = v127;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v103 = result;
    v104 = String._bridgeToObjectiveC()();
    [v103 takeKeepAliveTransaction:v104];

    v105 = type metadata accessor for TaskPriority();
    sub_100081DFC(v113, 1, 1, v105);
    v106 = swift_allocObject();
    v106[2] = 0;
    v106[3] = 0;
    v106[4] = a10;
    v106[5] = v114;
    v106[6] = v96;
    v106[7] = v118;
    v106[8] = v100;
    v106[9] = v101;

    v107 = v96;

    sub_100165CBC();

    sub_10013B1E8(v119, &unk_1003D20F0);
    swift_task_localValuePop();

LABEL_30:
  }

  __break(1u);
  return result;
}

id sub_1001DF414(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t (*a12)(void), unint64_t *a13, void (*a14)(uint64_t), uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v158 = a7;
  v23 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v23);
  sub_100089118();
  __chkstk_darwin(v24);
  sub_1000891AC();
  sub_1001564A0(v25);
  v181 = a12(0);
  sub_100098B7C();
  sub_100089118();
  __chkstk_darwin(v26);
  sub_1000891AC();
  v167 = v27;
  v28 = sub_100080FB4(&unk_1003D20F0);
  v29 = sub_1000B01B0(v28);
  __chkstk_darwin(v29);
  sub_10018ECCC();
  v159 = v30;
  sub_10018ED10();
  v32 = __chkstk_darwin(v31);
  v34 = &v153 - v33;
  __chkstk_darwin(v32);
  sub_10021A63C();
  v177 = a1;
  v178 = a2;

  swift_task_localValuePush();
  v162 = a9;
  v169 = swift_projectBox();
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v35 = type metadata accessor for SKLogger();
  v36 = sub_10007EDA4(v35, qword_1003F26C8);
  v37 = qword_1003CBE98;

  if (v37 != -1)
  {
    sub_1000ED744();
    swift_once();
  }

  v168 = a16;
  v165 = a17;
  v166 = qword_1003F2700;
  TaskLocal.get()();
  v38 = v177;
  v39 = v178;
  v40 = static os_log_type_t.default.getter();

  v161 = v36;
  v41 = Logger.logObject.getter();

  v42 = os_log_type_enabled(v41, v40);
  v163 = a8;
  v164 = v19;
  if (v42)
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195CC();
    v175 = swift_slowAlloc();
    sub_100106A78(4.8752e-34);
    v177 = v43;
    v178 = v44;
    v45._countAndFlagsBits = v38;
    v45._object = v39;
    String.append(_:)(v45);
    v46._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v46);
    sub_100080210(v177, v178, &v175);
    sub_100123F48();

    *(a8 + 4) = v38;
    sub_1000B009C();
    v47 = sub_100080210(v158, a8, &v175);

    *(a8 + 14) = v47;
    sub_100219A8C();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    swift_arrayDestroy();
    v19 = v164;
    sub_1000B7D68();

    sub_100219550();
  }

  else
  {
  }

  v54 = [objc_opt_self() currentConnection];
  if (!v54)
  {
    sub_10021A05C();
    _StringGuts.grow(_:)(35);

    sub_1000C446C();
    v175 = 0xD000000000000021;
    v176 = v67;
    sub_1002199B4();
    swift_beginAccess();
    sub_10021A578();
    sub_10021AEA8();
    v68._countAndFlagsBits = sub_10021ADB8();
    object = v68._object;
    String.append(_:)(v68);

    TaskLocal.get()();
    v70 = v175;
    v71 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10013B8D4();

    if (os_log_type_enabled(object, v71))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_10021AB2C();
      sub_1002195DC();
      v170 = swift_slowAlloc();
      sub_1000AFD44(4.8752e-34);
      v175 = v72;
      v176 = v73;
      v74._countAndFlagsBits = sub_10021ABBC();
      String.append(_:)(v74);
      v75._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v75);
      v76 = v176;
      sub_100080210(v175, v176, &v170);
      sub_100219E00();

      *(a11 + 4) = v70;
      sub_10013BC98();
      v77 = sub_10009F14C();
      sub_100080210(v77, v78, v79);
      sub_1000EDD18();

      *(a11 + 14) = v76;
      sub_100219A98();
      _os_log_impl(v80, v81, v82, v83, v84, v85);
      sub_10021960C();
      swift_arrayDestroy();
      sub_10015CFF0();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v87 = swift_allocError();
    sub_100219A48(v87, v88);
    swift_willThrow();
    goto LABEL_29;
  }

  v55 = v54;
  v56 = v169;
  sub_1002199B4();
  swift_beginAccess();
  v179 = v181;
  v180 = sub_1002185B8(a13, a14);
  v57 = sub_10009E720(&v177);
  sub_100219094(v56, v57);
  v58 = sub_10021ADD0();
  sub_100105C8C(v58, v34, &unk_1003D20F0);
  v59 = type metadata accessor for ClientOverride(0);
  sub_100219EF0();
  sub_100081D0C(v60, v61, v62);
  v63 = sub_10021AAF0();
  sub_10013B1E8(v63, &unk_1003D20F0);
  if (v56 == 1)
  {
    sub_100080F0C(&v177);
    sub_1000B0690();
    sub_100081DFC(v64, v65, v66, v59);
  }

  else
  {
    if ([v55 sk_allowClientOverride])
    {
      v86 = sub_10021ADD0();
      sub_100105C8C(v86, v19, &unk_1003D20F0);
    }

    else
    {
      v170 = 0;
      v171 = 0xE000000000000000;
      _StringGuts.grow(_:)(62);
      v173 = v170;
      v174 = v171;
      v89._countAndFlagsBits = 0xD00000000000001DLL;
      v89._object = 0x80000001003174C0;
      String.append(_:)(v89);
      sub_1002199B4();
      swift_beginAccess();
      sub_10021A578();
      sub_10021AEA8();
      v90._countAndFlagsBits = sub_10021ADB8();
      String.append(_:)(v90);

      v91._countAndFlagsBits = 0xD00000000000001FLL;
      v91._object = 0x80000001003174E0;
      String.append(_:)(v91);
      v92 = v174;
      v157 = v173;
      TaskLocal.get()();
      v93 = v174;
      v156 = v173;
      static os_log_type_t.error.getter();
      sub_10021AAF0();

      v94 = v161;
      Logger.logObject.getter();
      sub_10001E11C();

      LODWORD(v158) = 28;
      if (os_log_type_enabled(v94, 0x1Cu))
      {
        sub_1000B7DC8();
        swift_slowAlloc();
        sub_1002195CC();
        v155 = swift_slowAlloc();
        v172._countAndFlagsBits = v155;
        sub_100106A78(4.8752e-34);
        v173 = v95;
        v174 = v96;
        v154 = v94;
        v97._countAndFlagsBits = v156;
        v97._object = v93;
        String.append(_:)(v97);
        v98._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v98);
        v99 = v174;
        sub_100080210(v173, v174, &v172._countAndFlagsBits);
        sub_100219D4C();

        MEMORY[0xD000000000000020] = a11;
        sub_1000B009C();
        sub_100080210(v157, v92, &v172._countAndFlagsBits);
        sub_10001E11C();

        MEMORY[0xD00000000000002A] = v99;
        v100 = v154;
        sub_1002199A4();
        _os_log_impl(v101, v102, v103, v104, v105, v106);
        swift_arrayDestroy();
        v19 = v164;
        sub_1000B7D68();

        sub_100219550();
      }

      else
      {
      }

      sub_1000B0690();
      sub_100081DFC(v107, v108, v109, v59);
    }

    sub_100080F0C(&v177);
  }

  type metadata accessor for Client(0);
  sub_10021A61C();
  sub_100105C8C(v110, v111, v112);
  v158 = v55;
  v113 = v160;
  sub_1001ABF2C();
  if (v113)
  {

    sub_10021A05C();
    _StringGuts.grow(_:)(30);

    sub_1000C446C();
    v173 = 0xD00000000000001CLL;
    v174 = v115;
    sub_1002199B4();
    swift_beginAccess();
    sub_10021A578();
    sub_10021AEA8();
    v116._countAndFlagsBits = sub_10021ADB8();
    v117 = v116._object;
    String.append(_:)(v116);

    TaskLocal.get()();
    v118 = v173;
    v119 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_10013B8D4();

    if (os_log_type_enabled(v117, v119))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_10021AB2C();
      sub_1002195DC();
      v172._countAndFlagsBits = swift_slowAlloc();
      sub_1000AFD44(4.8752e-34);
      v173 = v120;
      v174 = v121;
      v122._countAndFlagsBits = sub_10021ABBC();
      String.append(_:)(v122);
      v123._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v123);
      v124 = v174;
      sub_100080210(v173, v174, &v172._countAndFlagsBits);
      sub_100219E00();

      *(a11 + 4) = v118;
      sub_10013BC98();
      v125 = sub_10009F14C();
      sub_100080210(v125, v126, v127);
      sub_1000EDD18();

      *(a11 + 14) = v124;
      sub_100219A98();
      _os_log_impl(v128, v129, v130, v131, v132, v133);
      sub_10021960C();
      swift_arrayDestroy();
      v19 = v164;
      sub_1000B7D68();

      sub_1000B7D68();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v151 = swift_allocError();
    sub_100219A48(v151, v152);
    swift_willThrow();

    sub_10013B1E8(v19, &unk_1003D20F0);
LABEL_29:
    swift_task_localValuePop();
  }

  v134 = v114;
  sub_10021AB2C();
  sub_1002199B4();
  swift_beginAccess();
  sub_10021A578();
  sub_10021AEA8();
  v173 = sub_10021ADB8();
  v174 = v135;
  v136._countAndFlagsBits = 95;
  v136._object = 0xE100000000000000;
  String.append(_:)(v136);
  TaskLocal.get()();
  String.append(_:)(v172);

  v137 = v173;
  v138 = v174;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v140 = result;
    v181 = a19;
    sub_1001073F0();
    v141 = String._bridgeToObjectiveC()();
    [v140 takeKeepAliveTransaction:v141];

    type metadata accessor for TaskPriority();
    sub_10021AAFC(&v182);
    sub_1000B0690();
    sub_100081DFC(v142, v143, v144, v145);
    sub_10021A790();
    v146 = swift_allocObject();
    v147 = sub_10021ABA4(v146);
    v148 = v161;
    v147[4] = a10;
    v147[5] = v148;
    v149 = v162;
    v147[6] = v134;
    v147[7] = v149;
    v147[8] = v137;
    v147[9] = v138;

    v150 = v134;
    sub_10021A16C();

    sub_100165CBC();

    sub_10013B1E8(v164, &unk_1003D20F0);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

id sub_1001E0098(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v15 - 8);
  v106 = &v105 - v16;
  v17 = sub_100080FB4(&unk_1003D20F0);
  v18 = __chkstk_darwin(v17 - 8);
  v109 = &v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v111 = &v105 - v20;
  v123 = a1;
  v124 = a2;

  swift_task_localValuePush();
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  v22 = sub_10007EDA4(v21, qword_1003F26C8);
  v23 = qword_1003CBE98;

  if (v23 != -1)
  {
    swift_once();
  }

  v24 = a9;
  v115 = qword_1003F2700;
  TaskLocal.get()();
  v25 = v123;
  v26 = v124;
  v27 = static os_log_type_t.default.getter();

  v113 = v22;
  v28 = Logger.logObject.getter();

  v29 = os_log_type_enabled(v28, v27);
  v114 = a8;
  v127 = a9;
  if (v29)
  {
    v30 = swift_slowAlloc();
    *&v120 = swift_slowAlloc();
    *v30 = 136446466;
    v123 = 91;
    v124 = 0xE100000000000000;
    v31._countAndFlagsBits = v25;
    v31._object = v26;
    String.append(_:)(v31);
    v32._countAndFlagsBits = 8285;
    v32._object = 0xE200000000000000;
    String.append(_:)(v32);
    v33 = sub_100080210(v123, v124, &v120);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2082;
    v34 = sub_100080210(a7, a8, &v120);
    v24 = v127;

    *(v30 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v30, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v35 = [objc_opt_self() currentConnection];
  if (!v35)
  {
    v123 = 0;
    v124 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    *&v120 = 0xD000000000000021;
    *(&v120 + 1) = 0x8000000100317450;
    swift_beginAccess();
    v52._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v52);

    v53 = v120;
    TaskLocal.get()();
    v54 = v120;
    v55 = static os_log_type_t.error.getter();

    v56 = Logger.logObject.getter();

    if (os_log_type_enabled(v56, v55))
    {
      v57 = swift_slowAlloc();
      v115 = v53;
      v58 = v57;
      v59 = swift_slowAlloc();
      v112 = a11;
      *&v117 = v59;
      *v58 = 136446466;
      *&v120 = 91;
      *(&v120 + 1) = 0xE100000000000000;
      String.append(_:)(v54);
      v60._countAndFlagsBits = 8285;
      v60._object = 0xE200000000000000;
      String.append(_:)(v60);
      v61 = sub_100080210(v120, *(&v120 + 1), &v117);

      *(v58 + 4) = v61;
      *(v58 + 12) = 2082;
      v62 = sub_100080210(v115, *(&v53 + 1), &v117);

      *(v58 + 14) = v62;
      _os_log_impl(&_mh_execute_header, v56, v55, "%{public}s%{public}s", v58, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v92 = 1;
    swift_willThrow();
    goto LABEL_31;
  }

  v112 = a11;
  v36 = v35;
  swift_beginAccess();
  v37 = v24;
  v38 = *(v24 + 16);
  v39 = *(v37 + 24);
  v40 = *(v37 + 32);
  v41 = *(v37 + 40);
  v125 = &type metadata for SetLastStoreActionTask;
  v126 = &off_10038E9A8;
  v42 = swift_allocObject();
  v123 = v42;
  *(v42 + 16) = v38;
  *(v42 + 24) = v39;
  *(v42 + 32) = v40;
  *(v42 + 40) = v41;
  v43 = sub_100086D24(&v123, &type metadata for SetLastStoreActionTask);
  v44 = type metadata accessor for Optional();
  *&v107 = &v105;
  v45 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v105 - v46;
  v49 = *v43;
  v48 = v43[1];
  v50 = v43[2];
  v51 = *(v43 + 24);

  v108 = v36;
  if (sub_1001B56A0(1))
  {
  }

  else
  {
    v49 = 0;
    v48 = 0;
    v50 = 0;
    v51 = 0;
  }

  *v47 = v49;
  *(v47 + 1) = v48;
  *(v47 + 2) = v50;
  v47[24] = v51;
  if (sub_100081D0C(v47, 1, &type metadata for SetLastStoreActionTask) == 1)
  {
    (*(v45 + 8))(v47, v44);
    v122 = 0;
    v120 = 0u;
    v121 = 0u;
  }

  else
  {
    *(&v121 + 1) = &type metadata for SetLastStoreActionTask;
    v122 = &off_10038E9A8;
    v63 = sub_10009E720(&v120);
    sub_1001564E4(v63, v47);
  }

  v64 = v127;
  v65 = v112;
  sub_100080FB4(&qword_1003D27C0);
  if (!swift_dynamicCast())
  {
    *&v120 = 0;
    *(&v120 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    *&v117 = 0xD00000000000001BLL;
    *(&v117 + 1) = 0x8000000100317480;
    swift_beginAccess();
    v82._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v82);

    v83 = v117;
    TaskLocal.get()();
    v84 = v117;
    v85 = static os_log_type_t.error.getter();

    v86 = Logger.logObject.getter();

    if (os_log_type_enabled(v86, v85))
    {
      v87 = swift_slowAlloc();
      v115 = v83;
      v88 = v87;
      v116._countAndFlagsBits = swift_slowAlloc();
      *v88 = 136446466;
      *&v117 = 91;
      *(&v117 + 1) = 0xE100000000000000;
      String.append(_:)(v84);
      v89._countAndFlagsBits = 8285;
      v89._object = 0xE200000000000000;
      String.append(_:)(v89);
      v90 = sub_100080210(v117, *(&v117 + 1), &v116._countAndFlagsBits);

      *(v88 + 4) = v90;
      *(v88 + 12) = 2082;
      v91 = sub_100080210(v115, *(&v83 + 1), &v116._countAndFlagsBits);

      *(v88 + 14) = v91;
      _os_log_impl(&_mh_execute_header, v86, v85, "%{public}s%{public}s", v88, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v93 = 3;
    swift_willThrow();

    sub_100080F0C(&v123);
    goto LABEL_31;
  }

  v107 = v117;
  v66 = v118;
  v67 = v119;
  swift_beginAccess();
  *(v64 + 16) = v107;
  *(v64 + 32) = v66;
  *(v64 + 40) = v67 & 1;

  sub_100080F0C(&v123);
  v68 = type metadata accessor for ClientOverride(0);
  v69 = v111;
  sub_100081DFC(v111, 1, 1, v68);
  type metadata accessor for Client(0);
  sub_100105C8C(v69, v109, &unk_1003D20F0);
  v108 = v108;
  v70 = v110;
  sub_1001ABF2C();
  if (v70)
  {

    v123 = 0;
    v124 = 0xE000000000000000;
    _StringGuts.grow(_:)(30);

    *&v117 = 0xD00000000000001CLL;
    *(&v117 + 1) = 0x80000001003174A0;
    swift_beginAccess();
    v72._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v72);

    v73 = v117;
    TaskLocal.get()();
    v74 = v117;
    v75 = static os_log_type_t.error.getter();

    v76 = Logger.logObject.getter();

    if (os_log_type_enabled(v76, v75))
    {
      v77 = swift_slowAlloc();
      v115 = v73;
      v78 = v77;
      v116._countAndFlagsBits = swift_slowAlloc();
      *v78 = 136446466;
      *&v117 = 91;
      *(&v117 + 1) = 0xE100000000000000;
      String.append(_:)(v74);
      v79._countAndFlagsBits = 8285;
      v79._object = 0xE200000000000000;
      String.append(_:)(v79);
      v80 = sub_100080210(v117, *(&v117 + 1), &v116._countAndFlagsBits);

      *(v78 + 4) = v80;
      *(v78 + 12) = 2082;
      v81 = sub_100080210(v115, *(&v73 + 1), &v116._countAndFlagsBits);

      *(v78 + 14) = v81;
      _os_log_impl(&_mh_execute_header, v76, v75, "%{public}s%{public}s", v78, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_10008B5E0();
    swift_allocError();
    *v104 = 1;
    swift_willThrow();

    sub_10013B1E8(v111, &unk_1003D20F0);
LABEL_31:
    swift_task_localValuePop();
  }

  v94 = v71;
  swift_beginAccess();
  *&v117 = _typeName(_:qualified:)();
  *(&v117 + 1) = v95;
  v96._countAndFlagsBits = 95;
  v96._object = 0xE100000000000000;
  String.append(_:)(v96);
  TaskLocal.get()();
  String.append(_:)(v116);

  v97 = v117;
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v99 = result;
    v100 = String._bridgeToObjectiveC()();
    [v99 takeKeepAliveTransaction:v100];

    v101 = type metadata accessor for TaskPriority();
    sub_100081DFC(v106, 1, 1, v101);
    v102 = swift_allocObject();
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = a10;
    *(v102 + 40) = v65;
    *(v102 + 48) = v94;
    *(v102 + 56) = v64;
    *(v102 + 64) = v97;

    v103 = v94;

    sub_100165CBC();

    sub_10013B1E8(v111, &unk_1003D20F0);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

id sub_1001E0FC0(uint64_t a1, void *a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v9 = 0;
  v6 = [swift_getObjCClassFromMetadata() bundleRecordWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v9];

  v7 = v9;
  if (!v6)
  {
    sub_10021A554();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

void sub_1001E10AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100219F2C();
  if (!v5 & v4)
  {
    isa = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_4;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  if (a3)
  {
LABEL_4:
    _convertErrorToNSError(_:)();
  }

LABEL_6:
  v7 = sub_1001073F0();
  v10 = v8;
  v9(v7);
}

uint64_t sub_1001E113C(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_100080FB4(&qword_1003D2890);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001E120C, v2, 0);
}

uint64_t sub_1001E1730()
{
  sub_10008BE9C();
  v1 = *(v0 + 104);
  *(v0 + 160) = sub_10019D99C();

  return _swift_task_switch(sub_1001E179C, v1, 0);
}

uint64_t sub_1001E179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10013BAC0();
  sub_1000EDA60();
  v19 = sub_10021A6FC();
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v16;
  v19[5] = v13;
  (*(v17 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v14);
  sub_10021A958();

  sub_100098AC4();
  sub_1001240F8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1001E1860()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E1974()
{
  sub_10008BE9C();
  sub_10021A1A8();
  sub_1002194F0(v0);
  v1 = qword_1003CBD88;

  if (v1 != -1)
  {
    v2 = sub_100123AE8();
  }

  v3 = sub_1002194BC(v2, qword_1003CE6A0);

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E1BCC()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E1EB0(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_100080FB4(&unk_1003D2840);
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();

  return _swift_task_switch(sub_1001E1F80, v2, 0);
}

uint64_t sub_1001E24A4()
{
  sub_10008BE9C();
  v1 = *(v0 + 104);
  *(v0 + 160) = sub_10019D99C();

  return _swift_task_switch(sub_1001E2510, v1, 0);
}

uint64_t sub_1001E2510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10013BAC0();
  sub_1000EDA60();
  v19 = sub_10021A6FC();
  v19[2] = v15;
  v19[3] = v18;
  v19[4] = v16;
  v19[5] = v13;
  (*(v17 + 104))(v12, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v14);
  sub_10021A958();

  sub_100098AC4();
  sub_1001240F8();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1001E25D4()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 176) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E26E8()
{
  sub_10008BE9C();
  sub_10021A1A8();
  sub_1002194F0(v0);
  v1 = qword_1003CBD88;

  if (v1 != -1)
  {
    v2 = sub_100123AE8();
  }

  v3 = sub_1002194A0(v2, qword_1003CE6A0);

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E2940()
{
  sub_100098BB4();
  sub_1000C4440();
  sub_1000AFE64();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 192) = v0;

  sub_1000C4434();
  sub_1000C4428();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E2C24(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v7 = type metadata accessor for SubscriptionStatusQuery(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100080FB4(&qword_1003D2898);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_100081DFC(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_100219094(a3, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v27 + 80) + v19 + 8) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v18, v13, v9);
  v22 = v28;
  *(v21 + v19) = v28;
  sub_100218508(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v23 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  v25 = v22;

  sub_100165CBC();
}

uint64_t sub_1001E2EF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v28 = a2;
  v7 = type metadata accessor for TransactionQuery(0);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  __chkstk_darwin(v7 - 8);
  v9 = sub_100080FB4(&qword_1003CCBD8);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v14 - 8);
  v16 = &v27 - v15;
  v17 = type metadata accessor for TaskPriority();
  sub_100081DFC(v16, 1, 1, v17);
  (*(v10 + 16))(v13, a1, v9);
  sub_100219094(a3, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v19 = (v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v27 + 80) + v19 + 8) & ~*(v27 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  (*(v10 + 32))(v21 + v18, v13, v9);
  v22 = v28;
  *(v21 + v19) = v28;
  sub_100218508(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20);
  v23 = (v21 + ((v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  v24 = v30;
  *v23 = v29;
  v23[1] = v24;
  v25 = v22;

  sub_100165CBC();
}

uint64_t sub_1001E31C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100080FB4(&qword_1003D2898);
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v11 = *(type metadata accessor for SubscriptionStatusQuery(0) - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001E3300, 0, 0);
}

uint64_t sub_1001E3444()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E3544()
{
  sub_100098BB4();
  AsyncStream.Continuation.finish()();

  sub_100098AC4();

  return v0();
}

uint64_t sub_1001E35C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_100080FB4(&qword_1003CCBD8);
  v8[7] = v9;
  v10 = *(v9 - 8);
  v8[8] = v10;
  v8[9] = *(v10 + 64);
  v8[10] = swift_task_alloc();
  v11 = *(type metadata accessor for TransactionQuery(0) - 8);
  v8[11] = v11;
  v8[12] = *(v11 + 64);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_1001E36FC, 0, 0);
}

uint64_t sub_1001E3840()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

void sub_1001E3940(void *a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v35 = a5;
  v9 = sub_100080FB4(&qword_1003D2898);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v32 - v11;
  v13 = type metadata accessor for SubscriptionStatusQuery.Kind(0);
  __chkstk_darwin(v13);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  isEscapingClosureAtFileLocation = [a1 connection];
  v17 = type metadata accessor for SubscriptionStatusQuery(0);
  sub_100219094(a2 + *(v17 + 24), v15);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_7;
    case 2u:
      goto LABEL_4;
    case 3u:
      sub_100080FB4(&unk_1003D28A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1002ED2A0;
      sub_10008E5A4(0, &qword_1003CCBB8);
      v39 = &type metadata for String;
      aBlock = a3;
      v37 = a4;
      v33 = a4;

      *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &aBlock);
      sub_10008E5A4(0, &unk_1003D28B0);
      sub_10018EE04(inited);

      v28 = sub_10018F08C();
      _s24SubscriptionStatusEntityCMa();
      v29 = [swift_getObjCClassFromMetadata() queryOnConnection:isEscapingClosureAtFileLocation predicate:v28];

      v42 = 0;
      (*(v10 + 16))(v12, v35, v9);
      v15 = ((*(v10 + 80) + 56) & ~*(v10 + 80));
      a4 = swift_allocObject();
      *(a4 + 16) = isEscapingClosureAtFileLocation;
      *(a4 + 24) = a3;
      *(a4 + 32) = v33;
      *(a4 + 40) = 0;
      *(a4 + 48) = &v42;
      (*(v10 + 32))(v15 + a4, v12, v9);
      v30 = swift_allocObject();
      *(v30 + 16) = sub_10021917C;
      *(v30 + 24) = a4;
      v40 = sub_1000DC764;
      v41 = v30;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100223D74;
      v39 = &unk_100390D50;
      a3 = _Block_copy(&aBlock);

      v31 = isEscapingClosureAtFileLocation;

      [v29 enumeratePersistentIDsUsingBlock:a3];

      _Block_release(a3);
      LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

      if (v29)
      {
        __break(1u);
LABEL_7:
        sub_100242F54(a3, a4, isEscapingClosureAtFileLocation, *v15, v15[1], v35);
      }

      return;
    default:
      v18 = *v15;
      v34 = v15[1];
      v19 = a4;
      v20 = sub_100243798(a3, a4, 0, 0, v18, v34);
      _s24SubscriptionStatusEntityCMa();
      v15 = [swift_getObjCClassFromMetadata() queryOnConnection:isEscapingClosureAtFileLocation predicate:v20];

      v42 = 0;
      (*(v10 + 16))(v12, v35, v9);
      v21 = (*(v10 + 80) + 56) & ~*(v10 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = isEscapingClosureAtFileLocation;
      *(v22 + 24) = a3;
      *(v22 + 32) = v19;
      *(v22 + 40) = 1;
      *(v22 + 48) = &v42;
      (*(v10 + 32))(v22 + v21, v12, v9);
      v23 = swift_allocObject();
      *(v23 + 16) = sub_100218F2C;
      *(v23 + 24) = v22;
      v40 = sub_1000DC764;
      v41 = v23;
      aBlock = _NSConcreteStackBlock;
      v37 = 1107296256;
      v38 = sub_100223D74;
      v39 = &unk_100390CD8;
      v24 = _Block_copy(&aBlock);

      v25 = isEscapingClosureAtFileLocation;

      [v15 enumeratePersistentIDsUsingBlock:v24];

      _Block_release(v24);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_4:

      v26 = type metadata accessor for Date();
      (*(*(v26 - 8) + 8))(v15, v26);
      return;
  }
}

void sub_1001E3FC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a5;
  v7 = sub_100080FB4(&qword_1003CCBD8);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - v9;
  v11 = type metadata accessor for TransactionQuery.Kind(0);
  __chkstk_darwin(v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 connection];
  v15 = type metadata accessor for TransactionQuery(0);
  sub_100219094(a2 + *(v15 + 24), v13);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_10008EB30();
      goto LABEL_8;
    case 2u:
      sub_10008ED78();
LABEL_8:

      goto LABEL_10;
    case 3u:

      v25 = type metadata accessor for Date();
      (*(*(v25 - 8) + 8))(v13, v25);
      return;
    case 4u:
      sub_10008EB30();
      goto LABEL_10;
    case 5u:
      sub_10008F018();
LABEL_10:

      break;
    default:
      v26[1] = *(v13 + 1);
      sub_10008F538();
      v17 = v16;
      v29 = &_swiftEmptySetSingleton;
      v18 = v27;
      (*(v8 + 16))(v10, v27, v7);
      v19 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v14;
      *(v20 + 24) = &v29;
      (*(v8 + 32))(v20 + v19, v10, v7);
      v21 = swift_allocObject();
      *(v21 + 16) = sub_10021843C;
      *(v21 + 24) = v20;
      aBlock[4] = sub_1000939AC;
      aBlock[5] = v21;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100223D74;
      aBlock[3] = &unk_100390BE8;
      v22 = _Block_copy(aBlock);
      v23 = v14;

      [v17 enumeratePersistentIDsUsingBlock:v22];
      _Block_release(v22);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

      if (v22)
      {
        __break(1u);
        JUMPOUT(0x1001E444CLL);
      }

      __chkstk_darwin(v24);
      v26[-2] = &v29;
      v26[-1] = v18;
      sub_1000905E0();

      break;
  }
}

uint64_t sub_1001E4464(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[7] = v8;
  *v8 = v7;
  v8[1] = sub_1001E455C;

  return (v10)(v7 + 2, v7 + 4);
}

uint64_t sub_1001E455C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E4658()
{
  sub_1000B0004();
  v8 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v5 = v0[2];
  v6 = v2;
  v7 = 0;
  sub_1000BC808(v5, v2);
  v1(&v5, &v7);
  sub_1000BC8B4(v5, v6);
  sub_10008E168(v0[2], v0[3]);
  sub_100098AC4();

  return v3();
}

uint64_t sub_1001E46E4()
{
  sub_1000B0004();
  v7 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  v5 = xmmword_1002F0420;
  v6 = v2;
  v1(&v5, &v6);

  sub_1000BC8B4(v5, *(&v5 + 1));
  sub_100098AC4();

  return v3();
}

uint64_t sub_1001E4774(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[6] = v8;
  *v8 = v7;
  v8[1] = sub_1001E486C;

  return (v10)(v7 + 2, v7 + 3);
}

uint64_t sub_1001E486C()
{
  sub_10008BE9C();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001E4968()
{
  sub_10008BE9C();
  v5 = v0;
  v1 = *(v0 + 32);
  v4 = 0;
  v1(&v4);
  sub_100098AC4();

  return v2();
}

uint64_t sub_1001E49CC()
{
  sub_100098BB4();
  v5 = v0;
  v1 = *(v0 + 32);
  v4 = *(v0 + 24);
  v1(&v4);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001E4A44(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v10 = (a4 + *a4);
  v8 = swift_task_alloc();
  v7[5] = v8;
  *v8 = v7;
  v8[1] = sub_1001E4B34;

  return v10();
}

uint64_t sub_1001E4B34()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E4C30()
{
  sub_10008BE9C();
  v5 = v0;
  v1 = *(v0 + 24);
  v4 = 0;
  v1(&v4);
  sub_100098AC4();

  return v2();
}

uint64_t sub_1001E4C94()
{
  sub_100098BB4();
  v5 = v0;
  v1 = *(v0 + 24);
  v4 = *(v0 + 16);
  v1(&v4);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001E4D0C()
{
  sub_100098BB4();
  v2 = v1;
  *(v0 + 6) = v3;
  *(v0 + 7) = v1;
  *(v0 + 5) = v4;
  v9 = (v5 + *v5);
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 8) = v6;
  *v6 = v7;
  v6[1] = sub_1001E4E0C;

  return v9(v0 + 81, v2);
}

uint64_t sub_1001E4E0C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001E4F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1000EDB48();
  a19 = v22;
  a20 = v23;
  sub_1000EDA60();
  a18 = v20;
  *(v20 + 80) = *(v20 + 81);
  v24 = *(v20 + 72);
  type metadata accessor for JSONEncoder();
  sub_10021A330();
  JSONEncoder.init()();
  sub_100187A4C();
  v25 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v24)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v27 = type metadata accessor for SKLogger();
    sub_10021AEC0(v27, qword_1003F26C8);
    a9 = 0;
    a10 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);
    v28 = a10;
    *(v20 + 16) = a9;
    *(v20 + 24) = v28;
    sub_1000B00A8();
    v29._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v29);
    v30._countAndFlagsBits = _typeName(_:qualified:)();
    String.append(_:)(v30);

    v31._countAndFlagsBits = 32;
    v31._object = 0xE100000000000000;
    String.append(_:)(v31);
    *(v20 + 32) = v24;
    sub_100080FB4(&qword_1003CCCB0);
    sub_100123E30();
    _print_unlocked<A, B>(_:_:)();
    v33 = *(v20 + 16);
    v32 = *(v20 + 24);
    v34 = static os_log_type_t.error.getter();

    Logger.logObject.getter();
    sub_1000EDD18();

    if (os_log_type_enabled(v21, v34))
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1002195CC();
      v35 = swift_slowAlloc();
      a9 = v35;
      *v21 = 136446466;
      *(v21 + 4) = sub_100093CF0(v35, v36, &a9);
      sub_1000B009C();
      sub_100080210(v33, v32, &a9);
      sub_10021A85C();
      *(v21 + 14) = v33;
      sub_1002199A4();
      _os_log_impl(v37, v38, v39, v40, v41, v42);
      sub_100098BC0();
      sub_1000B7D58();

      sub_100219550();
    }

    else
    {
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    swift_allocError();
    *v47 = 7;
    swift_willThrow();

    v48 = *(v20 + 56);

    sub_100098AC4();
  }

  else
  {
    v43 = v25;
    v44 = v26;
    v45 = *(v20 + 56);
    v46 = *(v20 + 40);

    *v46 = v43;
    v46[1] = v44;

    sub_100098AA4();
  }

  sub_1000EDB60();

  return v50(v49, v50, v51, v52, v53, v54, v55, v56, a9, a10, a11, a12);
}

uint64_t sub_1001E51BC()
{
  sub_10008BE9C();
  v1 = *(v0 + 56);

  sub_100098AC4();

  return v2();
}

uint64_t sub_1001E521C()
{
  sub_10008BE9C();
  v0[5] = v1;
  v0[6] = v2;
  v3 = sub_100080FB4(&qword_1003CCEE8);
  sub_1000B01B0(v3);
  v0[7] = sub_1000B05D0();
  v4 = type metadata accessor for Client.Server(0);
  sub_1000B01B0(v4);
  v0[8] = sub_1000B05D0();
  v5 = sub_10009F0B8();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_1001E5458()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E553C()
{
  sub_1000B072C();
  sub_1000B0004();
  v1 = *(v0 + 56);
  v2 = type metadata accessor for StorefrontInternal();
  sub_1001B5430(v1, 1, v2);
  if (v3)
  {
    sub_10013B1E8(v1, &qword_1003CCEE8);
    v5 = 0;
    v4 = 0;
  }

  else
  {
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);

    sub_100219EA8();
    sub_1002190EC();
  }

  v6 = *(v0 + 72);
  v7 = &v6[OBJC_IVAR____TtC9storekitd28StoreKitServiceErrorMetadata_storefrontCountryCode];
  *v7 = v5;
  *(v7 + 1) = v4;

  v8 = _convertErrorToNSError(_:)();
  [v8 toASDErrorWithMetadata:v6];

  sub_10009F198();
  sub_1000B0718();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1001E565C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 56) = v15;
  *(v8 + 40) = v14;
  *(v8 + 24) = a7;
  *(v8 + 32) = a8;
  *(v8 + 16) = a6;
  v12 = (a4 + *a4);
  v10 = swift_task_alloc();
  *(v8 + 64) = v10;
  *v10 = v8;
  v10[1] = sub_1001E5770;

  return v12(a6);
}

uint64_t sub_1001E5770()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = swift_task_alloc();
    *(v3 + 80) = v7;
    *v7 = v5;
    sub_10021972C(v7);

    return sub_1001E521C();
  }

  else
  {
    sub_1002195FC();

    return _swift_task_switch(v9, v10, v11);
  }
}

id sub_1001E58C4()
{
  sub_10008BE9C();
  v1 = *(v0 + 32);
  (*(v0 + 24))(0);
  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9E0(result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E5954()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 88) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

id sub_1001E5A3C()
{
  sub_100098BB4();
  v1 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 88));

  result = [objc_opt_self() globalStore];
  if (result)
  {
    sub_10021A9E0(result);

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E5AEC(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1001E5BF4;

  return v12(a1, a2);
}

uint64_t sub_1001E5BF4()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = swift_task_alloc();
    *(v3 + 64) = v7;
    *v7 = v5;
    sub_10021972C(v7);

    return sub_1001E521C();
  }

  else
  {
    sub_1002195FC();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_1001E5D48()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E5E30(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  v7[6] = v10;
  *v10 = v7;
  v10[1] = sub_1001E5F38;

  return v12(a1, a2);
}

uint64_t sub_1001E5F38()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    v7 = swift_task_alloc();
    *(v3 + 64) = v7;
    *v7 = v5;
    sub_10021972C(v7);

    return sub_1001E521C();
  }

  else
  {
    sub_1002195FC();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_1001E608C()
{
  sub_10008BE9C();
  (*(v0 + 24))(0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_1001E60EC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001E61D4()
{
  sub_100098BB4();
  (*(v0 + 24))(*(v0 + 72));

  sub_100098AC4();

  return v1();
}

uint64_t sub_1001E6254()
{
  sub_10008BE9C();
  sub_100219988(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = type metadata accessor for ClientTypeRequest();
  sub_1000B01B0(v9);
  *(v0 + 80) = sub_1000B05D0();
  *(v0 + 88) = swift_projectBox();
  v10 = sub_10009F0B8();
  return sub_100219B28(v10, v11, v12);
}

uint64_t sub_1001E62C8()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E6390()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E649C()
{
  sub_10008BE9C();
  sub_100219988(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = type metadata accessor for ProcessPurchaseResultRequest();
  sub_1000B01B0(v9);
  *(v0 + 80) = sub_1000B05D0();
  *(v0 + 88) = swift_projectBox();
  v10 = sub_10009F0B8();
  return sub_100219B28(v10, v11, v12);
}

uint64_t sub_1001E6510()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E65D8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E66E4()
{
  sub_10008BE9C();
  sub_100219988(v1, v2, v3, v4, v5, v6, v7, v8);
  v9 = type metadata accessor for PerformPurchaseRequest();
  sub_1000B01B0(v9);
  *(v0 + 80) = sub_1000B05D0();
  *(v0 + 88) = swift_projectBox();
  v10 = sub_10009F0B8();
  return sub_100219B28(v10, v11, v12);
}

uint64_t sub_1001E6758()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E6820()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E692C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[12] = a8;
  v9[13] = a9;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v10 = sub_10009F0B8();
  return sub_100219B28(v10, v11, v12);
}

uint64_t sub_1001E6960()
{
  sub_100098BB4();
  v1 = *(v0 + 88);
  sub_1002199B4();
  swift_beginAccess();
  sub_10021A480();
  sub_100219570();
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = sub_10021AC48(v3);
  *v4 = v5;
  v4[1] = sub_1001E6A38;
  v6 = sub_1000B06F4(*(v0 + 80));

  return v8(v6, v1);
}

uint64_t sub_1001E6A38()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_1001E6B38()
{
  sub_10008BE9C();
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v1 = result;
    v2 = String._bridgeToObjectiveC()();
    sub_10021AA78(v2, "releaseKeepAliveTransaction:");

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E6BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[12] = a8;
  v9[13] = a9;
  v9[10] = a6;
  v9[11] = a7;
  v9[8] = a4;
  v9[9] = a5;
  v10 = sub_10009F0B8();
  return sub_100219B28(v10, v11, v12);
}

uint64_t sub_1001E6C08()
{
  sub_100098BB4();
  v1 = *(v0 + 88);
  sub_1002199B4();
  swift_beginAccess();
  sub_10021A480();
  sub_100219570();
  v8 = v2;
  v3 = swift_task_alloc();
  v4 = sub_10021AC48(v3);
  *v4 = v5;
  v4[1] = sub_1001E6CE0;
  v6 = sub_1000B06F4(*(v0 + 80));

  return v8(v6, v1);
}

uint64_t sub_1001E6CE0()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E6DE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for SubscriptionStatusQuery(0);
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E6E90, 0, 0);
}

uint64_t sub_1001E6E90()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E6F58()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E7064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for TransactionQuery(0);
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E7114, 0, 0);
}

uint64_t sub_1001E7114()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E71DC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E72E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for ExternalGatewayRequest();
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E7398, 0, 0);
}

uint64_t sub_1001E7398()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E7460()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_1001E756C()
{
  sub_100098BB4();
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v1 = result;
    v2 = String._bridgeToObjectiveC()();
    [v1 releaseKeepAliveTransaction:v2];

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001E7624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for FinishTransactionTask();
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E76D4, 0, 0);
}

uint64_t sub_1001E76D4()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E779C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E78A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for LegacyRestoreCompletedTransactionsTask();
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E7958, 0, 0);
}

uint64_t sub_1001E7958()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E7A20()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E7B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a8;
  v8[9] = v11;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  type metadata accessor for LegacyUnfinishedTransactionsTask();
  v8[10] = swift_task_alloc();
  v8[11] = swift_projectBox();

  return _swift_task_switch(sub_1001E7BDC, 0, 0);
}

uint64_t sub_1001E7BDC()
{
  sub_100098BB4();
  sub_1002195A4();
  sub_100219CC8();
  sub_100219358();
  v0 = swift_task_alloc();
  v1 = sub_10012405C(v0);
  *v1 = v2;
  v3 = sub_10021945C(v1);

  return v4(v3);
}

uint64_t sub_1001E7CA4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_10021A5C4();
  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E7DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a8;
  v8[14] = v10;
  v8[11] = a6;
  v8[12] = a7;
  v8[9] = a4;
  v8[10] = a5;
  return _swift_task_switch(sub_1001E7DE0, 0, 0);
}

uint64_t sub_1001E7DE0()
{
  sub_100098BB4();
  v1 = *(v0 + 96);
  sub_1002199B4();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  *(v0 + 120) = v2;
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;
  *(v0 + 32) = v4;
  *(v0 + 40) = v5;

  sub_100219570();
  v10 = v6;
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_1001E7EDC;
  v8 = sub_1000B06F4(*(v0 + 88));

  return v10(v8, v0 + 16);
}

uint64_t sub_1001E7EDC()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

id sub_1001E7FDC()
{
  sub_10008BE9C();
  result = [objc_opt_self() globalStore];
  if (result)
  {
    v1 = result;
    v2 = String._bridgeToObjectiveC()();
    sub_10021AA78(v2, "releaseKeepAliveTransaction:");

    sub_100098AC4();

    return v3();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1001E8078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void, void))
{
  sub_10008B5E0();
  swift_allocError();
  *v7 = 9;
  v8 = _convertErrorToNSError(_:)();
  (a6)[2](a6, v8);

  _Block_release(a6);
}

uint64_t StoreKitServiceConnection.executeAppTransactionQuery(_:withReceiver:ignoreCache:reply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  sub_10008B5E0();
  sub_1000ED9E4();
  swift_allocError();
  *v6 = 9;
  a5();
}

void sub_1001E8240(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = swift_allocObject();
  v10[2] = &unk_1002FAEC8;
  v10[3] = v9;
  v10[4] = sub_100219348;
  v10[5] = v8;
  v10[6] = a4;
  v11 = type metadata accessor for SubscriptionStatusQuery(0);
  v12 = swift_allocBox();
  v14 = v13;
  v20 = a5;
  _Block_copy(a5);
  swift_unknownObjectRetain();

  v15 = a4;
  sub_1000EAE38();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v16 = qword_1003F2700;
  v17 = (v14 + *(v11 + 32));
  v19 = *v17;
  v18 = v17[1];

  sub_1001DBDFC(v19, v18, 0xD000000000000029, 0x80000001003173B0, 150, v16, 0xD000000000000035, 0x800000010031DE80, v12, &unk_1002FAED0, v10, &qword_1003D2850, &unk_1002FB040, type metadata accessor for SubscriptionStatusQuery, &off_100391B58, type metadata accessor for SubscriptionStatusQuery, sub_100242D34, type metadata accessor for SubscriptionStatusQuery, type metadata accessor for SubscriptionStatusQuery, type metadata accessor for SubscriptionStatusQuery, &unk_1003D2858, type metadata accessor for SubscriptionStatusQuery, &unk_1002FBABC, &unk_100390C20, &unk_1002FB050);

  _Block_release(v20);
}

uint64_t StoreKitServiceConnection.executeSubscriptionStatusQuery(_:withReceiver:reply:)()
{
  sub_10021A7CC();
  sub_1001077A8();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  sub_1000EDD24();
  v6 = swift_allocObject();
  v6[2] = &unk_1002FAB90;
  v6[3] = v5;
  v7 = sub_10021AB5C(v6);
  type metadata accessor for SubscriptionStatusQuery(v7);
  swift_allocBox();
  sub_100219AFC();
  swift_unknownObjectRetain();

  v8 = v1;
  sub_1000EDD04();
  sub_1000EAE38();
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v15 = sub_10021AC30();
    v19(v15);

    sub_10021A740();
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    sub_10021AA18();

    sub_10021A420(v9, v10, v11, v4 | 0x8000000000000000, v12, v13, 0xD000000000000035, v14, v3, &unk_1002FABA0, v6, &qword_1003D2850, &unk_1002FB040, type metadata accessor for SubscriptionStatusQuery, &off_100391B58, type metadata accessor for SubscriptionStatusQuery, sub_100242D34, type metadata accessor for SubscriptionStatusQuery, type metadata accessor for SubscriptionStatusQuery, type metadata accessor for SubscriptionStatusQuery, &unk_1003D2858, type metadata accessor for SubscriptionStatusQuery, &unk_1002FBABC, &unk_100390C20, &unk_1002FB050);

    sub_10021A740();
  }
}

uint64_t sub_1001E8888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[18] = a2;
  v3[19] = a3;
  v3[17] = a1;
  v4 = sub_100080FB4(&qword_1003D2860);
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_100080FB4(&qword_1003D2868);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();

  return _swift_task_switch(sub_1001E89C0, 0, 0);
}

uint64_t sub_1001E8CD0()
{
  sub_1000B0004();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_100098AB4();
  *v5 = v4;
  v6 = *v0;
  *v5 = *v0;
  *(v4 + 216) = v2;

  v7 = sub_1000C4600();
  *(v4 + 224) = v7;
  *v7 = v6;
  v7[1] = sub_1001E8E2C;
  v8 = *(v3 + 200);
  v9 = *(v3 + 144);

  return v11(v8, v9);
}

uint64_t sub_1001E8E2C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E8F10()
{
  sub_10008BE9C();
  AsyncStream.makeAsyncIterator()();
  *(v0 + 232) = 0;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 240) = v1;
  *v1 = v2;
  sub_100219C34(v1);
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1001E8F9C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001E9080()
{
  v32 = v0;
  v1 = v0[2];
  if (!v0[3])
  {
    v16 = v0[19];
    (*(v0[21] + 8))(v0[22], v0[20]);
    [v16 receivedStatusGroups:0];

    v17 = sub_1000C43E8();
    v18(v17);

    sub_100098AA4();
    sub_10009F1B8();

    __asm { BRAA            X1, X16 }
  }

  v2 = v0[29];
  v29 = *(v0 + 3);
  type metadata accessor for JSONEncoder();
  sub_10021A330();
  JSONEncoder.init()();
  sub_100080FB4(&qword_1003D2870);
  sub_1000EDD24();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1002ED290;
  *(v3 + 32) = v1;
  *(v3 + 40) = v29;
  v0[15] = v3;
  sub_100080FB4(&qword_1003D2878);
  sub_1002186EC();
  dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v2)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v4 = type metadata accessor for SKLogger();
    sub_10021AEC0(v4, qword_1003F26C8);
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    _StringGuts.grow(_:)(40);
    v5 = v0[8];
    v0[5] = v0[7];
    v0[6] = v5;
    v6._object = 0x800000010031F5A0;
    v6._countAndFlagsBits = 0xD000000000000026;
    String.append(_:)(v6);
    v0[16] = v2;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v7 = v0[6];
    v30 = v0[5];
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    TaskLocal.get()();
    v8 = static os_log_type_t.error.getter();

    v9 = Logger.logObject.getter();

    if (os_log_type_enabled(v9, v8))
    {
      sub_1000B7DC8();
      v10 = swift_slowAlloc();
      sub_1000B7DBC();
      v31[0] = swift_slowAlloc();
      *v10 = 136446466;
      sub_10009F0F8();
      v0[11] = v11;
      v0[12] = v12;
      v13._countAndFlagsBits = sub_1001B5488();
      String.append(_:)(v13);
      v14._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v14);
      v15 = v0[12];
      sub_100080210(v0[11], v15, v31);
      sub_100219CE4();

      *(v10 + 4) = v8;
      *(v10 + 12) = 2082;
      sub_100080210(v30, v7, v31);
      sub_10021A2E8();

      *(v10 + 14) = v15;
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
      sub_10021A594();
      swift_arrayDestroy();
      sub_1001B5198();

      sub_1000B7D68();
    }

    else
    {
    }
  }

  else
  {
    v21 = v0[19];

    sub_100219CF0();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v21 receivedStatusGroups:isa];

    v23 = sub_100219CF0();
    sub_10008E168(v23, v24);
  }

  v0[29] = 0;
  swift_task_alloc();
  sub_1000F2F10();
  v0[30] = v25;
  *v25 = v26;
  sub_100219C34();
  sub_100219934();
  sub_100098AD0();
  sub_10009F1B8();

  return AsyncStream.Iterator.next(isolation:)();
}

uint64_t sub_1001E94E0()
{
  swift_unknownObjectRelease();
  sub_1001077A8();

  return _swift_deallocObject(v0, v1, v2);
}

uint64_t sub_1001E9514()
{
  sub_100098BB4();
  sub_100219894();
  v1 = swift_task_alloc();
  v2 = sub_1000B00E0(v1);
  *v2 = v3;
  v4 = sub_10021948C(v2);

  return sub_1001E8888(v4, v5, v0);
}

uint64_t sub_1001E95A4()
{
  sub_1000B0780();
  sub_1000B02BC();
  sub_1000ED800();
  v0 = swift_task_alloc();
  v1 = sub_1000B00E0(v0);
  *v1 = v2;
  sub_1000ED6D8(v1);
  sub_1000B0604();

  return sub_1001E5AEC(v3, v4, v5, v6, v7, v8, v9);
}

void sub_1001E9648(uint64_t a1)
{
  if (a1)
  {
    _convertErrorToNSError(_:)();
  }

  v1 = sub_10021A5A0();
  v4 = v2;
  v3(v1);
}

void StoreKitServiceConnection.authenticateAndSyncTransactionsAndStatus(reply:)()
{
  sub_100093D08();
  v5 = v4;
  v7 = v6;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v10 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v10);
  sub_100089118();
  __chkstk_darwin(v11);
  sub_100089230();
  sub_1000C446C();
  v48 = v12;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_10007EDA4(v13, qword_1003F26C8);
  sub_1001CA63C();
  v15 = v14;
  v17 = v16;

  static os_log_type_t.default.getter();
  sub_10021A8B0();
  Logger.logObject.getter();
  sub_10021A85C();
  if (os_log_type_enabled(v3, v2))
  {
    sub_1000B7DC8();
    v0 = swift_slowAlloc();
    sub_1000B7DBC();
    v18 = swift_slowAlloc();
    *v0 = 136446466;
    sub_100106B4C(v18);
    v19._countAndFlagsBits = v15;
    v19._object = v17;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v20);
    sub_100219A70();
    v15 = v7;
    sub_100219D4C();

    *(v0 + 4) = v5;
    sub_100219E3C();
    *(v0 + 14) = sub_100080210(0xD000000000000030, v48, &v51);
    sub_10021A5AC(&_mh_execute_header, v3, v2, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if (![objc_opt_self() currentConnection])
  {

    static os_log_type_t.error.getter();
    sub_10021A8B0();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v28 = swift_slowAlloc();
      sub_1000B7DBC();
      v29 = swift_slowAlloc();
      *v28 = 136446466;
      sub_100106B4C(v29);
      sub_10021ADE8();
      v30._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v30);
      sub_100219A70();
      sub_1000B0494();
      *(v28 + 4) = v3;
      sub_100219E3C();
      sub_10021A244();
      *(v28 + 14) = sub_100080210(v31, v32, &v51);
      sub_10021A348(&_mh_execute_header, v33, v34, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v35 = swift_allocError();
    sub_1002195EC(v35, v36);
    v7();

    goto LABEL_14;
  }

  v21 = sub_1000B06A8();
  type metadata accessor for Client(v21);
  v22 = sub_1001B52B0();
  type metadata accessor for ClientOverride(v22);
  sub_1000B0690();
  sub_100081DFC(v23, v24, v25, v26);
  v27 = v0;
  sub_1001ABF2C();
  sub_10013B8D4();

  sub_10021A500(48);
  sub_10021ADE8();
  if ([objc_opt_self() globalStore])
  {
    v38 = sub_1002199C0();
    sub_1000C6F80(v38, v50, v2);

    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v39 = v0;
    sub_10021A16C();

    v40 = v1;
    sub_1001B55FC();

    swift_task_localValuePush();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v41, v42, v43, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = &unk_1002FABA8;
    v45[5] = 0;
    v45[6] = v0;
    v45[7] = v7;
    v45[8] = v5;
    v45[9] = v2;
    v45[10] = v49;
    v45[11] = v50;
    v46 = v0;
    sub_10021A16C();

    v47 = v2;
    sub_10001E104();

    sub_1001C5454();
    sub_100165CBC();
    swift_task_localValuePop();

    swift_bridgeObjectRelease_n();

LABEL_14:
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_1001E9ED8()
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
  *(v4 + 88) = v2;

  v8 = swift_task_alloc();
  *(v4 + 96) = v8;
  *v8 = v6;
  sub_1000B00B4(v8);

  return sub_10010A52C();
}

uint64_t sub_1001E9FEC()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 104) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001EA0E4()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v0();
}

void sub_1001EA388(void *a1, void (**a2)(void, void))
{
  v51 = a1;
  v3 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v3 - 8);
  v52 = &v50 - v4;
  v5 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v50 - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  v53 = 0x800000010031DF50;
  v55 = a2;
  _Block_copy(a2);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for SKLogger();
  sub_10007EDA4(v9, qword_1003F26C8);
  sub_1001CA63C();
  v11 = v10;
  v13 = v12;

  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  v16 = os_log_type_enabled(v15, v14);
  v54 = v11;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v50 = v7;
    *v17 = 136446466;
    v56 = 91;
    v57 = 0xE100000000000000;
    v58 = v18;
    v19._countAndFlagsBits = v11;
    v19._object = v13;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21 = v8;
    v22 = sub_100080210(v56, v57, &v58);

    *(v17 + 4) = v22;
    v8 = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(0xD000000000000012, v53, &v58);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
    v7 = v50;
  }

  v23 = [objc_opt_self() currentConnection];
  if (!v23)
  {

    v27 = static os_log_type_t.error.getter();

    v28 = Logger.logObject.getter();

    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136446466;
      v56 = 91;
      v57 = 0xE100000000000000;
      v58 = v30;
      v31._countAndFlagsBits = v54;
      v31._object = v13;
      String.append(_:)(v31);
      v32._countAndFlagsBits = 8285;
      v32._object = 0xE200000000000000;
      String.append(_:)(v32);
      v33 = sub_100080210(v56, v57, &v58);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031DF70, &v58);
      _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v34 = 1;
    v35 = _convertErrorToNSError(_:)();
    (v55)[2](v55, v35);

    goto LABEL_14;
  }

  v24 = v23;
  type metadata accessor for Client(0);
  v25 = type metadata accessor for ClientOverride(0);
  sub_100081DFC(v7, 1, 1, v25);
  v26 = v24;
  sub_1001ABF2C();
  v37 = v36;

  v56 = 0xD000000000000012;
  v57 = v53;
  v38._countAndFlagsBits = 95;
  v38._object = 0xE100000000000000;
  String.append(_:)(v38);
  v39._countAndFlagsBits = v54;
  v39._object = v13;
  String.append(_:)(v39);
  v41 = v56;
  v40 = v57;
  v42 = [objc_opt_self() globalStore];
  if (v42)
  {
    v43 = v42;
    sub_1000C6F80(v41, v40, v42);

    if (qword_1003CBE98 != -1)
    {
      swift_once();
    }

    v56 = v54;
    v57 = v13;

    v44 = v37;

    v45 = v51;

    swift_task_localValuePush();
    v46 = type metadata accessor for TaskPriority();
    sub_100081DFC(v52, 1, 1, v46);
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = &unk_1002FABC0;
    v47[5] = 0;
    v47[6] = v44;
    v47[7] = sub_100219348;
    v47[8] = v8;
    v47[9] = v45;
    v47[10] = v41;
    v47[11] = v40;
    v48 = v44;

    v49 = v45;

    sub_100165CBC();
    swift_task_localValuePop();

    swift_bridgeObjectRelease_n();

LABEL_14:
    _Block_release(v55);
    return;
  }

  _Block_release(v55);
  __break(1u);
}

void StoreKitServiceConnection.clearCache(reply:)()
{
  sub_100093D08();
  v5 = v4;
  v7 = v6;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v8);
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  v10 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v10);
  sub_100089118();
  __chkstk_darwin(v11);
  sub_100089230();
  sub_1000C446C();
  v48 = v12;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_10007EDA4(v13, qword_1003F26C8);
  sub_1001CA63C();
  v15 = v14;
  v17 = v16;

  static os_log_type_t.default.getter();
  sub_10021A8B0();
  Logger.logObject.getter();
  sub_10021A85C();
  if (os_log_type_enabled(v3, v2))
  {
    sub_1000B7DC8();
    v0 = swift_slowAlloc();
    sub_1000B7DBC();
    v18 = swift_slowAlloc();
    *v0 = 136446466;
    sub_100106B4C(v18);
    v19._countAndFlagsBits = v15;
    v19._object = v17;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v20);
    sub_100219A70();
    v15 = v7;
    sub_100219D4C();

    *(v0 + 4) = v5;
    sub_100219E3C();
    *(v0 + 14) = sub_100080210(0xD000000000000012, v48, &v51);
    sub_10021A5AC(&_mh_execute_header, v3, v2, "%{public}s%{public}s");
    sub_100106E34();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if (![objc_opt_self() currentConnection])
  {

    static os_log_type_t.error.getter();
    sub_10021A8B0();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (sub_10021A898())
    {
      sub_1000B7DC8();
      v28 = swift_slowAlloc();
      sub_1000B7DBC();
      v29 = swift_slowAlloc();
      *v28 = 136446466;
      sub_100106B4C(v29);
      sub_10021ADE8();
      v30._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v30);
      sub_100219A70();
      sub_1000B0494();
      *(v28 + 4) = v3;
      sub_100219E3C();
      sub_10021A244();
      *(v28 + 14) = sub_100080210(v31, v32, &v51);
      sub_10021A348(&_mh_execute_header, v33, v34, "%{public}s%{public}s");
      sub_100106E34();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v35 = swift_allocError();
    sub_1002195EC(v35, v36);
    v7();

    goto LABEL_14;
  }

  v21 = sub_1000B06A8();
  type metadata accessor for Client(v21);
  v22 = sub_1001B52B0();
  type metadata accessor for ClientOverride(v22);
  sub_1000B0690();
  sub_100081DFC(v23, v24, v25, v26);
  v27 = v0;
  sub_1001ABF2C();
  sub_10013B8D4();

  sub_10021A500(18);
  sub_10021ADE8();
  if ([objc_opt_self() globalStore])
  {
    v38 = sub_1002199C0();
    sub_1000C6F80(v38, v50, v2);

    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    v39 = v0;
    sub_10021A16C();

    v40 = v1;
    sub_1001B55FC();

    swift_task_localValuePush();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v41, v42, v43, v44);
    v45 = swift_allocObject();
    v45[2] = 0;
    v45[3] = 0;
    v45[4] = &unk_1002FABC0;
    v45[5] = 0;
    v45[6] = v0;
    v45[7] = v7;
    v45[8] = v5;
    v45[9] = v2;
    v45[10] = v49;
    v45[11] = v50;
    v46 = v0;
    sub_10021A16C();

    v47 = v2;
    sub_10001E104();

    sub_1001C5454();
    sub_100165CBC();
    swift_task_localValuePop();

    swift_bridgeObjectRelease_n();

LABEL_14:
    sub_100093CB8();
    return;
  }

  __break(1u);
}

uint64_t sub_1001EAFB0()
{
  sub_100098BB4();
  v1 = v0[2];
  type metadata accessor for TransactionCacheManager();
  sub_100080FB4(&unk_1003D2720);
  v2 = swift_allocObject();
  v0[3] = v2;
  *(v2 + 16) = xmmword_1002ED290;
  v3 = *(v1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);
  *(v2 + 32) = *(v1 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  *(v2 + 40) = v3;

  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  sub_1000B00B4(v4);

  return sub_100108970(v2);
}

uint64_t sub_1001EB0A4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  sub_100098AA4();

  return v3();
}

void sub_1001EB1B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, const void *a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = swift_allocObject();
  v10[2] = &unk_1002FAEB0;
  v10[3] = v9;
  v10[4] = sub_100219348;
  v10[5] = v8;
  v10[6] = a4;
  v11 = type metadata accessor for TransactionQuery(0);
  v12 = swift_allocBox();
  v14 = v13;
  v20 = a5;
  _Block_copy(a5);
  swift_unknownObjectRetain();

  v15 = a4;
  sub_1000EB05C();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v16 = qword_1003F2700;
  v17 = (v14 + *(v11 + 32));
  v19 = *v17;
  v18 = v17[1];

  sub_1001DBDFC(v19, v18, 0xD000000000000029, 0x80000001003173B0, 150, v16, 0xD00000000000002ELL, 0x800000010031DFA0, v12, &unk_1002FAEB8, v10, &qword_1003D2820, &unk_1002FB000, type metadata accessor for TransactionQuery, &off_100384E08, type metadata accessor for TransactionQuery, sub_10008E6A0, type metadata accessor for TransactionQuery, type metadata accessor for TransactionQuery, type metadata accessor for TransactionQuery, &unk_1003D2828, type metadata accessor for TransactionQuery, &unk_1002F1164, &unk_100390B30, &unk_1002FB010);

  _Block_release(v20);
}

uint64_t StoreKitServiceConnection.executeTransactionQuery(_:withReceiver:reply:)()
{
  sub_10021A7CC();
  sub_1001077A8();
  v5 = swift_allocObject();
  *(v5 + 16) = v0;
  sub_1000EDD24();
  v6 = swift_allocObject();
  v6[2] = &unk_1002FABE0;
  v6[3] = v5;
  v7 = sub_10021AB5C(v6);
  type metadata accessor for TransactionQuery(v7);
  swift_allocBox();
  sub_100219AFC();
  swift_unknownObjectRetain();

  v8 = v1;
  sub_1000EDD04();
  sub_1000EB05C();
  if (v2)
  {

    swift_deallocBox();
    swift_errorRetain();
    v15 = sub_10021AC30();
    v19(v15);

    sub_10021A740();
  }

  else
  {
    if (qword_1003CBE98 != -1)
    {
      sub_1000ED744();
      swift_once();
    }

    sub_10021AA18();

    sub_10021A420(v9, v10, v11, v4 | 0x8000000000000000, v12, v13, 0xD00000000000002ELL, v14, v3, &unk_1002FABF0, v6, &qword_1003D2820, &unk_1002FB000, type metadata accessor for TransactionQuery, &off_100384E08, type metadata accessor for TransactionQuery, sub_10008E6A0, type metadata accessor for TransactionQuery, type metadata accessor for TransactionQuery, type metadata accessor for TransactionQuery, &unk_1003D2828, type metadata accessor for TransactionQuery, &unk_1002F1164, &unk_100390B30, &unk_1002FB010);

    sub_10021A740();
  }
}

uint64_t sub_1001EB800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v5 = sub_100080FB4(&qword_1003D2830);
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v6 = sub_100080FB4(&qword_1003D2838);
  v3[9] = v6;
  v3[10] = *(v6 - 8);
  v3[11] = swift_task_alloc();
  type metadata accessor for TransactionCacheManager();
  v7 = swift_task_alloc();
  v3[12] = v7;
  *v7 = v3;
  v7[1] = sub_1001EB978;

  return sub_100108EE8(a1);
}

uint64_t sub_1001EB978()
{
  sub_1000B0004();
  v2 = v1;
  v3 = *v0;
  v4 = *v0;
  sub_100098AB4();
  *v5 = v4;
  v6 = *v0;
  *v5 = *v0;
  *(v4 + 104) = v2;

  v7 = sub_1000C4600();
  *(v4 + 112) = v7;
  *v7 = v6;
  v7[1] = sub_1001EBAD4;
  v8 = *(v3 + 88);
  v9 = *(v3 + 32);

  return v11(v8, v9);
}

uint64_t sub_1001EBAD4()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001EBBB8()
{
  sub_10008BE9C();
  AsyncStream.makeAsyncIterator()();
  *(v0 + 120) = _swiftEmptyArrayStorage;
  swift_task_alloc();
  sub_1000F2F10();
  *(v0 + 128) = v1;
  *v1 = v2;
  sub_100219C84(v1);
  sub_100098AD0();

  return AsyncStream.Iterator.next(isolation:)(v3);
}

uint64_t sub_1001EBC4C()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1001EBD30()
{
  sub_1000B072C();
  sub_1000B0004();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 120);
  if (v3)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v1 + 120);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100219FA8();
      sub_1001D9EE8();
      v6 = v32;
    }

    v7 = v6[2];
    if (v7 >= v6[3] >> 1)
    {
      sub_100219FA8();
      sub_1001D9EE8();
      v6 = v33;
    }

    v6[2] = v7 + 1;
    v8 = &v6[2 * v7];
    v8[4] = v2;
    v8[5] = v3;
    if (v7 == 9)
    {
      v9 = *(v1 + 40);
      isa = Array._bridgeToObjectiveC()().super.isa;
      [v9 receivedTransactions:isa];

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v11 = v6[2];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100219FA8();
          sub_1001D9EE8();
          v6 = v12;
        }

        swift_arrayDestroy();
        if (v11)
        {
          v13 = v6[2] - v11;
          memmove(v6 + 4, &v6[2 * v11 + 4], 16 * v13);
          v6[2] = v13;
        }
      }

      else if (v6[3] > 1uLL)
      {
        sub_100080FB4(&unk_1003D2720);
        v26 = swift_allocObject();
        j__malloc_size(v26);
        sub_10021AAA4();
        v26[2] = 0;
        v26[3] = v27;

        v6 = v26;
      }

      else
      {

        v6 = _swiftEmptyArrayStorage;
      }
    }

    *(v1 + 120) = v6;
    swift_task_alloc();
    sub_1000F2F10();
    *(v1 + 128) = v28;
    *v28 = v29;
    sub_100219C84();
    sub_100098AD0();
    sub_1000B0718();

    return AsyncStream.Iterator.next(isolation:)(v30);
  }

  else
  {
    (*(*(v1 + 56) + 8))(*(v1 + 64), *(v1 + 48));
    if (*(v4 + 16))
    {
      v14 = *(v1 + 40);
      Array._bridgeToObjectiveC()();
      sub_10001E104();

      [v14 receivedTransactions:v0];
    }

    else
    {
    }

    [*(v1 + 40) receivedTransactions:0];

    v15 = sub_100219AC0();
    v16(v15);

    sub_100098AA4();
    sub_1000B0718();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

void sub_1001EC028(uint64_t a1, uint64_t a2, void *a3, const void *a4)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a4;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1002192F8;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = &unk_1002FABF8;
  v8[4] = 0;
  v8[5] = sub_10016C648;
  v8[6] = v7;
  v9 = type metadata accessor for ExternalGatewayRequest();
  v10 = swift_allocBox();
  v12 = v11;
  swift_retain_n();
  _Block_copy(a4);
  a3;

  sub_1000EB280();
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  v13 = qword_1003F2700;
  v14 = (v12 + *(v9 + 40));
  v15 = *v14;
  v16 = v14[1];

  sub_1001DCF50(v15, v16, 0xD000000000000029, 0x80000001003173B0, 150, v13, 0xD000000000000020, 0x800000010031DFD0, v10, &unk_1002FAEA8, v8);

  _Block_release(a4);
}

uint64_t sub_1001EC4E4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1001EC580;

  return sub_1000EFFC8();
}

uint64_t sub_1001EC580()
{
  sub_1000B061C();
  sub_1000B0004();
  v3 = v2;
  v5 = v4;
  sub_10008C070();
  v7 = v6;
  sub_1000AFE64();
  *v8 = v7;
  v9 = *v1;
  sub_100098AB4();
  *v10 = v9;

  if (v0)
  {
    sub_1000B0518();

    return v12(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    *(v7 + 32) = v3;
    *(v7 + 40) = v5;
    sub_100098AD0();
    sub_1000B0518();

    return _swift_task_switch(v20, v21, v22);
  }
}

uint64_t sub_1001EC6B4()
{
  *v0[1].i64[0] = vextq_s8(v0[2], v0[2], 8uLL);
  sub_100098AA4();
  return v1();
}

void sub_1001EC6FC(void *a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v109._object = a2;
  v106 = a1;
  v104 = sub_100080FB4(&unk_1003D0540);
  v5 = __chkstk_darwin(v104);
  v7 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v102 = &v100 - v9;
  __chkstk_darwin(v8);
  v108 = &v100 - v10;
  v11 = type metadata accessor for SKLogger();
  v12 = __chkstk_darwin(v11);
  v107 = &v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v100 - v14;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = sub_10007EDA4(v11, qword_1003F26C8);
  sub_1001CA63C();
  v18 = v17;
  v20 = v19;
  v21 = static os_log_type_t.default.getter();

  v110 = v16;
  v22 = Logger.logObject.getter();

  v23 = os_log_type_enabled(v22, v21);
  v109._countAndFlagsBits = v18;
  v103 = v7;
  v105 = v15;
  if (v23)
  {
    v24 = a4;
    v25 = swift_slowAlloc();
    v111[0] = swift_slowAlloc();
    *v25 = 136446466;
    v112 = 91;
    v113 = 0xE100000000000000;
    v26._countAndFlagsBits = v18;
    v26._object = v20;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 8285;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v28 = sub_100080210(v112, v113, v111);

    *(v25 + 4) = v28;
    *(v25 + 12) = 2082;
    *(v25 + 14) = sub_100080210(0xD00000000000002CLL, 0x800000010031E000, v111);
    _os_log_impl(&_mh_execute_header, v22, v21, "%{public}s%{public}s", v25, 0x16u);
    swift_arrayDestroy();

    a4 = v24;
  }

  v29 = [objc_opt_self() currentConnection];
  object = v109._object;
  if (v29)
  {
    v31 = v29;
    if (!v109._object)
    {
      sub_10008E5A4(0, &qword_1003D2100);
      [v31 auditToken];
      v32 = sub_1001EE37C(v112, v113, v114, v115);
LABEL_9:
      v33 = v32;
      v109._object = v20;
      sub_100219094(v110, v105);
      v112 = 0;
      v113 = 0xE000000000000000;
      v34 = v33;
      _StringGuts.grow(_:)(36);

      v112 = 0xD000000000000022;
      v113 = 0x800000010031E0A0;
      v106 = v34;
      v111[0] = sub_1001B4A38(v34, &selRef_bundleIdentifier);
      v111[1] = v35;
      sub_100080FB4(&unk_1003CE550);
      v36._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v36);

      v37 = v112;
      v38 = v113;
      v39 = static os_log_type_t.default.getter();
      v40 = Logger.logObject.getter();
      v41 = os_log_type_enabled(v40, v39);
      v100 = a4;
      if (v41)
      {
        v42 = swift_slowAlloc();
        v111[0] = swift_slowAlloc();
        *v42 = 136446466;
        v112 = 91;
        v113 = 0xE100000000000000;
        String.append(_:)(v109);
        v43._countAndFlagsBits = 8285;
        v43._object = 0xE200000000000000;
        String.append(_:)(v43);
        v44 = sub_100080210(v112, v113, v111);

        *(v42 + 4) = v44;
        *(v42 + 12) = 2082;
        v45 = sub_100080210(v37, v38, v111);

        *(v42 + 14) = v45;
        _os_log_impl(&_mh_execute_header, v40, v39, "%{public}s%{public}s", v42, 0x16u);
        swift_arrayDestroy();
        a4 = v100;
      }

      else
      {
      }

      sub_1002190EC();
      v61 = v107;
      v60 = v108;
      v62 = v106;
      sub_10017A65C();
      v64 = v63;
      v66 = v65;

      if (v64 == 2)
      {
        v67 = v102;
        sub_100105C8C(v60, v102, &unk_1003D0540);
        v68 = objc_allocWithZone(ExternalPurchaseLinkResponse);
        v69 = sub_1002129C8(v67, v66);
        sub_100219094(v110, v61);
        v112 = 0;
        v113 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v112 = 0xD000000000000021;
        v113 = 0x800000010031E110;
        v70 = [v69 single];
        v71 = v109._object;
        v101 = v31;
        if (v70)
        {
          v72 = v70;
          v73 = v103;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v74 = 0;
        }

        else
        {
          v74 = 1;
          v73 = v103;
        }

        v83 = type metadata accessor for URL();
        sub_100081DFC(v73, v74, 1, v83);
        v84._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v84);

        v85._countAndFlagsBits = 0x3A69746C756D202CLL;
        v85._object = 0xE900000000000020;
        String.append(_:)(v85);
        v111[0] = sub_100214224(v69);
        sub_100080FB4(&qword_1003D2108);
        v86._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v86);

        v87._countAndFlagsBits = 93;
        v87._object = 0xE100000000000000;
        String.append(_:)(v87);
        v89 = v112;
        v88 = v113;
        v90 = static os_log_type_t.default.getter();
        v91 = Logger.logObject.getter();
        if (os_log_type_enabled(v91, v90))
        {
          v92 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v92 = 136446466;
          v112 = 91;
          v113 = 0xE100000000000000;
          v93._countAndFlagsBits = v109._countAndFlagsBits;
          v93._object = v71;
          String.append(_:)(v93);
          v94._countAndFlagsBits = 8285;
          v94._object = 0xE200000000000000;
          String.append(_:)(v94);
          v95 = sub_100080210(v112, v113, v111);

          *(v92 + 4) = v95;
          *(v92 + 12) = 2082;
          v96 = sub_100080210(v89, v88, v111);

          *(v92 + 14) = v96;
          _os_log_impl(&_mh_execute_header, v91, v90, "%{public}s%{public}s", v92, 0x16u);
          swift_arrayDestroy();

          v60 = v108;
        }

        else
        {
        }

        sub_1002190EC();
        v97 = v100;
        v98 = v100[2];
        v99 = v69;
        v98(v97, v99);

        sub_10013B1E8(v60, &unk_1003D0540);
        v59 = v97;
      }

      else
      {

        v75 = static os_log_type_t.default.getter();
        v76 = v109._object;

        v77 = Logger.logObject.getter();

        if (os_log_type_enabled(v77, v75))
        {
          v78 = swift_slowAlloc();
          v111[0] = swift_slowAlloc();
          *v78 = 136446466;
          v112 = 91;
          v113 = 0xE100000000000000;
          v79._countAndFlagsBits = v109._countAndFlagsBits;
          v79._object = v76;
          String.append(_:)(v79);
          v80._countAndFlagsBits = 8285;
          v80._object = 0xE200000000000000;
          String.append(_:)(v80);
          v81 = v31;
          v82 = sub_100080210(v112, v113, v111);

          *(v78 + 4) = v82;
          v31 = v81;
          *(v78 + 12) = 2082;
          *(v78 + 14) = sub_100080210(0xD000000000000033, 0x800000010031E0D0, v111);
          _os_log_impl(&_mh_execute_header, v77, v75, "%{public}s%{public}s", v78, 0x16u);
          swift_arrayDestroy();
          v60 = v108;
        }

        a4[2](a4, 0);

        sub_10013B1E8(v60, &unk_1003D0540);
        v59 = a4;
      }

      goto LABEL_20;
    }

    if (sub_1001B56A0(3))
    {
      sub_10008E5A4(0, &qword_1003D2100);
      v32 = sub_1001E0FC0(v106, object, 0);
      goto LABEL_9;
    }

    v52 = static os_log_type_t.error.getter();

    v53 = Logger.logObject.getter();

    if (os_log_type_enabled(v53, v52))
    {
      v54 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v54 = 136446466;
      v112 = 91;
      v113 = 0xE100000000000000;
      v55._countAndFlagsBits = v109._countAndFlagsBits;
      v55._object = v20;
      String.append(_:)(v55);
      v56._countAndFlagsBits = 8285;
      v56._object = 0xE200000000000000;
      String.append(_:)(v56);
      v57 = v31;
      v58 = sub_100080210(v112, v113, v111);

      *(v54 + 4) = v58;
      v31 = v57;
      *(v54 + 12) = 2082;
      *(v54 + 14) = sub_100080210(0xD00000000000003ALL, 0x800000010031E030, v111);
      _os_log_impl(&_mh_execute_header, v53, v52, "%{public}s%{public}s", v54, 0x16u);
      swift_arrayDestroy();
    }

    a4[2](a4, 0);
  }

  else
  {
    v46 = static os_log_type_t.error.getter();

    v47 = Logger.logObject.getter();

    if (os_log_type_enabled(v47, v46))
    {
      v48 = swift_slowAlloc();
      v111[0] = swift_slowAlloc();
      *v48 = 136446466;
      v112 = 91;
      v113 = 0xE100000000000000;
      v49._countAndFlagsBits = v109._countAndFlagsBits;
      v49._object = v20;
      String.append(_:)(v49);
      v50._countAndFlagsBits = 8285;
      v50._object = 0xE200000000000000;
      String.append(_:)(v50);
      v51 = sub_100080210(v112, v113, v111);

      *(v48 + 4) = v51;
      *(v48 + 12) = 2082;
      *(v48 + 14) = sub_100080210(0xD00000000000003ALL, 0x800000010031E030, v111);
      _os_log_impl(&_mh_execute_header, v47, v46, "%{public}s%{public}s", v48, 0x16u);
      swift_arrayDestroy();
    }

    a4[2](a4, 0);
  }

  v59 = a4;

LABEL_20:
  _Block_release(v59);
}

void StoreKitServiceConnection.externalPurchaseLinkURLs(forBundleID:reply:)()
{
  sub_100093D08();
  v120 = v0;
  v121 = v1;
  v3 = v2;
  v115 = v4;
  v114 = sub_100080FB4(&unk_1003D0540);
  sub_100098B7C();
  __chkstk_darwin(v5);
  sub_10018ECCC();
  v113 = v6;
  sub_10018ED10();
  __chkstk_darwin(v7);
  v112 = &v109 - v8;
  sub_10018ED10();
  __chkstk_darwin(v9);
  v11 = &v109 - v10;
  v12 = type metadata accessor for SKLogger();
  sub_100098B7C();
  __chkstk_darwin(v13);
  sub_10018ECCC();
  v116 = v14;
  sub_10018ED10();
  __chkstk_darwin(v15);
  sub_1001B5378();
  v117 = v16;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v17 = sub_10007EDA4(v12, qword_1003F26C8);
  sub_1001CA63C();
  v19 = v18;
  v21 = v20;
  v22 = static os_log_type_t.default.getter();

  v23 = Logger.logObject.getter();

  v24 = os_log_type_enabled(v23, v22);
  v118 = v11;
  v119 = v19;
  if (v24)
  {
    v25 = v21;
    sub_1000B7DC8();
    v26 = v17;
    v27 = v3;
    v28 = swift_slowAlloc();
    sub_1000B7DBC();
    v123[0] = swift_slowAlloc();
    *v28 = 136446466;
    sub_1001CCD70();
    v29._countAndFlagsBits = v19;
    v30 = v25;
    v29._object = v25;
    String.append(_:)(v29);
    v31._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v31);
    sub_100219F54();
    sub_100107144();

    *(v28 + 4) = v25;
    *(v28 + 12) = 2082;
    *(v28 + 14) = sub_100080210(0xD00000000000002CLL, 0x800000010031E000, v123);
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v28, 0x16u);
    sub_10021A160();
    swift_arrayDestroy();
    sub_1000B7D68();

    v3 = v27;
    v17 = v26;
    sub_1000B7D68();
  }

  else
  {
    v30 = v21;
  }

  v122 = [objc_opt_self() currentConnection];
  v32 = v120;
  if (!v122)
  {
    static os_log_type_t.error.getter();
    sub_100143F70();
    Logger.logObject.getter();
    sub_100219B1C();

    if (sub_10009F1F4())
    {
      sub_1000B7DC8();
      v56 = swift_slowAlloc();
      sub_1000B7DBC();
      v123[0] = swift_slowAlloc();
      sub_100219560(4.8752e-34);
      sub_100219B8C(v57);
      v58._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v58);
      sub_100219F54();
      sub_1000B0494();
      sub_1002198A4();
      *(v56 + 14) = sub_10021ACF8();
      sub_100219784(&_mh_execute_header, v59, v60, "%{public}s%{public}s");
      sub_10021A22C();
      sub_100219550();

      sub_1000B7D68();
    }

    v66 = sub_10021AC60();
    v3(v66);
    goto LABEL_34;
  }

  if (!v120)
  {
    sub_10008E5A4(0, &qword_1003D2100);
    [v122 auditToken];
    v33 = sub_1001EE37C(v124, v125, v126, v127);
    goto LABEL_10;
  }

  if (sub_1001B56A0(3))
  {
    sub_10008E5A4(0, &qword_1003D2100);
    v33 = sub_1001E0FC0(v115, v32, 0);
LABEL_10:
    v34 = v33;
    sub_100219414();
    v115 = v17;
    v35 = v17;
    v36 = v117;
    sub_100219094(v35, v117);
    v124 = 0;
    v125 = 0xE000000000000000;
    v37 = v34;
    _StringGuts.grow(_:)(36);

    sub_1000C446C();
    v124 = 0xD000000000000022;
    v125 = v38;
    v123[0] = sub_1001B4A38(v37, &selRef_bundleIdentifier);
    v123[1] = v39;
    sub_100080FB4(&unk_1003CE550);
    v40._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v40);

    v41 = v124;
    v42 = static os_log_type_t.default.getter();
    v43 = Logger.logObject.getter();
    v44 = os_log_type_enabled(v43, v42);
    v111 = v3;
    if (v44)
    {
      sub_1000B7DC8();
      swift_slowAlloc();
      sub_1002197A4();
      v123[0] = swift_slowAlloc();
      *v22 = 136446466;
      sub_1001CCD70();
      v45._countAndFlagsBits = v119;
      v45._object = v30;
      String.append(_:)(v45);
      v46._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v46);
      sub_100219F54();
      sub_1001B55FC();

      *(v22 + 4) = v41;
      sub_100107150();
      v47 = sub_100123E30();
      sub_100080210(v47, v48, v49);
      sub_100106CE0();

      *(v22 + 14) = v36;
      sub_10021A01C();
      _os_log_impl(v50, v51, v52, v53, v54, v55);
      sub_100219884();
      swift_arrayDestroy();
      v3 = v111;
      sub_1000B7D68();

      sub_10015CFF0();
    }

    else
    {
    }

    sub_1002193D0();
    sub_1002190EC();
    v70 = v118;
    sub_10017A65C();
    v72 = v71;
    v120 = v37;

    v73 = v116;
    if (v72 == 2)
    {
      sub_100105C8C(v70, v112, &unk_1003D0540);
      v74 = objc_allocWithZone(ExternalPurchaseLinkResponse);
      v75 = sub_1001073F0();
      v77 = sub_1002129C8(v75, v76);
      sub_100219414();
      sub_100219094(v115, v73);
      v124 = 0;
      v125 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      sub_1000C446C();
      v124 = 0xD000000000000021;
      v125 = v78;
      v79 = [v77 single];
      v110 = v30;
      if (v79)
      {
        v80 = v79;
        v81 = v113;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v82 = 0;
      }

      else
      {
        v82 = 1;
        v81 = v113;
      }

      v89 = type metadata accessor for URL();
      sub_100081DFC(v81, v82, 1, v89);
      v90._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v90);

      v91._countAndFlagsBits = 0x3A69746C756D202CLL;
      v91._object = 0xE900000000000020;
      String.append(_:)(v91);
      v123[0] = sub_100214224(v77);
      sub_100080FB4(&qword_1003D2108);
      v92._countAndFlagsBits = String.init<A>(describing:)();
      object = v92._object;
      String.append(_:)(v92);

      v94._countAndFlagsBits = 93;
      v94._object = 0xE100000000000000;
      String.append(_:)(v94);
      static os_log_type_t.default.getter();
      v95 = Logger.logObject.getter();
      if (sub_100093D8C(v95))
      {
        sub_1000B7DC8();
        swift_slowAlloc();
        sub_1002195CC();
        v123[0] = swift_slowAlloc();
        *v73 = 136446466;
        v124 = 91;
        v125 = 0xE100000000000000;
        v96._countAndFlagsBits = v119;
        v96._object = v110;
        String.append(_:)(v96);
        v97._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v97);
        sub_100219F54();
        sub_100219E00();

        *(v73 + 4) = 0xE100000000000000;
        sub_1000B009C();
        v98 = sub_10021A414();
        sub_100080210(v98, v99, v100);
        sub_10021A2E8();

        *(v73 + 14) = &v124;
        sub_10019DBA8();
        sub_100219A8C();
        _os_log_impl(v101, v102, v103, v104, v105, v106);
        sub_10021960C();
        swift_arrayDestroy();
        sub_10015CFF0();

        sub_100219550();
      }

      else
      {
      }

      sub_1002193D0();
      sub_1002190EC();
      v107 = v77;
      v108 = sub_10021A0B0();
      v111(v108);

      v88 = v118;
    }

    else
    {

      v83 = static os_log_type_t.default.getter();

      Logger.logObject.getter();
      sub_100219B1C();

      if (os_log_type_enabled(v37, v83))
      {
        sub_1000B7DC8();
        v84 = swift_slowAlloc();
        sub_1000B7DBC();
        v123[0] = swift_slowAlloc();
        *v84 = 136446466;
        sub_1001CCD70();
        v85._countAndFlagsBits = v119;
        v85._object = v30;
        String.append(_:)(v85);
        v86._countAndFlagsBits = sub_1000B7DB0();
        String.append(_:)(v86);
        sub_100219F54();
        sub_1000B0494();
        *(v84 + 4) = v30;
        sub_100107300();
        *(v84 + 14) = sub_100080210(0xD000000000000033, 0x800000010031E0D0, v123);
        sub_1001076B8(&_mh_execute_header, v37, v83, "%{public}s%{public}s");
        sub_100106E34();
        sub_100219550();

        sub_1000B7D68();
      }

      v87 = sub_10021AC60();
      v3(v87);

      v88 = v70;
    }

    sub_10013B1E8(v88, &unk_1003D0540);
LABEL_34:
    sub_100093CB8();
    return;
  }

  static os_log_type_t.error.getter();
  sub_100143F70();
  Logger.logObject.getter();
  sub_100219B1C();

  if (sub_10009F1F4())
  {
    sub_1000B7DC8();
    v61 = swift_slowAlloc();
    sub_1000B7DBC();
    v123[0] = swift_slowAlloc();
    sub_100219560(4.8752e-34);
    sub_100219B8C(v62);
    v63._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v63);
    sub_100219F54();
    sub_1000B0494();
    sub_1002198A4();
    *(v61 + 14) = sub_10021ACF8();
    sub_100219784(&_mh_execute_header, v64, v65, "%{public}s%{public}s");
    sub_10021A22C();
    sub_100219550();

    sub_1000B7D68();
  }

  v67 = sub_10021AC60();
  v3(v67);
  sub_100093CB8();
}

id sub_1001EE37C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v5 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  v6 = v9;
  if (!v5)
  {
    sub_10021A554();
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

void sub_1001EE498(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void (**a6)(void, void))
{
  v69._countAndFlagsBits = a3;
  v69._object = a4;
  v71 = a1;
  v7 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v7 - 8);
  v66 = v62 - v8;
  v70 = type metadata accessor for ExternalPurchaseTokenV2Response();
  v63 = *(v70 - 8);
  v9 = __chkstk_darwin(v70);
  v65 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v74 = v62 - v12;
  v64 = v13;
  __chkstk_darwin(v11);
  v68 = v62 - v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a6;
  _Block_copy(a6);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  v17 = sub_10007EDA4(v16, qword_1003F26C8);
  sub_1001CA63C();
  v19 = v18;
  v21 = v20;

  v22 = static os_log_type_t.default.getter();

  v23 = Logger.logObject.getter();

  v24 = os_log_type_enabled(v23, v22);
  v72 = v19;
  if (v24)
  {
    v62[0] = "itd14";
    v25 = swift_slowAlloc();
    v67 = a6;
    v26 = v25;
    v27 = swift_slowAlloc();
    v62[1] = v17;
    *v26 = 136446466;
    v75 = 91;
    v76 = 0xE100000000000000;
    v77[0] = v27;
    v28._countAndFlagsBits = v19;
    v28._object = v21;
    String.append(_:)(v28);
    v29._countAndFlagsBits = 8285;
    v29._object = 0xE200000000000000;
    String.append(_:)(v29);
    v30 = v15;
    v31 = sub_100080210(v75, v76, v77);

    *(v26 + 4) = v31;
    v15 = v30;
    *(v26 + 12) = 2082;
    *(v26 + 14) = sub_100080210(0xD00000000000001FLL, v62[0] | 0x8000000000000000, v77);
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v26, 0x16u);
    swift_arrayDestroy();

    a6 = v67;
  }

  v32 = [objc_opt_self() currentConnection];
  v33 = v74;
  v73 = v15;
  if (v32)
  {
    v34 = v32;
    if (sub_1001B56A0(3))
    {
      type metadata accessor for JSONDecoder();
      swift_allocObject();
      JSONDecoder.init()();
      sub_1002185B8(&qword_1003D2750, type metadata accessor for ExternalPurchaseTokenV2Response);
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

      sub_100218508(v33, v68);
      v75 = 0;
      v76 = 0xE000000000000000;
      _StringGuts.grow(_:)(32);

      v75 = 0xD00000000000001ELL;
      v76 = 0x800000010031EED0;
      String.append(_:)(v69);
      v44 = v75;
      v45 = v76;
      v46 = static os_log_type_t.debug.getter();

      v47 = Logger.logObject.getter();

      if (os_log_type_enabled(v47, v46))
      {
        v48 = swift_slowAlloc();
        LODWORD(v74) = v46;
        v49 = v48;
        v50 = swift_slowAlloc();
        v71 = v44;
        *v49 = 136446466;
        v75 = 91;
        v76 = 0xE100000000000000;
        v77[0] = v50;
        v51._countAndFlagsBits = v72;
        v51._object = v21;
        String.append(_:)(v51);
        v52._countAndFlagsBits = 8285;
        v52._object = 0xE200000000000000;
        String.append(_:)(v52);
        v53 = sub_100080210(v75, v76, v77);

        *(v49 + 4) = v53;
        *(v49 + 12) = 2082;
        v54 = sub_100080210(v71, v45, v77);

        *(v49 + 14) = v54;
        _os_log_impl(&_mh_execute_header, v47, v74, "%{public}s%{public}s", v49, 0x16u);
        swift_arrayDestroy();

        v55 = v72;
      }

      else
      {

        v55 = v72;
      }

      v56 = type metadata accessor for TaskPriority();
      sub_100081DFC(v66, 1, 1, v56);
      v57 = v65;
      sub_100219094(v68, v65);
      v58 = (*(v63 + 80) + 80) & ~*(v63 + 80);
      v59 = swift_allocObject();
      v59[2] = 0;
      v59[3] = 0;
      v59[4] = v55;
      v59[5] = v21;
      object = v69._object;
      v59[6] = v69._countAndFlagsBits;
      v59[7] = object;
      v61 = v73;
      v59[8] = sub_100219348;
      v59[9] = v61;
      sub_100218508(v57, v59 + v58);

      sub_100165CBC();

      sub_1002190EC();

      _Block_release(a6);
      return;
    }
  }

  v35 = static os_log_type_t.error.getter();

  v36 = Logger.logObject.getter();

  if (os_log_type_enabled(v36, v35))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 136446466;
    v75 = 91;
    v76 = 0xE100000000000000;
    v77[0] = v38;
    v39._countAndFlagsBits = v72;
    v39._object = v21;
    String.append(_:)(v39);
    v40._countAndFlagsBits = 8285;
    v40._object = 0xE200000000000000;
    String.append(_:)(v40);
    v41 = sub_100080210(v75, v76, v77);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2082;
    *(v37 + 14) = sub_100080210(0xD00000000000003DLL, 0x800000010031EE50, v77);
    _os_log_impl(&_mh_execute_header, v36, v35, "%{public}s%{public}s", v37, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v42 = 3;
  v43 = _convertErrorToNSError(_:)();
  (a6)[2](a6, v43);

  _Block_release(a6);
}

uint64_t sub_1001EEFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  v9 = swift_task_alloc();
  v8[16] = v9;
  *v9 = v8;
  v9[1] = sub_1001EF088;

  return sub_1000A10AC(0);
}

uint64_t sub_1001EF088()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 136) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1001EF3D8()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 152) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001EF4D0()
{
  sub_10008BE9C();
  v1 = *(v0 + 136);
  (*(v0 + 104))(0);

  sub_100098AC4();

  return v2();
}

void sub_1001EF864(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v67 = a1;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - v5;
  v7 = type metadata accessor for URL();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = objc_opt_self();
  _Block_copy(a3);
  v14 = [v13 lib_shortLogKey];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for SKLogger();
  v19 = sub_10007EDA4(v18, qword_1003F26C8);

  v20 = static os_log_type_t.default.getter();

  v69 = v19;
  v21 = Logger.logObject.getter();

  v22 = os_log_type_enabled(v21, v20);
  v68 = v15;
  if (v22)
  {
    v62 = v6;
    v23 = swift_slowAlloc();
    v61 = v11;
    v24 = v23;
    v25 = swift_slowAlloc();
    v63 = v12;
    *v24 = 136446466;
    v70 = 91;
    v71 = 0xE100000000000000;
    v72 = v25;
    v26._countAndFlagsBits = v15;
    v26._object = v17;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 8285;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v28 = sub_100080210(v70, v71, &v72);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v6 = v62;
    *(v24 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E140, &v72);
    _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v12 = v63;

    v11 = v61;
  }

  v29 = [objc_opt_self() currentConnection];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for Client(0);
    v31 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v11, 1, 1, v31);
    v32 = v30;
    sub_1001ABF2C();
    v43 = v42;

    v44 = *&v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
    v45 = *&v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8];
    v46 = v66;
    (*(v64 + 16))(v66, &v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleURL], v65);

    v47 = sub_1001A8808();
    v48 = objc_allocWithZone(type metadata accessor for DialogContext());
    v49 = sub_10019E3E0(v44, v45, v46, v47, 0);
    v50 = type metadata accessor for TaskPriority();
    sub_100081DFC(v6, 1, 1, v50);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v53 = v67;
    v52 = v68;
    v51[4] = v43;
    v51[5] = v53;
    v51[6] = v49;
    v51[7] = v52;
    v51[8] = v17;
    v51[9] = sub_100219300;
    v51[10] = v12;
    v54 = v43;
    v55 = v49;
    v56 = v53;

    v57 = v54;
    v58 = v56;
    v59 = v55;

    sub_1000B5BC0(0, 0, v6, &unk_1002FAE90, v51);

    sub_10013B1E8(v6, &unk_1003CE2B0);
  }

  else
  {

    v33 = static os_log_type_t.error.getter();

    v34 = Logger.logObject.getter();

    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136446466;
      v70 = 91;
      v71 = 0xE100000000000000;
      v72 = v36;
      v37._countAndFlagsBits = v68;
      v37._object = v17;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 8285;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      v39 = sub_100080210(v70, v71, &v72);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_100080210(0xD00000000000003DLL, 0x800000010031E180, &v72);
      _os_log_impl(&_mh_execute_header, v34, v33, "%{public}s%{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v40 = 1;
    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, 0, v41);
  }

  _Block_release(a3);
}

void StoreKitServiceConnection.checkPaymentAccountBindingEligibility(with:reply:)()
{
  sub_100093D08();
  v59 = v3;
  v5 = v4;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089230();
  type metadata accessor for URL();
  sub_1000890DC();
  __chkstk_darwin(v8);
  sub_100093D40();
  v9 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  sub_10021A64C();
  v11 = [objc_opt_self() lib_shortLogKey];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v15 = type metadata accessor for SKLogger();
  sub_10007EDA4(v15, qword_1003F26C8);
  sub_1000EDD18();

  static os_log_type_t.default.getter();
  sub_10021AE30();
  Logger.logObject.getter();
  sub_10021A85C();
  v58 = v12;
  if (os_log_type_enabled(v2, v11))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195DC();
    v16 = swift_slowAlloc();
    *v5 = 136446466;
    sub_100106B4C(v16);
    v17._countAndFlagsBits = v12;
    v17._object = v14;
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v18);
    sub_100219A70();
    sub_100219E00();

    *(v5 + 4) = &type metadata for Any;
    sub_10013BC98();
    *(v5 + 14) = sub_100080210(0xD000000000000032, 0x800000010031E140, &v60);
    sub_100219A98();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    sub_10021A22C();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v25 = sub_1000B06A8();
    type metadata accessor for Client(v25);
    v26 = sub_1001B52B0();
    type metadata accessor for ClientOverride(v26);
    sub_1000B0690();
    sub_100081DFC(v27, v28, v29, v30);
    v31 = v11;
    sub_1001ABF2C();
    sub_10013B8D4();

    v38 = *&v11[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
    v39 = *&v11[OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8];
    v40 = sub_10021A7FC();
    v41(v40);

    v42 = v11;
    sub_1001A8808();
    sub_1001B52B0();
    v43 = objc_allocWithZone(type metadata accessor for DialogContext());
    sub_10021A4D4();
    sub_1001B52B0();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v44, v45, v46, v47);
    sub_10021A7F0();
    v48 = swift_allocObject();
    v49 = sub_10021A300(v48);
    v50 = v42;
    v51 = v5;
    sub_10021A7E4();

    v52 = v49;
    v53 = v39;
    v54 = v50;

    v55 = sub_1001C5454();
    sub_1000B5BC0(v55, v56, v1, v57, v38);

    sub_10013B1E8(v1, &unk_1003CE2B0);
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_10021AE30();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (os_log_type_enabled(v0, v11))
    {
      sub_1000B7DC8();
      v32 = swift_slowAlloc();
      sub_1000B7DBC();
      v33 = swift_slowAlloc();
      *v32 = 136446466;
      sub_100106B4C(v33);
      v34._countAndFlagsBits = v58;
      v34._object = v14;
      String.append(_:)(v34);
      v35._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v35);
      sub_100219A70();
      sub_1000B0494();
      sub_1002198A4();
      *(v32 + 14) = sub_100080210(0xD00000000000003DLL, 0x800000010031E180, &v60);
      sub_10021A214(&_mh_execute_header, v0, v11, "%{public}s%{public}s");
      sub_10021A22C();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v36 = swift_allocError();
    sub_1002195EC(v36, v37);
    v59(0, v11);
  }

  sub_100093CB8();
}

uint64_t sub_1001F04D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1001F0568;

  return sub_100163B58();
}

uint64_t sub_1001F0568()
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
  *(v5 + 40) = v0;

  if (!v0)
  {
    *(v5 + 48) = v3 & 1;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001F0674()
{
  sub_10008BE9C();
  (*(v0 + 16))(*(v0 + 48), 0);
  sub_100098AC4();

  return v1();
}

uint64_t sub_1001F06D8()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 toASDErrorWithMetadata:0];

  v1(0, v3);

  sub_100098AC4();
  sub_1000B0518();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1001F0798(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_1001F0808(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v67 = a1;
  v4 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v4 - 8);
  v6 = &v60 - v5;
  v7 = type metadata accessor for URL();
  v64 = *(v7 - 8);
  v65 = v7;
  __chkstk_darwin(v7);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v60 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = objc_opt_self();
  _Block_copy(a3);
  v14 = [v13 lib_shortLogKey];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for SKLogger();
  v19 = sub_10007EDA4(v18, qword_1003F26C8);

  v20 = static os_log_type_t.default.getter();

  v69 = v19;
  v21 = Logger.logObject.getter();

  v22 = os_log_type_enabled(v21, v20);
  v68 = v15;
  if (v22)
  {
    v62 = v6;
    v23 = swift_slowAlloc();
    v61 = v11;
    v24 = v23;
    v25 = swift_slowAlloc();
    v63 = v12;
    *v24 = 136446466;
    v70 = 91;
    v71 = 0xE100000000000000;
    v72 = v25;
    v26._countAndFlagsBits = v15;
    v26._object = v17;
    String.append(_:)(v26);
    v27._countAndFlagsBits = 8285;
    v27._object = 0xE200000000000000;
    String.append(_:)(v27);
    v28 = sub_100080210(v70, v71, &v72);

    *(v24 + 4) = v28;
    *(v24 + 12) = 2082;
    v6 = v62;
    *(v24 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031E1C0, &v72);
    _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v24, 0x16u);
    swift_arrayDestroy();
    v12 = v63;

    v11 = v61;
  }

  v29 = [objc_opt_self() currentConnection];
  if (v29)
  {
    v30 = v29;
    type metadata accessor for Client(0);
    v31 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v11, 1, 1, v31);
    v32 = v30;
    sub_1001ABF2C();
    v43 = v42;

    v44 = *&v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
    v45 = *&v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8];
    v46 = v66;
    (*(v64 + 16))(v66, &v43[OBJC_IVAR____TtC9storekitd6Client_callerBundleURL], v65);

    v47 = sub_1001A8808();
    v48 = objc_allocWithZone(type metadata accessor for DialogContext());
    v49 = sub_10019E3E0(v44, v45, v46, v47, 0);
    v50 = type metadata accessor for TaskPriority();
    sub_100081DFC(v6, 1, 1, v50);
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v53 = v67;
    v52 = v68;
    v51[4] = v43;
    v51[5] = v53;
    v51[6] = v49;
    v51[7] = v52;
    v51[8] = v17;
    v51[9] = sub_100219348;
    v51[10] = v12;
    v54 = v43;
    v55 = v49;
    v56 = v53;

    v57 = v54;
    v58 = v56;
    v59 = v55;

    sub_1000B5BC0(0, 0, v6, &unk_1002FAE88, v51);

    sub_10013B1E8(v6, &unk_1003CE2B0);
  }

  else
  {

    v33 = static os_log_type_t.error.getter();

    v34 = Logger.logObject.getter();

    if (os_log_type_enabled(v34, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136446466;
      v70 = 91;
      v71 = 0xE100000000000000;
      v72 = v36;
      v37._countAndFlagsBits = v68;
      v37._object = v17;
      String.append(_:)(v37);
      v38._countAndFlagsBits = 8285;
      v38._object = 0xE200000000000000;
      String.append(_:)(v38);
      v39 = sub_100080210(v70, v71, &v72);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2082;
      *(v35 + 14) = sub_100080210(0xD00000000000002BLL, 0x800000010031E1E0, &v72);
      _os_log_impl(&_mh_execute_header, v34, v33, "%{public}s%{public}s", v35, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v40 = 1;
    v41 = _convertErrorToNSError(_:)();
    (a3)[2](a3, v41);
  }

  _Block_release(a3);
}

void StoreKitServiceConnection.bindPaymentAccount(with:reply:)()
{
  sub_100093D08();
  v61 = v3;
  v5 = v4;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v6);
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089230();
  type metadata accessor for URL();
  sub_1000890DC();
  __chkstk_darwin(v8);
  sub_100093D40();
  v9 = sub_100080FB4(&unk_1003D20F0);
  sub_1000B01B0(v9);
  sub_100089118();
  __chkstk_darwin(v10);
  sub_10021A64C();
  v11 = [objc_opt_self() lib_shortLogKey];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v15 = type metadata accessor for SKLogger();
  sub_10007EDA4(v15, qword_1003F26C8);
  sub_1000EDD18();

  static os_log_type_t.default.getter();
  sub_10021AE30();
  Logger.logObject.getter();
  sub_10021A85C();
  v60 = v12;
  if (os_log_type_enabled(v2, v11))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195DC();
    v16 = swift_slowAlloc();
    *v5 = 136446466;
    sub_100106B4C(v16);
    v17._countAndFlagsBits = v12;
    v17._object = v14;
    String.append(_:)(v17);
    v18._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v18);
    sub_100219A70();
    sub_100219E00();

    *(v5 + 4) = &type metadata for Any;
    sub_10013BC98();
    *(v5 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031E1C0, &v62);
    sub_100219A98();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
    sub_10021A22C();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  if ([objc_opt_self() currentConnection])
  {
    v25 = sub_1000B06A8();
    type metadata accessor for Client(v25);
    v26 = sub_1001B52B0();
    type metadata accessor for ClientOverride(v26);
    sub_1000B0690();
    sub_100081DFC(v27, v28, v29, v30);
    v31 = v11;
    sub_1001ABF2C();
    sub_10013B8D4();

    v40 = *&v11[OBJC_IVAR____TtC9storekitd6Client_callerBundleID];
    v41 = *&v11[OBJC_IVAR____TtC9storekitd6Client_callerBundleID + 8];
    v42 = sub_10021A7FC();
    v43(v42);

    v44 = v11;
    sub_1001A8808();
    sub_1001B52B0();
    v45 = objc_allocWithZone(type metadata accessor for DialogContext());
    sub_10021A4D4();
    sub_1001B52B0();
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v46, v47, v48, v49);
    sub_10021A7F0();
    v50 = swift_allocObject();
    v51 = sub_10021A300(v50);
    v52 = v44;
    v53 = v5;
    sub_10021A7E4();

    v54 = v51;
    v55 = v41;
    v56 = v52;

    v57 = sub_1001C5454();
    sub_1000B5BC0(v57, v58, v1, v59, v40);

    sub_10013B1E8(v1, &unk_1003CE2B0);
  }

  else
  {

    static os_log_type_t.error.getter();
    sub_10021AE30();
    Logger.logObject.getter();
    sub_10021A0FC();

    if (os_log_type_enabled(v0, v11))
    {
      sub_1000B7DC8();
      v32 = swift_slowAlloc();
      sub_1000B7DBC();
      v33 = swift_slowAlloc();
      *v32 = 136446466;
      sub_100106B4C(v33);
      v34._countAndFlagsBits = v60;
      v34._object = v14;
      String.append(_:)(v34);
      v35._countAndFlagsBits = sub_1000B7DB0();
      String.append(_:)(v35);
      sub_100219A70();
      sub_1000B0494();
      sub_1002198A4();
      v36 = sub_10021ABE0();
      *(v32 + 14) = sub_100080210(v36, v37, &v62);
      sub_10021A214(&_mh_execute_header, v0, v11, "%{public}s%{public}s");
      sub_10021A22C();
      sub_100219550();

      sub_1000B7D68();
    }

    sub_10008B5E0();
    sub_1000ED9E4();
    v38 = swift_allocError();
    sub_1002195EC(v38, v39);
    v61();
  }

  sub_100093CB8();
}

uint64_t sub_1001F1460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a5;
  v6[3] = a6;
  v7 = swift_task_alloc();
  v6[4] = v7;
  *v7 = v6;
  v7[1] = sub_1001F14F4;

  return sub_1000DF900();
}

uint64_t sub_1001F14F4()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001F15EC()
{
  sub_1000B061C();
  sub_1000B0004();
  v1 = *(v0 + 16);
  v2 = _convertErrorToNSError(_:)();
  v3 = [v2 toASDErrorWithMetadata:0];

  v1(v3);

  sub_100098AC4();
  sub_1000B0518();

  return v5(v4, v5, v6, v7, v8, v9, v10, v11);
}

void sub_1001F16A8(void *a1, uint64_t a2, const void *a3)
{
  v6 = sub_100080FB4(&unk_1003CE2B0);
  v7 = __chkstk_darwin(v6 - 8);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v38 = &v33 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = objc_opt_self();
  _Block_copy(a3);
  v12 = [v11 lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  sub_10007EDA4(v16, qword_1003F26C8);

  v17 = static os_log_type_t.default.getter();

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v36 = a3;
    v34 = v10;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v35 = a2;
    v43[0] = v20;
    *v19 = 136446466;
    *&v40 = 91;
    *(&v40 + 1) = 0xE100000000000000;
    v21._countAndFlagsBits = v13;
    v21._object = v15;
    String.append(_:)(v21);
    v22._countAndFlagsBits = 8285;
    v22._object = 0xE200000000000000;
    String.append(_:)(v22);
    v23 = a1;
    v24 = sub_100080210(v40, *(&v40 + 1), v43);

    *(v19 + 4) = v24;
    a1 = v23;
    *(v19 + 12) = 2082;
    v10 = v34;
    a3 = v36;
    *(v19 + 14) = sub_100080210(0xD000000000000031, 0x800000010031E210, v43);
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();
  }

  sub_1001F1F7C(a1, v13, v15, &v40);
  v25 = *v41;
  v42 = *&v41[8];
  *v43 = v40;
  v26 = type metadata accessor for TaskPriority();
  v27 = v38;
  sub_100081DFC(v38, 1, 1, v26);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_100216F24;
  *(v28 + 24) = v10;
  v29 = swift_allocObject();
  v30 = *v41;
  *(v29 + 16) = v40;
  *(v29 + 32) = v30;
  *(v29 + 48) = *&v41[16];
  *(v29 + 56) = v13;
  *(v29 + 64) = v15;
  sub_100105C8C(v27, v37, &unk_1003CE2B0);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = &unk_1002FAE78;
  v31[5] = v29;
  v31[6] = sub_100219338;
  v31[7] = v28;
  sub_1002144E0(v43, v39);
  v32 = v25;
  sub_10021453C(&v42, v39);

  sub_100165CBC();
  sub_10013B1E8(v27, &unk_1003CE2B0);
  sub_100214598(v43);

  sub_100105FFC(&v42);

  _Block_release(a3);
}

void StoreKitServiceConnection.manageSubscriptionsEngagementRequest(with:reply:)()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  v7 = sub_1000B01B0(v6);
  __chkstk_darwin(v7);
  sub_1001460C4();
  sub_10021A66C();
  __chkstk_darwin(v8);
  sub_10021A62C();
  v9 = [objc_opt_self() lib_shortLogKey];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_100107C34(v13, qword_1003F26C8);

  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    sub_1000B7DC8();
    swift_slowAlloc();
    sub_1002195CC();
    *&v51[0] = swift_slowAlloc();
    sub_100106A78(4.8752e-34);
    *&v47 = v16;
    *(&v47 + 1) = v17;
    v18._countAndFlagsBits = v10;
    v18._object = v12;
    String.append(_:)(v18);
    v19._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v19);
    sub_100080210(v47, *(&v47 + 1), v51);
    sub_100219CE4();

    *(v5 + 4) = v10;
    sub_1000B009C();
    *(v5 + 14) = sub_100080210(0xD000000000000031, 0x800000010031E210, v51);
    sub_100219A8C();
    _os_log_impl(v20, v21, v22, v23, v24, v25);
    sub_1000D8998();
    v1 = v0;
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10021AC6C();
  sub_1001F1F7C(v26, v27, v28, v29);
  if (v1)
  {

    swift_getErrorValue();
    v30 = sub_100186564(0, v46[3]);
    (v5)(v30, 0, 0xF000000000000000);
  }

  else
  {
    v31 = v48;
    v50 = v49;
    v51[0] = v47;
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v32, v33, v34, v35);
    sub_1000B7E4C();
    v36 = swift_allocObject();
    *(v36 + 16) = v5;
    *(v36 + 24) = v3;
    v37 = swift_allocObject();
    sub_10021A44C(v37);
    *(v38 + 64) = v12;
    v39 = sub_1001B5488();
    sub_100105C8C(v39, v40, &unk_1003CE2B0);
    sub_10021A178();
    v41 = swift_allocObject();
    v42 = sub_10021ABA4(v41);
    v42[4] = &unk_1002FAC38;
    v42[5] = v5;
    v42[6] = sub_1002143B8;
    v42[7] = v36;
    sub_1002144E0(v51, v46);
    v43 = v31;
    sub_10021453C(&v50, v46);

    sub_1001C5454();
    sub_100165CBC();
    v44 = sub_100219F9C();
    sub_10013B1E8(v44, v45);
    sub_100214598(v51);

    sub_100105FFC(&v50);
  }

  sub_100093CB8();
}

void sub_1001F1F7C(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v9 - 8);
  v11 = &v30 - v10;
  v12 = [objc_opt_self() currentConnection];
  if (v12)
  {
    v13 = v12;
    type metadata accessor for Client(0);
    v14 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v11, 1, 1, v14);
    v15 = v13;
    sub_1001ABF2C();
    if (!v4)
    {
      v26 = v16;
      v27 = sub_1001B4A38(a1, &selRef_familyID);
      v29 = v28;

      *a4 = v27;
      a4[1] = v29;
      a4[2] = v26;
      a4[3] = a2;
      a4[4] = a3;
      return;
    }
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for SKLogger();
  sub_10007EDA4(v17, qword_1003F26C8);
  v18 = static os_log_type_t.error.getter();

  v19 = Logger.logObject.getter();

  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136446466;
    v31 = 91;
    v32 = 0xE100000000000000;
    v33 = v21;
    v22._countAndFlagsBits = a2;
    v22._object = a3;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8285;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v24 = sub_100080210(v31, v32, &v33);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    *(v20 + 14) = sub_100080210(0xD000000000000021, 0x800000010031F430, &v33);
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v25 = 1;
  swift_willThrow();
}

uint64_t sub_1001F227C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = swift_task_alloc();
  v5[23] = v6;
  *v6 = v5;
  v6[1] = sub_1001F232C;

  return sub_10020C2CC();
}

uint64_t sub_1001F232C()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_1000AFE64();
  *v4 = v3;
  *v4 = *v1;
  v3[24] = v5;
  v3[25] = v0;

  if (v0)
  {
    v3[26] = v0;
  }

  sub_1002195FC();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1001F2438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_10013BAC0();
  sub_1000EDA60();
  v13 = *(v12 + 200);
  v14 = sub_10020E7DC(*(v12 + 192));
  v16 = *(v12 + 192);
  if (v13)
  {

    *(v12 + 208) = v13;
    sub_10009F0B8();
    sub_1001240F8();

    return _swift_task_switch(v17, v18, v19);
  }

  else
  {
    v21 = v14;
    v22 = v15;
    v24 = *(v12 + 160);
    v23 = *(v12 + 168);
    v25 = *(v12 + 152);

    v26 = *(v25 + 16);
    v28 = *(v26 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v27 = *(v26 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

    v29 = sub_10021AB44();
    v31 = sub_1000BC808(v29, v30);
    v32 = sub_1001AA204(v31);
    v33 = sub_1001A79F8(v32);
    *(v12 + 16) = v24;
    *(v12 + 24) = v23;
    *(v12 + 32) = v28;
    *(v12 + 40) = v27;
    *(v12 + 48) = v21;
    *(v12 + 56) = v22;
    *(v12 + 64) = v32;
    *(v12 + 72) = v33 & 1;
    type metadata accessor for JSONEncoder();
    sub_10021A330();
    sub_10021A118();

    JSONEncoder.init()();
    v34 = *(v12 + 32);
    *(v12 + 80) = *(v12 + 16);
    *(v12 + 96) = v34;
    *(v12 + 112) = *(v12 + 48);
    *(v12 + 121) = *(v12 + 57);
    sub_100217B44();
    v35 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v37 = v36;
    v38 = *(v12 + 144);
    v39 = sub_10021AB44();
    sub_10008E168(v39, v40);

    sub_100172108(v12 + 16);
    *v38 = v35;
    v38[1] = v37;
    sub_100098AA4();
    sub_1001240F8();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }
}

void sub_1001F2608(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v6 = _convertErrorToNSError(_:)();
  }

  else
  {
    v6 = 0;
  }

  if (a3 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v8 = isa;
  (*(a4 + 16))(a4, v6);
}

void sub_1001F26A8(void *a1, uint64_t a2, const void *a3)
{
  v5 = sub_100080FB4(&unk_1003CE2B0);
  v6 = __chkstk_darwin(v5 - 8);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v38 = &v34 - v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  v10 = objc_opt_self();
  _Block_copy(a3);
  v11 = [v10 lib_shortLogKey];
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v14 = v13;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for SKLogger();
  sub_10007EDA4(v15, qword_1003F26C8);

  v16 = static os_log_type_t.default.getter();

  v17 = Logger.logObject.getter();

  if (os_log_type_enabled(v17, v16))
  {
    v37 = a3;
    v35 = v9;
    v18 = swift_slowAlloc();
    v36 = a1;
    v19 = v18;
    v44[0] = swift_slowAlloc();
    *v19 = 136446466;
    *&v41 = 91;
    *(&v41 + 1) = 0xE100000000000000;
    v20._countAndFlagsBits = v12;
    v20._object = v14;
    String.append(_:)(v20);
    v21._countAndFlagsBits = 8285;
    v21._object = 0xE200000000000000;
    String.append(_:)(v21);
    v22 = sub_100080210(v41, *(&v41 + 1), v44);

    *(v19 + 4) = v22;
    *(v19 + 12) = 2082;
    v9 = v35;
    a3 = v37;
    *(v19 + 14) = sub_100080210(0xD000000000000027, 0x800000010031E250, v44);
    _os_log_impl(&_mh_execute_header, v17, v16, "%{public}s%{public}s", v19, 0x16u);
    swift_arrayDestroy();

    a1 = v36;
  }

  sub_1001F1F7C(a1, v12, v14, &v41);

  v23 = *v42;
  v43 = *&v42[8];
  *v44 = v41;
  sub_1002144E0(v44, v40);
  v24 = v23;
  sub_10021453C(&v43, v40);
  v25 = sub_1001B4A38(a1, &selRef_sceneID);
  v27 = v26;
  v28 = type metadata accessor for TaskPriority();
  v29 = v38;
  sub_100081DFC(v38, 1, 1, v28);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_100219348;
  *(v30 + 24) = v9;
  v31 = swift_allocObject();
  v32 = *v42;
  *(v31 + 16) = v41;
  *(v31 + 32) = v32;
  *(v31 + 48) = *&v42[16];
  *(v31 + 56) = v25;
  *(v31 + 64) = v27;
  sub_100105C8C(v29, v39, &unk_1003CE2B0);
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = 0;
  v33[4] = &unk_1002FAE68;
  v33[5] = v31;
  v33[6] = sub_100219350;
  v33[7] = v30;

  sub_100165CBC();
  sub_10013B1E8(v29, &unk_1003CE2B0);
  sub_100214598(v44);

  sub_100105FFC(&v43);

  _Block_release(a3);
}

void StoreKitServiceConnection.presentManageSubscriptions(with:reply:)()
{
  sub_100093D08();
  v2 = v1;
  v4 = v3;
  v45 = v5;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  v7 = sub_1000B01B0(v6);
  __chkstk_darwin(v7);
  sub_1001460C4();
  sub_10021A66C();
  __chkstk_darwin(v8);
  sub_1001B5378();
  v9 = [objc_opt_self() lib_shortLogKey];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_100107C34(v13, qword_1003F26C8);

  v14 = static os_log_type_t.default.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v2 = "uest(with:reply:)";
    sub_1000B7DC8();
    v16 = swift_slowAlloc();
    sub_1000B7DBC();
    *&v51[0] = swift_slowAlloc();
    sub_100219764(4.8752e-34);
    *&v47 = v17;
    *(&v47 + 1) = v18;
    v19._countAndFlagsBits = v10;
    v19._object = v12;
    String.append(_:)(v19);
    v20._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v20);
    sub_100080210(v47, *(&v47 + 1), v51);
    sub_10001E104();

    *(v16 + 4) = v0;
    sub_100219E3C();
    sub_10021AAB8();
    *(v16 + 14) = sub_100080210(0xD000000000000027, v21, v51);
    sub_10021A5AC(&_mh_execute_header, v15, v14, "%{public}s%{public}s");
    sub_10021A06C();
    swift_arrayDestroy();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10021AC6C();
  sub_1001F1F7C(v22, v23, v24, v25);

  if (v0)
  {
    swift_getErrorValue();
    sub_100186564(0, v46[3]);
    v4();
  }

  else
  {
    v26 = v48;
    v50 = v49;
    v51[0] = v47;
    sub_1002144E0(v51, v46);
    v27 = v26;
    sub_10021453C(&v50, v46);
    sub_1001B4A38(v45, &selRef_sceneID);
    v29 = v28;
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v30, v31, v32, v33);
    sub_1000B7E4C();
    v34 = swift_allocObject();
    v35 = v4;
    v36 = v34;
    *(v34 + 16) = v35;
    *(v34 + 24) = v2;
    v37 = swift_allocObject();
    sub_10021A44C(v37);
    *(v38 + 64) = v29;
    v39 = sub_1001B5488();
    sub_100105C8C(v39, v40, &unk_1003CE2B0);
    sub_10021A178();
    v41 = swift_allocObject();
    v42 = sub_10021ABA4(v41);
    v42[4] = &unk_1002FAC58;
    v42[5] = v45;
    v42[6] = sub_1002145EC;
    v42[7] = v36;

    sub_1001C5454();
    sub_100165CBC();
    v43 = sub_100219F9C();
    sub_10013B1E8(v43, v44);
    sub_100214598(v51);

    sub_100105FFC(&v50);
  }

  sub_100093CB8();
}

uint64_t sub_1001F2FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = swift_task_alloc();
  v5[7] = v6;
  *v6 = v5;
  v6[1] = sub_1001F3054;

  return sub_10020C2CC();
}

uint64_t sub_1001F3054()
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
  v5[8] = v3;

  if (v0)
  {
    v5[12] = v0;
    sub_100098AD0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[9] = v12;
    *v12 = v7;
    v12[1] = sub_1001F31C8;
    v13 = v5[4];
    v14 = v5[5];

    return sub_10020E980(v3, v13, v14, 1);
  }
}

uint64_t sub_1001F31C8()
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
  *(v5 + 80) = v0;

  if (!v0)
  {
    *(v5 + 88) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001F32D0()
{
  sub_10008BE9C();
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_100098AA4();

  return v3();
}

uint64_t sub_1001F3334()
{
  sub_10008BE9C();

  *(v0 + 96) = *(v0 + 80);
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

void sub_1001F33BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, const void *a5)
{
  v48 = a3;
  v45 = a2;
  v8 = sub_100080FB4(&unk_1003CE2B0);
  v9 = __chkstk_darwin(v8 - 8);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v41 - v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  v13 = objc_opt_self();
  _Block_copy(a5);
  v14 = [v13 lib_shortLogKey];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for SKLogger();
  sub_10007EDA4(v18, qword_1003F26C8);

  v19 = static os_log_type_t.default.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    v44 = a5;
    v42 = v12;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v43 = a4;
    *v21 = 136446466;
    v49 = 91;
    v50 = 0xE100000000000000;
    v51 = v22;
    v23._countAndFlagsBits = v15;
    v23._object = v17;
    String.append(_:)(v23);
    v24._countAndFlagsBits = 8285;
    v24._object = 0xE200000000000000;
    String.append(_:)(v24);
    v25 = a1;
    v26 = sub_100080210(v49, v50, &v51);

    *(v21 + 4) = v26;
    a1 = v25;
    *(v21 + 12) = 2082;
    v12 = v42;
    a5 = v44;
    *(v21 + 14) = sub_100080210(0xD00000000000003ALL, 0x800000010031E280, &v51);
    _os_log_impl(&_mh_execute_header, v20, v19, "%{public}s%{public}s", v21, 0x16u);
    swift_arrayDestroy();
  }

  v27 = sub_1001F3C64(a1, v15, v17);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v34 = type metadata accessor for TaskPriority();
  v35 = v46;
  sub_100081DFC(v46, 1, 1, v34);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_100219348;
  *(v36 + 24) = v12;
  v37 = swift_allocObject();
  v37[2] = v27;
  v37[3] = v29;
  v37[4] = v31;
  v37[5] = v33;
  v38 = v48;
  v37[6] = v45;
  v37[7] = v38;
  sub_100105C8C(v35, v47, &unk_1003CE2B0);
  v39 = swift_allocObject();
  v39[2] = 0;
  v39[3] = 0;
  v39[4] = &unk_1002FAE58;
  v39[5] = v37;
  v39[6] = sub_100219350;
  v39[7] = v36;

  v40 = v29;

  sub_100165CBC();
  sub_10013B1E8(v35, &unk_1003CE2B0);

  _Block_release(a5);
}

void StoreKitServiceConnection.presentRefundRequestSheet(forTransactionID:sceneID:reply:)()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v47 = v8;
  v9 = sub_100080FB4(&unk_1003CE2B0);
  v10 = sub_1000B01B0(v9);
  __chkstk_darwin(v10);
  sub_10018ECCC();
  v49 = v11;
  sub_10018ED10();
  __chkstk_darwin(v12);
  sub_1001B5378();
  v48 = v13;
  v14 = [objc_opt_self() lib_shortLogKey];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v18 = type metadata accessor for SKLogger();
  sub_100107C34(v18, qword_1003F26C8);

  v19 = static os_log_type_t.default.getter();

  v20 = Logger.logObject.getter();

  if (os_log_type_enabled(v20, v19))
  {
    sub_1000B7DC8();
    v21 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    sub_100219764(4.8752e-34);
    v50 = v22;
    v51 = v24;
    v52[0] = v23;
    v25._countAndFlagsBits = v15;
    v25._object = v17;
    String.append(_:)(v25);
    v26._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v26);
    sub_100080210(v50, v51, v52);
    sub_100219CE4();

    *(v21 + 4) = v5;
    sub_100219E3C();
    *(v21 + 14) = sub_100080210(0xD00000000000003ALL, 0x800000010031E280, v52);
    sub_10021A5AC(&_mh_execute_header, v20, v19, "%{public}s%{public}s");
    sub_1000D8998();
    v1 = v0;
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10021AC6C();
  v30 = sub_1001F3C64(v27, v28, v29);
  v32 = v31;
  v34 = v33;
  v36 = v35;

  if (v1)
  {
    swift_getErrorValue();
    sub_100186564(0, v52[2]);
    v5();
  }

  else
  {
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v37, v38, v39, v40);
    sub_1000B7E4C();
    v41 = swift_allocObject();
    *(v41 + 16) = v5;
    *(v41 + 24) = v3;
    sub_10021A178();
    v42 = swift_allocObject();
    v42[2] = v30;
    v42[3] = v32;
    v42[4] = v34;
    v42[5] = v36;
    v42[6] = v47;
    v42[7] = v7;
    sub_100105C8C(v48, v49, &unk_1003CE2B0);
    sub_10021A178();
    v43 = swift_allocObject();
    v44 = sub_10021ABA4(v43);
    v44[4] = &unk_1002FAC78;
    v44[5] = v42;
    v44[6] = sub_100219350;
    v44[7] = v41;

    v45 = v32;

    sub_1001C5454();
    sub_100165CBC();
    v46 = sub_100123F54();
    sub_10013B1E8(v46, &unk_1003CE2B0);
  }

  sub_100093CB8();
}

NSObject *sub_1001F3C64(void *a1, uint64_t a2, void *a3)
{
  v7 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v24 - v8;
  v10 = [objc_opt_self() currentConnection];
  if (v10)
  {
    v11 = v10;
    type metadata accessor for Client(0);
    v12 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v9, 1, 1, v12);
    v13 = v11;
    sub_1001ABF2C();
    if (!v3)
    {
      v16 = [a1 unsignedLongLongValue];

      return v16;
    }
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  sub_10007EDA4(v14, qword_1003F26C8);
  v15 = static os_log_type_t.error.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 136446466;
    v25 = 91;
    v26 = 0xE100000000000000;
    v27 = v18;
    v19._countAndFlagsBits = a2;
    v19._object = a3;
    String.append(_:)(v19);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21 = sub_100080210(v25, v26, &v27);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    *(v17 + 14) = sub_100080210(0xD000000000000026, 0x800000010031F360, &v27);
    _os_log_impl(&_mh_execute_header, v16, v15, "%{public}s%{public}s", v17, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v22 = 1;
  swift_willThrow();
  return v16;
}

uint64_t sub_1001F3F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_1001F403C;

  return sub_10020CE80(a2, a3, a4, a5);
}

uint64_t sub_1001F403C()
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
  v5[11] = v3;

  if (v0)
  {
    v5[15] = v0;
    sub_100098AD0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[12] = v12;
    *v12 = v7;
    v12[1] = sub_1001F41B4;
    v13 = v5[7];
    v14 = v5[8];
    v15 = v5[5];
    v16 = v5[6];
    v17 = v5[3];
    v18 = v5[4];

    return sub_10020EEA0(v3, v13, v14, 0, v17, v18, v15, v16);
  }
}

uint64_t sub_1001F41B4()
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
  *(v5 + 104) = v0;

  if (!v0)
  {
    *(v5 + 112) = v3;
  }

  sub_1002195FC();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001F42BC()
{
  sub_10008BE9C();
  v1 = *(v0 + 112);
  v2 = *(v0 + 16);

  *v2 = v1;
  sub_100098AA4();

  return v3();
}

uint64_t sub_1001F4320()
{
  sub_10008BE9C();

  *(v0 + 120) = *(v0 + 104);
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

void sub_1001F4444(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v40 = a1;
  v41 = a2;
  v6 = sub_100080FB4(&unk_1003CE2B0);
  v7 = __chkstk_darwin(v6 - 8);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v42 = &v38 - v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  v11 = objc_opt_self();
  _Block_copy(a4);
  v12 = [v11 lib_shortLogKey];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for SKLogger();
  sub_10007EDA4(v16, qword_1003F26C8);

  v17 = static os_log_type_t.default.getter();

  v18 = Logger.logObject.getter();

  if (os_log_type_enabled(v18, v17))
  {
    v39 = a4;
    v19 = swift_slowAlloc();
    v38 = a3;
    v20 = v19;
    v21 = swift_slowAlloc();
    *v20 = 136446466;
    v44 = 91;
    v45 = 0xE100000000000000;
    v46 = v21;
    v22._countAndFlagsBits = v13;
    v22._object = v15;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8285;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v24 = sub_100080210(v44, v45, &v46);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    a4 = v39;
    *(v20 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031E2C0, &v46);
    _os_log_impl(&_mh_execute_header, v18, v17, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  v25 = sub_1001F4CC0(v13, v15);
  v27 = v26;
  v29 = v28;

  v30 = type metadata accessor for TaskPriority();
  v31 = v42;
  sub_100081DFC(v42, 1, 1, v30);
  v32 = swift_allocObject();
  *(v32 + 16) = sub_100219348;
  *(v32 + 24) = v10;
  v33 = swift_allocObject();
  v33[2] = v25;
  v33[3] = v27;
  v34 = v40;
  v35 = v41;
  v33[4] = v29;
  v33[5] = v34;
  v33[6] = v35;
  sub_100105C8C(v31, v43, &unk_1003CE2B0);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = &unk_1002FAE48;
  v36[5] = v33;
  v36[6] = sub_100219350;
  v36[7] = v32;

  v37 = v25;

  sub_100165CBC();
  sub_10013B1E8(v31, &unk_1003CE2B0);

  _Block_release(a4);
}

void StoreKitServiceConnection.presentCodeRedemptionSheet(withSceneID:reply:)()
{
  sub_100093D08();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v42 = v8;
  v9 = sub_100080FB4(&unk_1003CE2B0);
  v10 = sub_1000B01B0(v9);
  __chkstk_darwin(v10);
  sub_1001460C4();
  sub_10021A66C();
  __chkstk_darwin(v11);
  sub_1001B5378();
  v43 = v12;
  v13 = [objc_opt_self() lib_shortLogKey];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  v14 = type metadata accessor for SKLogger();
  sub_100107C34(v14, qword_1003F26C8);

  v15 = static os_log_type_t.default.getter();

  v16 = Logger.logObject.getter();

  if (os_log_type_enabled(v16, v15))
  {
    sub_1000B7DC8();
    v40 = v6;
    v17 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    *v17 = 136446466;
    sub_10009F0F8();
    v44 = v18;
    v45 = v20;
    v46[0] = v19;
    v21._countAndFlagsBits = sub_1001B561C();
    String.append(_:)(v21);
    v22._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v22);
    sub_100080210(v44, v45, v46);
    sub_10001E104();

    *(v17 + 4) = v0;
    sub_1000B04AC();
    *(v17 + 14) = sub_100080210(0xD00000000000002ELL, 0x800000010031E2C0, v46);
    sub_1000B0648(&_mh_execute_header, v16, v15, "%{public}s%{public}s");
    sub_10010709C();
    sub_1000B7D68();

    v6 = v40;
    sub_1000B7D68();
  }

  sub_1001B561C();
  sub_10021AC6C();
  v25 = sub_1001F4CC0(v23, v24);
  v27 = v26;
  v29 = v28;

  if (v2)
  {
    swift_getErrorValue();
    sub_100186564(0, v46[2]);
    v6();
  }

  else
  {
    type metadata accessor for TaskPriority();
    sub_1000B0690();
    sub_100081DFC(v30, v31, v32, v33);
    sub_1000B7E4C();
    v34 = swift_allocObject();
    v35 = v6;
    v36 = v34;
    *(v34 + 16) = v35;
    *(v34 + 24) = v4;
    sub_1000EDD24();
    v37 = swift_allocObject();
    v37[2] = v25;
    v37[3] = v27;
    v37[4] = v29;
    v37[5] = v41;
    v37[6] = v42;
    sub_100105C8C(v43, v1, &unk_1003CE2B0);
    sub_10021A178();
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v38[4] = &unk_1002FAC90;
    v38[5] = v37;
    v38[6] = sub_100219350;
    v38[7] = v36;

    v39 = v25;
    sub_100107144();

    sub_1001C5454();
    sub_100165CBC();
    sub_10013B1E8(v43, &unk_1003CE2B0);
  }

  sub_100093CB8();
}

NSObject *sub_1001F4CC0(uint64_t a1, void *a2)
{
  v5 = sub_100080FB4(&unk_1003D20F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v23 - v6;
  v8 = [objc_opt_self() currentConnection];
  if (v8)
  {
    v9 = v8;
    type metadata accessor for Client(0);
    v10 = type metadata accessor for ClientOverride(0);
    sub_100081DFC(v7, 1, 1, v10);
    v11 = v9;
    sub_1001ABF2C();
    if (!v2)
    {
      v15 = v12;

      return v15;
    }
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for SKLogger();
  sub_10007EDA4(v13, qword_1003F26C8);
  v14 = static os_log_type_t.error.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 136446466;
    v24 = 91;
    v25 = 0xE100000000000000;
    v26 = v17;
    v18._countAndFlagsBits = a1;
    v18._object = a2;
    String.append(_:)(v18);
    v19._countAndFlagsBits = 8285;
    v19._object = 0xE200000000000000;
    String.append(_:)(v19);
    v20 = sub_100080210(v24, v25, &v26);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100080210(0xD000000000000026, 0x800000010031F360, &v26);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }

  sub_10008B5E0();
  swift_allocError();
  *v21 = 1;
  swift_willThrow();
  return v15;
}

uint64_t sub_1001F4FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v11 = swift_task_alloc();
  v7[9] = v11;
  *v11 = v7;
  v11[1] = sub_1001F506C;

  return sub_10020DA70(a2, a3, a4);
}

uint64_t sub_1001F506C()
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
  v5[10] = v3;

  if (v0)
  {
    v5[13] = v0;
    sub_100098AD0();

    return _swift_task_switch(v9, v10, v11);
  }

  else
  {
    v12 = swift_task_alloc();
    v5[11] = v12;
    *v12 = v7;
    v12[1] = sub_1001F51E4;
    v13 = v5[6];
    v14 = v5[7];
    v15 = v5[4];
    v16 = v5[5];
    v17 = v5[3];

    return sub_10020F38C(v3, v13, v14, 1, v17, v15, v16);
  }
}

uint64_t sub_1001F51E4()
{
  sub_10008BE9C();
  v3 = v2;
  sub_10008C070();
  sub_1000AFCF8();
  *v5 = v4;
  v6 = *v1;
  sub_100098AB4();
  *v7 = v6;
  *(v8 + 96) = v0;

  if (!v0)
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v9, v10, v11);
}

uint64_t sub_1001F52E4()
{
  sub_10008BE9C();

  sub_100098AA4();

  return v1();
}

uint64_t sub_1001F533C()
{
  sub_10008BE9C();

  *(v0 + 104) = *(v0 + 96);
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_1001F53A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_1000B061C();
  a15 = v17;
  a16 = v18;
  sub_1000B0004();
  a14 = v16;
  _s3__C4CodeOMa_0(0);
  *(v16 + 16) = 910;
  swift_errorRetain();
  sub_1002185B8(&qword_1003CC150, _s3__C4CodeOMa_0);
  sub_100093DD0();
  v19 = static _ErrorCodeProtocol.~= infix(_:_:)();

  if (v19)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_1000B7CD0();
      swift_once();
    }

    v20 = type metadata accessor for SKLogger();
    sub_100107C34(v20, qword_1003F26C8);
    v21 = static os_log_type_t.info.getter();
    v22 = Logger.logObject.getter();
    if (os_log_type_enabled(v22, v21))
    {
      sub_1000B7DC8();
      v23 = swift_slowAlloc();
      sub_1000B7DBC();
      v24 = swift_slowAlloc();
      a9 = v24;
      *v23 = 136446466;
      *(v23 + 4) = sub_100093CF0(v24, v25, &a9);
      sub_100107300();
      *(v23 + 14) = sub_100080210(0xD000000000000039, 0x800000010031F130, &a9);
      sub_1001076B8(&_mh_execute_header, v22, v21, "%{public}s%{public}s");
      sub_100219CAC();
      sub_1000B7D68();

      sub_1000B7D68();
    }

    sub_100098AA4();
  }

  else
  {
    **(v16 + 64) = *(v16 + 104);
    sub_100098AC4();
  }

  sub_1000B0518();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33);
}

void sub_1001F5598(uint64_t a1, void *a2, uint64_t a3, void (**a4)(void, void))
{
  v102 = a1;
  v103 = a2;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  __chkstk_darwin(v5 - 8);
  v88 = &v85 - v6;
  v92 = type metadata accessor for AcknowledgeMessageTask();
  v94 = *(v92 - 8);
  v7 = __chkstk_darwin(v92);
  v95 = v8;
  v96 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v97 = &v85 - v9;
  v10 = sub_100080FB4(&unk_1003D20F0);
  v11 = __chkstk_darwin(v10 - 8);
  v98 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v99 = (&v85 - v14);
  __chkstk_darwin(v13);
  v16 = &v85 - v15;
  v105 = type metadata accessor for AcknowledgeMessageRequest();
  v90 = *(v105 - 1);
  v17 = __chkstk_darwin(v105);
  v93 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v85 - v20;
  v91 = v22;
  __chkstk_darwin(v19);
  v24 = &v85 - v23;
  v25 = type metadata accessor for SKLogger();
  v86 = *(v25 - 8);
  v26 = __chkstk_darwin(v25);
  v89 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = v27;
  __chkstk_darwin(v26);
  v107 = &v85 - v28;
  v104 = swift_allocObject();
  *(v104 + 16) = a4;
  v106 = a4;
  _Block_copy(a4);
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  sub_10007EDA4(v25, qword_1003F26C8);
  v29 = static os_log_type_t.default.getter();
  v30 = Logger.logObject.getter();
  if (os_log_type_enabled(v30, v29))
  {
    v31 = swift_slowAlloc();
    v100 = v16;
    v32 = v31;
    v33 = swift_slowAlloc();
    v101 = v24;
    v109 = v33;
    *v32 = 136446466;
    *(v32 + 4) = sub_100080210(0, 0xE000000000000000, &v109);
    *(v32 + 12) = 2082;
    *(v32 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031E2F0, &v109);
    _os_log_impl(&_mh_execute_header, v30, v29, "%{public}s%{public}s", v32, 0x16u);
    swift_arrayDestroy();
    v24 = v101;

    v16 = v100;
  }

  v34 = v105;
  if (qword_1003CBE50 != -1)
  {
    swift_once();
  }

  v35 = sub_10007EDA4(v25, qword_1003F26B0);
  sub_100219094(v35, v107);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2110, type metadata accessor for AcknowledgeMessageRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100218508(v21, v24);
  v36 = [objc_opt_self() currentConnection];
  if (v36)
  {
    v37 = v36;
    if ([v36 sk_allowClientOverride])
    {
      sub_100105C8C(&v24[v34[7]], v16, &unk_1003D20F0);
    }

    else
    {
      v51 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(v16, 1, 1, v51);
    }

    v52 = v99;
    sub_100105C8C(v16, v99, &unk_1003D20F0);
    v53 = type metadata accessor for ClientOverride(0);
    if (sub_100081D0C(v52, 1, v53) == 1)
    {
      sub_10013B1E8(v52, &unk_1003D20F0);
LABEL_17:
      type metadata accessor for Client(0);
      sub_100105C8C(v16, v98, &unk_1003D20F0);
      v55 = v37;
      sub_1001ABF2C();
LABEL_23:
      v105 = v37;
      v100 = v16;
      v71 = v56;
      v103 = v71;
      v72 = v97;
      sub_100219094(v24, v97);
      v73 = v92;
      *(v72 + *(v92 + 20)) = v71;
      sub_100219094(v35, v72 + *(v73 + 24));
      v74 = type metadata accessor for TaskPriority();
      sub_100081DFC(v88, 1, 1, v74);
      v75 = v96;
      sub_100219094(v72, v96);
      v76 = v89;
      sub_100219094(v107, v89);
      v77 = v93;
      sub_100219094(v24, v93);
      v78 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v101 = v24;
      v79 = (v95 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
      v80 = (*(v86 + 80) + v79 + 16) & ~*(v86 + 80);
      v81 = (v87 + *(v90 + 80) + v80) & ~*(v90 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = 0;
      *(v82 + 24) = 0;
      sub_100218508(v75, v82 + v78);
      v83 = (v82 + v79);
      v84 = v104;
      *v83 = sub_100219348;
      v83[1] = v84;
      sub_100218508(v76, v82 + v80);
      sub_100218508(v77, v82 + v81);

      sub_100165CBC();

      sub_1002190EC();
      sub_10013B1E8(v100, &unk_1003D20F0);
      sub_1002190EC();
      goto LABEL_24;
    }

    v54 = v52[1];
    sub_1000BC7F4(*v52, v54);
    sub_1002190EC();
    if (v54 >> 60 == 15)
    {
      goto LABEL_17;
    }

    v70 = objc_allocWithZone(type metadata accessor for Client(0));
    sub_1001AE0B0();
    if (v56)
    {
      goto LABEL_23;
    }

    v57 = &v24[v105[8]];
    v58 = *v57;
    v59 = v57[1];
    v60 = static os_log_type_t.error.getter();
    v61 = Logger.logObject.getter();
    if (os_log_type_enabled(v61, v60))
    {
      v62 = swift_slowAlloc();
      v101 = v24;
      v63 = v62;
      v64 = swift_slowAlloc();
      v100 = v16;
      *v63 = 136446466;
      v108 = v64;
      v109 = 91;
      v110 = 0xE100000000000000;
      v65._countAndFlagsBits = v58;
      v65._object = v59;
      String.append(_:)(v65);
      v66._countAndFlagsBits = 8285;
      v66._object = 0xE200000000000000;
      String.append(_:)(v66);
      v67 = sub_100080210(v109, v110, &v108);

      *(v63 + 4) = v67;
      *(v63 + 12) = 2082;
      *(v63 + 14) = sub_100080210(0xD00000000000002BLL, 0x800000010031E380, &v108);
      _os_log_impl(&_mh_execute_header, v61, v60, "%{public}s%{public}s", v63, 0x16u);
      swift_arrayDestroy();
      v16 = v100;
    }

    sub_10008B5E0();
    swift_allocError();
    *v68 = 1;
    v69 = _convertErrorToNSError(_:)();
    (v106)[2](v106, v69);

    sub_10013B1E8(v16, &unk_1003D20F0);
  }

  else
  {
    v38 = &v24[v34[8]];
    v39 = *v38;
    v40 = v38[1];
    v41 = static os_log_type_t.error.getter();
    v42 = Logger.logObject.getter();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      v101 = v24;
      v44 = v43;
      v45 = swift_slowAlloc();
      *v44 = 136446466;
      v108 = v45;
      v109 = 91;
      v110 = 0xE100000000000000;
      v46._countAndFlagsBits = v39;
      v46._object = v40;
      String.append(_:)(v46);
      v47._countAndFlagsBits = 8285;
      v47._object = 0xE200000000000000;
      String.append(_:)(v47);
      v48 = sub_100080210(v109, v110, &v108);

      *(v44 + 4) = v48;
      *(v44 + 12) = 2082;
      *(v44 + 14) = sub_100080210(0xD000000000000033, 0x800000010031E340, &v108);
      _os_log_impl(&_mh_execute_header, v42, v41, "%{public}s%{public}s", v44, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    swift_allocError();
    *v49 = 1;
    v50 = _convertErrorToNSError(_:)();
    (v106)[2](v106, v50);
  }

  sub_1002190EC();
LABEL_24:
  sub_1002190EC();

  _Block_release(v106);
}

void StoreKitServiceConnection.acknowledgeMessage(with:reply:)()
{
  sub_100093D08();
  v124 = v2;
  v125 = v1;
  v122 = v3;
  v123 = v4;
  v5 = sub_100080FB4(&unk_1003CE2B0);
  sub_1000B01B0(v5);
  sub_100089118();
  __chkstk_darwin(v6);
  sub_1000891AC();
  v118 = v7;
  sub_1001B53DC();
  v111 = type metadata accessor for AcknowledgeMessageTask();
  sub_1000890DC();
  v113 = v8;
  __chkstk_darwin(v9);
  sub_1002199F4();
  v114 = v11;
  v115 = v10;
  __chkstk_darwin(v12);
  sub_1001B5378();
  v116 = v13;
  v14 = sub_100080FB4(&unk_1003D20F0);
  v15 = sub_1000B01B0(v14);
  __chkstk_darwin(v15);
  sub_10018ECCC();
  v117 = v16;
  sub_10018ED10();
  __chkstk_darwin(v17);
  v119 = (&v106 - v18);
  sub_10018ED10();
  __chkstk_darwin(v19);
  v21 = &v106 - v20;
  v126 = type metadata accessor for AcknowledgeMessageRequest();
  sub_1000890DC();
  v109 = v22;
  __chkstk_darwin(v23);
  sub_1002199F4();
  v112 = v24;
  v26 = __chkstk_darwin(v25);
  v110 = v27;
  __chkstk_darwin(v26);
  sub_10021A63C();
  v28 = type metadata accessor for SKLogger();
  sub_1000890DC();
  v106 = v29;
  __chkstk_darwin(v30);
  sub_1002199F4();
  sub_1001564A0(v31);
  v107 = v32;
  __chkstk_darwin(v33);
  v35 = &v106 - v34;
  if (qword_1003CBE58 != -1)
  {
    sub_1000B7CD0();
    swift_once();
  }

  sub_100107C34(v28, qword_1003F26C8);
  v36 = static os_log_type_t.default.getter();
  v37 = Logger.logObject.getter();
  if (os_log_type_enabled(v37, v36))
  {
    sub_1000B7DC8();
    v38 = swift_slowAlloc();
    v120 = v0;
    v121 = v35;
    v39 = v38;
    sub_1000B7DBC();
    v40 = swift_slowAlloc();
    v128 = v40;
    *v39 = 136446466;
    *(v39 + 4) = sub_100093CF0(v40, v41, &v128);
    sub_1000B04AC();
    *(v39 + 14) = sub_100080210(0xD00000000000001FLL, 0x800000010031E2F0, &v128);
    sub_1000B0648(&_mh_execute_header, v37, v36, "%{public}s%{public}s");
    sub_10021A160();
    swift_arrayDestroy();
    sub_1000B7D68();

    v0 = v120;
    v35 = v121;
    sub_1000B7D68();
  }

  if (qword_1003CBE50 != -1)
  {
    swift_once();
  }

  v42 = sub_10007EDA4(v28, qword_1003F26B0);
  sub_100219414();
  sub_100219094(v43, v35);
  type metadata accessor for JSONDecoder();
  sub_10021A330();
  JSONDecoder.init()();
  sub_1002185B8(&unk_1003D2110, type metadata accessor for AcknowledgeMessageRequest);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  sub_100219E48();
  v44 = sub_1001B561C();
  sub_100218508(v44, v45);
  v46 = [objc_opt_self() currentConnection];
  v121 = v35;
  if (v46)
  {
    v47 = v46;
    if ([v46 sk_allowClientOverride])
    {
      sub_100105C8C(v0 + *(v126 + 28), v21, &unk_1003D20F0);
    }

    else
    {
      type metadata accessor for ClientOverride(0);
      sub_1000B0690();
      sub_100081DFC(v59, v60, v61, v62);
    }

    v63 = v119;
    sub_100105C8C(v21, v119, &unk_1003D20F0);
    v64 = type metadata accessor for ClientOverride(0);
    sub_1001B5430(v63, 1, v64);
    v123 = v47;
    if (v65)
    {
      sub_10013B1E8(v63, &unk_1003D20F0);
    }

    else
    {
      v66 = *v63;
      v67 = v63[1];
      v68 = sub_1001073F0();
      sub_1000BC7F4(v68, v69);
      sub_100219E24();
      sub_1002190EC();
      if (v67 >> 60 != 15)
      {
        v87 = objc_allocWithZone(type metadata accessor for Client(0));
        sub_1001073F0();
        sub_1001AE0B0();
        if (!v71)
        {
          sub_10021A6AC();
          v72 = Logger.logObject.getter();
          if (sub_100093D8C(v72))
          {
            v120 = v0;
            sub_1000B7DC8();
            v73 = swift_slowAlloc();
            v126 = v21;
            v74 = v73;
            sub_1000B7DBC();
            swift_slowAlloc();
            sub_100219560(4.8752e-34);
            v127 = v75;
            v128 = v76;
            v129 = v77;
            v78._countAndFlagsBits = sub_100219CF0();
            String.append(_:)(v78);
            v79._countAndFlagsBits = sub_1000B7DB0();
            String.append(_:)(v79);
            sub_100080210(v128, v129, &v127);
            sub_100107144();

            sub_1002197B4();
            v80 = sub_10021ABE0();
            *(v74 + 14) = sub_100080210(v80, v81, &v127);
            sub_100219784(&_mh_execute_header, v82, v83, "%{public}s%{public}s");
            sub_10021A388();
            sub_1000B7D68();

            v21 = v126;
            sub_1000B7D68();
          }

          sub_10008B5E0();
          sub_1000ED9E4();
          v84 = swift_allocError();
          sub_1002195EC(v84, v85);
          v125();

          v86 = v21;
          goto LABEL_24;
        }

LABEL_23:
        v126 = v21;
        v88 = v71;
        v122 = v88;
        v89 = v116;
        sub_100219094(v0, v116);
        v90 = v111;
        *(v89 + *(v111 + 20)) = v88;
        sub_100219094(v42, v89 + *(v90 + 24));
        type metadata accessor for TaskPriority();
        sub_1000B0690();
        sub_100081DFC(v91, v92, v93, v94);
        v95 = v115;
        sub_100219094(v89, v115);
        v96 = v108;
        sub_100219094(v35, v108);
        v97 = v112;
        sub_100219094(v0, v112);
        v98 = (*(v113 + 80) + 32) & ~*(v113 + 80);
        v99 = (v114 + v98 + 7) & 0xFFFFFFFFFFFFFFF8;
        v100 = (*(v106 + 80) + v99 + 16) & ~*(v106 + 80);
        v101 = (v107 + *(v109 + 80) + v100) & ~*(v109 + 80);
        v102 = swift_allocObject();
        v103 = sub_10021AC54(v102);
        sub_100218508(v95, v103 + v98);
        v104 = (type metadata accessor for AcknowledgeMessageRequest + v99);
        v105 = v124;
        *v104 = v125;
        v104[1] = v105;
        sub_100218508(v96, type metadata accessor for AcknowledgeMessageRequest + v100);
        sub_100219E48();
        sub_100218508(v97, type metadata accessor for AcknowledgeMessageRequest + v101);

        sub_1001C5454();
        sub_100165CBC();

        sub_1002190EC();
        v86 = v126;
LABEL_24:
        sub_10013B1E8(v86, &unk_1003D20F0);
        goto LABEL_25;
      }
    }

    type metadata accessor for Client(0);
    sub_100105C8C(v21, v117, &unk_1003D20F0);
    v70 = v47;
    sub_1001ABF2C();
    goto LABEL_23;
  }

  sub_10021A6AC();
  v48 = Logger.logObject.getter();
  if (sub_100093D8C(v48))
  {
    v120 = v0;
    sub_1000B7DC8();
    v49 = swift_slowAlloc();
    sub_1000B7DBC();
    swift_slowAlloc();
    sub_100219560(4.8752e-34);
    v127 = v50;
    v128 = v51;
    v129 = v52;
    v53._countAndFlagsBits = sub_100219CF0();
    String.append(_:)(v53);
    v54._countAndFlagsBits = sub_1000B7DB0();
    String.append(_:)(v54);
    sub_100080210(v128, v129, &v127);
    sub_100107144();

    sub_1002197B4();
    *(v49 + 14) = sub_100080210(0xD000000000000033, 0x800000010031E340, &v127);
    sub_100219784(&_mh_execute_header, v55, v56, "%{public}s%{public}s");
    sub_10021A388();
    sub_1000B7D68();

    sub_1000B7D68();
  }

  sub_10008B5E0();
  sub_1000ED9E4();
  v57 = swift_allocError();
  sub_1002195EC(v57, v58);
  v125();

LABEL_25:
  sub_1002193D0();
  sub_1002190EC();
  sub_1002190EC();
  sub_100093CB8();
}

uint64_t sub_1001F70C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a7;
  v8[5] = a8;
  v8[2] = a5;
  v8[3] = a6;
  v9 = swift_task_alloc();
  v8[6] = v9;
  *v9 = v8;
  v9[1] = sub_1001F7158;

  return sub_100148008();
}

uint64_t sub_1001F7158()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_1000AFCF8();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 56) = v0;

  sub_100098AD0();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_1001F7250()
{
  sub_10008BE9C();
  (*(v0 + 16))(0);
  sub_100098AC4();

  return v1();
}

void sub_1001F74D0(uint64_t a1, uint64_t a2)
{
  v75 = sub_100080FB4(&qword_1003D2120);
  v3 = __chkstk_darwin(v75);
  v74 = (&v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v73 = &v64 - v5;
  v6 = type metadata accessor for ClientOverrideRequest();
  v71 = *(v6 - 8);
  v72 = v6;
  __chkstk_darwin(v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE58 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v9 = type metadata accessor for SKLogger();
    v10 = sub_10007EDA4(v9, qword_1003F26C8);
    v11 = static os_log_type_t.default.getter();
    v76 = v10;
    v12 = Logger.logObject.getter();
    if (os_log_type_enabled(v12, v11))
    {
      v13 = swift_slowAlloc();
      v83[0] = swift_slowAlloc();
      *v13 = 136446466;
      *(v13 + 4) = sub_100080210(0, 0xE000000000000000, v83);
      *(v13 + 12) = 2082;
      *(v13 + 14) = sub_100080210(0xD000000000000017, 0x800000010031E3B0, v83);
      _os_log_impl(&_mh_execute_header, v12, v11, "%{public}s%{public}s", v13, 0x16u);
      swift_arrayDestroy();
    }

    v14 = [objc_opt_self() currentConnection];
    if (!v14)
    {
      goto LABEL_27;
    }

    v15 = v14;
    if (![v14 sk_allowClientOverride])
    {

LABEL_27:
      v55 = static os_log_type_t.error.getter();
      v56 = Logger.logObject.getter();
      if (os_log_type_enabled(v56, v55))
      {
        v57 = swift_slowAlloc();
        v83[0] = swift_slowAlloc();
        *v57 = 136446466;
        *(v57 + 4) = sub_100080210(0, 0xE000000000000000, v83);
        *(v57 + 12) = 2082;
        *(v57 + 14) = sub_100080210(0xD000000000000030, 0x800000010031E3D0, v83);
        _os_log_impl(&_mh_execute_header, v56, v55, "%{public}s%{public}s", v57, 0x16u);
        swift_arrayDestroy();
      }

      sub_10008B5E0();
      swift_allocError();
      *v58 = 3;
      v59 = _convertErrorToNSError(_:)();
      (*(a2 + 16))(a2, 0, v59);

      _Block_release(a2);
      return;
    }

    type metadata accessor for Client(0);
    v16 = sub_1001B1F00();
    v17 = v16[2];
    if (!v17)
    {
      break;
    }

    v64 = v15;
    v65 = a2;
    v83[0] = _swiftEmptyArrayStorage;
    sub_10021350C();
    v18 = v83[0];
    v21 = sub_10017C828();
    v22 = 0;
    v23 = v16 + 8;
    v67 = v19;
    v68 = v17;
    v66 = v16 + 9;
    a2 = 1;
    v69 = v16;
    v70 = v16 + 8;
    while ((v21 & 0x8000000000000000) == 0 && v21 < 1 << *(v16 + 32))
    {
      if ((v23[v21 >> 6] & (1 << v21)) == 0)
      {
        goto LABEL_35;
      }

      if (*(v16 + 9) != v19)
      {
        goto LABEL_36;
      }

      v80 = v21 >> 6;
      v81 = 1 << v21;
      v78 = v22;
      v79 = v19;
      v77 = v20;
      v24 = v75;
      v82 = v18;
      v25 = *(v75 + 48);
      v26 = v16[7];
      v27 = (v16[6] + 16 * v21);
      v29 = *v27;
      v28 = v27[1];
      v30 = (type metadata accessor for Client.TimedClientOverride(0) - 8);
      v31 = v8;
      v32 = v73;
      sub_100219094(v26 + *(*v30 + 72) * v21, &v73[v25]);
      v33 = v74;
      *v74 = v29;
      *(v33 + 8) = v28;
      v34 = v33 + *(v24 + 48);
      v35 = &v32[v25];
      v8 = v31;
      sub_100218508(v35, v34);
      v36 = v72;
      v37 = *(v72 + 20);
      sub_100219094(v34, &v31[v37]);
      v38 = type metadata accessor for ClientOverride(0);
      sub_100081DFC(&v31[v37], 0, 1, v38);
      v39 = v30[7];
      v40 = *(v36 + 28);
      v41 = type metadata accessor for Date();
      v42 = v34 + v39;
      v18 = v82;
      (*(*(v41 - 8) + 16))(&v31[v40], v42, v41);

      sub_1001CA63C();
      *v31 = v29;
      *(v31 + 1) = v28;
      v43 = &v31[*(v36 + 24)];
      *v43 = v44;
      *(v43 + 1) = v45;

      sub_10013B1E8(v33, &qword_1003D2120);
      v83[0] = v18;
      v46 = v18[2];
      if (v46 >= v18[3] >> 1)
      {
        sub_10021350C();
        v18 = v83[0];
      }

      v18[2] = v46 + 1;
      sub_100218508(v31, v18 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v46);
      v16 = v69;
      v23 = v70;
      a2 = 1;
      v47 = 1 << *(v69 + 32);
      if (v21 >= v47)
      {
        goto LABEL_37;
      }

      v48 = v70[v80];
      if ((v48 & v81) == 0)
      {
        goto LABEL_38;
      }

      if (*(v69 + 9) != v79)
      {
        goto LABEL_39;
      }

      v49 = v48 & (-2 << (v21 & 0x3F));
      if (v49)
      {
        v47 = __clz(__rbit64(v49)) | v21 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v80 << 6;
        v51 = v80 + 1;
        v52 = &v66[v80];
        while (v51 < (v47 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_10013AC84(v21, v79, v77 & 1);
            v47 = __clz(__rbit64(v53)) + v50;
            goto LABEL_24;
          }
        }

        sub_10013AC84(v21, v79, v77 & 1);
      }

LABEL_24:
      v20 = 0;
      v22 = v78 + 1;
      v21 = v47;
      v19 = v67;
      if (v78 + 1 == v68)
      {

        v15 = v64;
        a2 = v65;
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    swift_once();
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_33:
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v83[0] = v18;
  sub_100080FB4(&qword_1003D2128);
  sub_100214A70();
  v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v62 = v61;

  sub_1000BC808(v60, v62);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa, 0);

  sub_10008E168(v60, v62);
  sub_10008E168(v60, v62);

  _Block_release(a2);
}