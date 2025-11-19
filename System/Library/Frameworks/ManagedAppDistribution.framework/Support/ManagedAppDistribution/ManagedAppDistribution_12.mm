uint64_t sub_10022A854()
{
  v110 = v0;
  v1 = v0;
  sub_100231FCC((v0 + 2));
  static Logger.updates.getter();
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v103 = v0[106];
    v99 = v0[93];
    v101 = v0[98];
    v4 = v0;
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v108 = v7;
    *v5 = 138412546;
    v8 = sub_100625FA0();
    *(v5 + 4) = v8;
    *v6 = v8;
    *(v5 + 12) = 2082;
    swift_getErrorValue();
    v9 = *(v0[67] - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v108);

    *(v5 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Error fetching updates: %{public}s", v5, 0x16u);
    sub_1000032A8(v6, &qword_10077F920);

    sub_10000710C(v7);

    v1 = v4;

    v103(v101, v99);
    v14 = (v4 + 43);
  }

  else
  {
    v15 = v0[106];
    v16 = v0[98];
    v17 = v0[93];

    v15(v16, v17);
    v14 = (v0 + 43);
  }

  sub_100232020(v14);
  v18 = v1[105];
  v19 = v1[104];
  v20 = v1[103] + 1;
  if (v20 == v1[102])
  {
    if (*(v19 + 16))
    {
      static Logger.updates.getter();

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();

      v23 = os_log_type_enabled(v21, v22);
      v24 = v1[100];
      v25 = v1[94];
      v26 = v1;
      v27 = v1[93];
      if (v23)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v107 = v30;
        *v28 = 138412546;
        v31 = sub_100625FA0();
        *(v28 + 4) = v31;
        *v29 = v31;
        *(v28 + 12) = 2082;
        v105 = v18;
        v102 = v27;
        v32 = *(v18 + 16);
        v26[77] = v32;
        v108 = dispatch thunk of CustomStringConvertible.description.getter();
        v109 = v33;
        v34._countAndFlagsBits = 32;
        v34._object = 0xE100000000000000;
        String.append(_:)(v34);
        v35._countAndFlagsBits = 0x657461647075;
        v35._object = 0xE600000000000000;
        String.append(_:)(v35);
        if (v32 == 1)
        {
          v36 = 0;
        }

        else
        {
          v36 = 115;
        }

        if (v32 == 1)
        {
          v37 = 0xE000000000000000;
        }

        else
        {
          v37 = 0xE100000000000000;
        }

        v38 = v37;
        String.append(_:)(*&v36);

        v39 = sub_1002346CC(v108, v109, &v107);

        *(v28 + 14) = v39;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Discovered %{public}s", v28, 0x16u);
        sub_1000032A8(v29, &qword_10077F920);

        sub_10000710C(v30);

        (*(v25 + 8))(v24, v102);
      }

      else
      {
        v105 = v18;

        (*(v25 + 8))(v24, v27);
      }

      v1 = v26;
    }

    else
    {
      v105 = v1[105];
      static Logger.updates.getter();
      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *v82 = 138412290;
        v84 = sub_100625FA0();
        *(v82 + 4) = v84;
        *v83 = v84;
        _os_log_impl(&_mh_execute_header, v80, v81, "[%@] No updates discovered", v82, 0xCu);
        sub_1000032A8(v83, &qword_10077F920);
      }

      v85 = v1[101];
      v86 = v1[94];
      v87 = v1[93];

      (*(v86 + 8))(v85, v87);
    }

    sub_10000710C((v1 + 57));

    v88 = v1[1];

    return v88(v105);
  }

  else
  {
    v1[105] = v18;
    v1[104] = v19;
    v1[103] = v20;
    sub_100231F70(v1[80] + (v20 << 6) + 32, (v1 + 43));
    static Logger.updates.getter();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      *v42 = 138412290;
      v44 = sub_100625FA0();
      *(v42 + 4) = v44;
      *v43 = v44;
      _os_log_impl(&_mh_execute_header, v40, v41, "[%@] Sending installed versions:", v42, 0xCu);
      sub_1000032A8(v43, &qword_10077F920);
    }

    v45 = v1[99];
    v46 = v1[94];
    v47 = v1[93];

    v48 = *(v46 + 8);
    v1[106] = v48;
    v1[107] = (v46 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v100 = v48;
    result = v48(v45, v47);
    v50 = v1[50];
    v1[108] = v50;
    v98 = *(v50 + 16);
    if (v98)
    {
      v51 = 0;
      v96 = v1 + 79;
      v52 = (v50 + 72);
      v97 = v50;
      v89 = v1;
      while (v51 < *(v50 + 16))
      {
        v55 = *(v52 - 4);
        v104 = *(v52 - 5);
        v56 = *(v52 - 3);
        v57 = *(v52 - 2);
        v58 = *(v52 - 1);
        v59 = *v52;

        static Logger.updates.getter();

        v60 = Logger.logObject.getter();
        v61 = v1;
        v62 = static os_log_type_t.default.getter();

        v106 = v62;
        if (os_log_type_enabled(v60, v62))
        {
          v93 = v56;
          v94 = v58;
          log = v60;
          v63 = swift_slowAlloc();
          v92 = swift_slowAlloc();
          *v96 = swift_slowAlloc();
          *v63 = 138413058;
          if (qword_10077E598 != -1)
          {
            swift_once();
          }

          TaskLocal.get()();
          v64 = v61[63];
          v65 = v61;
          if (!v64 || (, , , os_unfair_lock_lock((v64 + 24)), v66 = *(v64 + 16), v67 = v66, os_unfair_lock_unlock((v64 + 24)), , !v66))
          {
            (*(v65[83] + 104))(v65[84], *(v65 + 224), v65[82]);
            v68 = objc_allocWithZone(type metadata accessor for LogKey());
            v67 = LogKey.init(prefix:)();
          }

          v90 = v65[93];
          v91 = v65[95];
          *(v63 + 4) = v67;
          *v92 = v67;
          *(v63 + 12) = 2082;

          v69 = sub_1002346CC(v104, v55, v96);

          *(v63 + 14) = v69;
          *(v63 + 22) = 2082;

          v70 = sub_1002346CC(v93, v57, v96);

          *(v63 + 24) = v70;
          *(v63 + 32) = 2082;

          v71 = sub_1002346CC(v94, v59, v96);

          *(v63 + 34) = v71;
          _os_log_impl(&_mh_execute_header, log, v106, "[%@] %{public}s - %{public}s : %{public}s", v63, 0x2Au);
          sub_1000032A8(v92, &qword_10077F920);

          swift_arrayDestroy();

          result = v100(v91, v90);
          v1 = v89;
        }

        else
        {
          v53 = v61[95];
          v54 = v61[93];

          result = v100(v53, v54);
          v1 = v61;
        }

        v50 = v97;
        ++v51;
        v52 += 6;
        if (v98 == v51)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_28:
      v72 = *(v1 + 343);
      v73 = v1[81];
      sub_100231F70((v1 + 43), (v1 + 2));
      sub_10020A980((v1 + 57), (v1 + 24));
      v74 = *v73;
      v75 = v73[2];
      *(v1 + 6) = v73[1];
      *(v1 + 7) = v75;
      *(v1 + 5) = v74;
      v76 = v73[3];
      v77 = v73[4];
      v78 = v73[5];
      *(v1 + 175) = *(v73 + 95);
      *(v1 + 9) = v77;
      *(v1 + 10) = v78;
      *(v1 + 8) = v76;
      *(v1 + 191) = v72;
      sub_10020A7AC(v73, (v1 + 29));
      v79 = swift_task_alloc();
      v1[109] = v79;
      *v79 = v1;
      v79[1] = sub_100229584;

      return sub_1005D00A0();
    }
  }

  return result;
}

uint64_t sub_10022B450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 840) = a7;
  *(v7 + 832) = a6;
  *(v7 + 127) = a5;
  *(v7 + 824) = a4;
  *(v7 + 816) = a3;
  *(v7 + 808) = a2;
  *(v7 + 800) = a1;
  *(v7 + 848) = type metadata accessor for ADPInstallConfiguration.Storage(0);
  *(v7 + 856) = swift_task_alloc();
  *(v7 + 864) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v7 + 872) = swift_task_alloc();
  *(v7 + 880) = swift_task_alloc();
  v9 = type metadata accessor for URL();
  *(v7 + 888) = v9;
  *(v7 + 896) = *(v9 - 8);
  *(v7 + 904) = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  *(v7 + 912) = v10;
  *(v7 + 920) = *(v10 - 8);
  *(v7 + 928) = swift_task_alloc();
  v11 = type metadata accessor for UUID();
  *(v7 + 936) = v11;
  *(v7 + 944) = *(v11 - 8);
  *(v7 + 952) = swift_task_alloc();
  v12 = type metadata accessor for LogKey.Prefix();
  *(v7 + 960) = v12;
  *(v7 + 968) = *(v12 - 8);
  *(v7 + 976) = swift_task_alloc();
  v13 = type metadata accessor for IdentifiableAvailableUpdate(0);
  *(v7 + 984) = v13;
  *(v7 + 992) = *(v13 - 8);
  *(v7 + 1000) = swift_task_alloc();
  *(v7 + 1008) = swift_task_alloc();
  *(v7 + 1016) = swift_task_alloc();
  *(v7 + 1024) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v7 + 1032) = v14;
  *(v7 + 1040) = *(v14 - 8);
  *(v7 + 1048) = swift_task_alloc();
  *(v7 + 1056) = swift_task_alloc();
  *(v7 + 1064) = swift_task_alloc();
  *(v7 + 1072) = swift_task_alloc();
  *(v7 + 1080) = swift_task_alloc();
  *(v7 + 1088) = swift_task_alloc();
  *(v7 + 1096) = swift_task_alloc();
  v15 = type metadata accessor for Dependencies();
  *(v7 + 1104) = v15;
  *(v7 + 264) = v15;
  *(v7 + 272) = &off_1007702B0;
  *(v7 + 280) = &off_100770270;
  *(v7 + 288) = &off_100770230;
  *(v7 + 296) = &off_100770218;
  *(v7 + 304) = &off_100770208;
  *(v7 + 312) = &off_1007701D0;
  *(v7 + 320) = &off_1007701C0;
  *(v7 + 328) = &off_1007701B0;
  *(v7 + 240) = a1;

  return _swift_task_switch(sub_10022B854, 0, 0);
}

uint64_t sub_10022B854()
{
  sub_100006D8C(v0 + 30, v0[138]);

  v1 = sub_10042A954();

  if (v1)
  {
    v2 = v0[101];
    v4 = v2[3];
    v3 = v2[4];
    v5 = sub_100006D8C(v2, v4);
    v6 = swift_task_alloc();
    v0[139] = v6;
    *v6 = v0;
    v6[1] = sub_10022BBA0;

    return sub_100519B04(v5, v4, v3);
  }

  else
  {
    static Logger.updates.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = sub_100625FA0();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] Ignoring update poll request as device is locked", v10, 0xCu);
      sub_1000032A8(v11, &qword_10077F920);
    }

    v13 = v0[137];
    v14 = v0[130];
    v15 = v0[129];

    (*(v14 + 8))(v13, v15);
    sub_100231094(1);
    sub_10000710C((v0 + 30));

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_10022BBA0(char a1)
{
  *(*v1 + 239) = a1;

  return _swift_task_switch(sub_10022BCA0, 0, 0);
}

uint64_t sub_10022BCA0()
{
  v44 = v0;
  if (*(v0 + 239) == 1)
  {
    v1 = *(v0 + 824);
    if (v1)
    {
      static Logger.updates.getter();

      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.default.getter();

      v4 = os_log_type_enabled(v2, v3);
      v5 = *(v0 + 1080);
      v6 = *(v0 + 1040);
      v7 = *(v0 + 1032);
      if (v4)
      {
        v8 = *(v0 + 816);
        v42 = *(v0 + 1080);
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v43 = v11;
        *v9 = 138412546;
        v12 = sub_100625FA0();
        *(v9 + 4) = v12;
        *v10 = v12;
        *(v9 + 12) = 2082;
        *(v9 + 14) = sub_1002346CC(v8, v1, &v43);
        _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Polling for updates for %{public}s", v9, 0x16u);
        sub_1000032A8(v10, &qword_10077F920);

        sub_10000710C(v11);

        (*(v6 + 8))(v42, v7);
      }

      else
      {

        (*(v6 + 8))(v5, v7);
      }

      v31 = *(v0 + 816);
      *(v0 + 360) = &type metadata for WebDistributor;
      *(v0 + 368) = sub_100231E84();
      *(v0 + 336) = v31;
      *(v0 + 344) = v1;
    }

    else
    {
      static Logger.updates.getter();
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        *v25 = 138412290;
        v27 = sub_100625FA0();
        *(v25 + 4) = v27;
        *v26 = v27;
        _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Polling for all updates", v25, 0xCu);
        sub_1000032A8(v26, &qword_10077F920);
      }

      v28 = *(v0 + 1072);
      v29 = *(v0 + 1040);
      v30 = *(v0 + 1032);

      (*(v29 + 8))(v28, v30);
      *(v0 + 368) = 0;
      *(v0 + 336) = 0u;
      *(v0 + 352) = 0u;
    }

    sub_100006D8C((v0 + 240), *(v0 + 264));

    v32 = sub_10058BEFC();

    v33 = sub_1003C681C(v0 + 336, v32);
    *(v0 + 1120) = v33;

    sub_1000032A8(v0 + 336, &unk_10077FA50);
    v34 = (*sub_100006D8C((v0 + 240), *(v0 + 264)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v36 = v34[4];
    v35 = v34[5];
    v37 = v34[3];
    *(v0 + 111) = *(v34 + 95);
    *(v0 + 80) = v36;
    *(v0 + 96) = v35;
    *(v0 + 64) = v37;
    v39 = v34[1];
    v38 = v34[2];
    *(v0 + 16) = *v34;
    *(v0 + 32) = v39;
    *(v0 + 48) = v38;
    sub_10020A7AC(v0 + 16, v0 + 128);
    v40 = swift_task_alloc();
    *(v0 + 1128) = v40;
    *v40 = v0;
    v40[1] = sub_10022C2D0;
    v41 = *(v0 + 800);

    return sub_10022895C(v33, v0 + 16, 0, v41);
  }

  else
  {
    static Logger.updates.getter();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = sub_100625FA0();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Ignoring update poll request due to feature ineligibility", v15, 0xCu);
      sub_1000032A8(v16, &qword_10077F920);
    }

    v18 = *(v0 + 1088);
    v19 = *(v0 + 1040);
    v20 = *(v0 + 1032);

    (*(v19 + 8))(v18, v20);
    sub_10000710C(v0 + 240);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_10022C2D0(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 1136) = a1;

  sub_10020A92C(v2 + 16);

  return _swift_task_switch(sub_10022C3F8, 0, 0);
}

uint64_t sub_10022C3F8()
{
  v1 = v0[142];
  v2 = *(*sub_100006D8C(v0 + 30, v0[33]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v0[143] = v2;
  v3 = swift_task_alloc();
  v0[144] = v3;
  *(v3 + 16) = v1;

  v4 = swift_task_alloc();
  v0[145] = v4;
  *v4 = v0;
  v4[1] = sub_10022C504;

  return sub_10052C9E4(sub_10052C9E4, sub_100231E68, v3, v2);
}

uint64_t sub_10022C504()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_10022D830;
  }

  else
  {
    v2 = sub_10022C658;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022C658()
{
  v1 = *(v0 + 1136);
  v2 = *(v0 + 832);
  v3 = *(v1 + 16);
  *(v0 + 1176) = v3;
  if (!v3)
  {
    if (v2)
    {
      swift_getObjectType();
      v24._countAndFlagsBits = 0xD000000000000026;
      v24._object = 0x80000001006C4AC0;
      XPCClientProtocol.logMessage(_:)(v24);
    }

LABEL_12:
    if (!v3 || (*(v0 + 127) & 1) == 0)
    {
LABEL_14:

      sub_10000710C(v0 + 240);

      v25 = *(v0 + 8);

      return v25();
    }

    goto LABEL_18;
  }

  if (v2)
  {
    v4 = *(v0 + 1000);
    v5 = *(v0 + 992);
    _StringGuts.grow(_:)(22);

    v6 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = _swiftEmptyArrayStorage;
    v119 = v3;
    v122 = *(v5 + 72);
    v8 = v3;
    do
    {
      v9 = *(v0 + 1000);
      sub_100232074(v6, v9, type metadata accessor for IdentifiableAvailableUpdate);
      _StringGuts.grow(_:)(53);
      v10._countAndFlagsBits = 0x4920656C646E7562;
      v10._object = 0xEB00000000203A44;
      String.append(_:)(v10);
      String.append(_:)(v4[1]);
      v11._countAndFlagsBits = 0x49206D657469202CLL;
      v11._object = 0xEB00000000203A44;
      String.append(_:)(v11);
      String.append(_:)(v4[2]);
      v12._countAndFlagsBits = 0x6F6973726576202CLL;
      v12._object = 0xEE00203A4449206ELL;
      String.append(_:)(v12);
      String.append(_:)(v4[3]);
      v13._countAndFlagsBits = 0x203A504441202CLL;
      v13._object = 0xE700000000000000;
      String.append(_:)(v13);
      sub_100231F28(&qword_10077EE18, &type metadata accessor for URL);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      String.append(_:)(v15);
      sub_1002320FC(v9, type metadata accessor for IdentifiableAvailableUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_100009530(0, *(v7 + 2) + 1, 1, v7);
      }

      v17 = *(v7 + 2);
      v16 = *(v7 + 3);
      if (v17 >= v16 >> 1)
      {
        v7 = sub_100009530((v16 > 1), v17 + 1, 1, v7);
      }

      *(v7 + 2) = v17 + 1;
      v18 = &v7[16 * v17];
      *(v18 + 4) = 0;
      *(v18 + 5) = 0xE000000000000000;
      v6 += v122;
      --v8;
    }

    while (v8);
    swift_getObjectType();
    *(v0 + 776) = v7;
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v19 = BidirectionalCollection<>.joined(separator:)();
    v21 = v20;

    v22._countAndFlagsBits = v19;
    v22._object = v21;
    String.append(_:)(v22);

    v23._countAndFlagsBits = 0xD000000000000014;
    v23._object = 0x80000001006C4AA0;
    XPCClientProtocol.logMessage(_:)(v23);

    v3 = v119;
    goto LABEL_12;
  }

  if (*(v0 + 127) != 1)
  {
    goto LABEL_14;
  }

LABEL_18:
  v27 = 0;
  v125 = (v0 + 760);
  v28 = *(v0 + 992);
  *(v0 + 1232) = *(v28 + 80);
  *(v0 + 1184) = *(v28 + 72);
  *(v0 + 1236) = enum case for LogKey.Prefix.undefined(_:);
  *(v0 + 1240) = enum case for LogKey.Prefix.automaticUpdate(_:);
  *(v0 + 1244) = enum case for AppInstallRequestType.automaticUpdate(_:);
  while (1)
  {
    *(v0 + 1192) = v27;
    v29 = *(v0 + 1024);
    v30 = *(v0 + 1016);
    sub_100232074(*(v0 + 1136) + ((*(v0 + 1232) + 32) & ~*(v0 + 1232)) + *(v0 + 1184) * v27, v29, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_100232074(v29, v30, type metadata accessor for IdentifiableAvailableUpdate);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v31, v32))
    {
      v53 = *(v0 + 1056);
      v54 = *(v0 + 1040);
      v55 = *(v0 + 1032);
      v56 = *(v0 + 1016);

      sub_1002320FC(v56, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v54 + 8))(v53, v55);
      if (!*(v0 + 832))
      {
        goto LABEL_29;
      }

LABEL_28:
      swift_getObjectType();
      *(v0 + 704) = 0;
      *(v0 + 712) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 688) = 0xD000000000000014;
      *(v0 + 696) = 0x80000001006C4A80;
      v57._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v57);

      XPCClientProtocol.logMessage(_:)(*(v0 + 688));

      goto LABEL_29;
    }

    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v125 = v35;
    *v33 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v36 = *(v0 + 544);
    v123 = v35;
    v120 = v32;
    if (!v36 || (, , , os_unfair_lock_lock((v36 + 24)), v37 = *(v36 + 16), v38 = v37, os_unfair_lock_unlock((v36 + 24)), , !v37))
    {
      (*(*(v0 + 968) + 104))(*(v0 + 976), *(v0 + 1236), *(v0 + 960));
      v39 = objc_allocWithZone(type metadata accessor for LogKey());
      v38 = LogKey.init(prefix:)();
    }

    v40 = *(v0 + 1040);
    v115 = *(v0 + 1032);
    v117 = *(v0 + 1056);
    v41 = *(v0 + 1016);
    v42 = *(v0 + 984);
    *(v33 + 4) = v38;
    *v34 = v38;
    *(v33 + 12) = 2082;
    *(v0 + 736) = 0;
    *(v0 + 744) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v41[1]._countAndFlagsBits;
    object = v41[1]._object;

    *(v0 + 720) = countAndFlagsBits;
    *(v0 + 728) = object;
    v45._countAndFlagsBits = 58;
    v45._object = 0xE100000000000000;
    String.append(_:)(v45);
    String.append(_:)(v41[2]);
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v41[3]);
    v47._countAndFlagsBits = 2108704;
    v47._object = 0xE300000000000000;
    String.append(_:)(v47);
    String.append(_:)(*(v41 + *(v42 + 40)));
    v48._countAndFlagsBits = 40;
    v48._object = 0xE100000000000000;
    String.append(_:)(v48);
    String.append(_:)(*(v41 + *(v42 + 36)));
    v49._countAndFlagsBits = 41;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50 = *(v0 + 720);
    v51 = *(v0 + 728);
    sub_1002320FC(v41, type metadata accessor for IdentifiableAvailableUpdate);
    v52 = sub_1002346CC(v50, v51, v125);

    *(v33 + 14) = v52;
    _os_log_impl(&_mh_execute_header, v31, v120, "[%@] Starting update for %{public}s", v33, 0x16u);
    sub_1000032A8(v34, &qword_10077F920);

    sub_10000710C(v123);

    (*(v40 + 8))(v117, v115);
    if (*(v0 + 832))
    {
      goto LABEL_28;
    }

LABEL_29:
    v58 = *(v0 + 1024);
    v59 = *(*(v0 + 984) + 32);
    v60 = URL.host(percentEncoded:)(1);
    if (v60.value._object)
    {
      break;
    }

    sub_1002320FC(*(v0 + 1024), type metadata accessor for IdentifiableAvailableUpdate);
    v27 = *(v0 + 1192) + 1;
    if (v27 == *(v0 + 1176))
    {
      goto LABEL_14;
    }
  }

  v121 = v60;
  v61 = URL.port.getter();
  if ((v62 & 1) == 0)
  {
    v63 = v61;
    *(v0 + 672) = v60;
    v64._countAndFlagsBits = 58;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    *(v0 + 752) = v63;
    v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v65);

    v121 = *(v0 + 672);
  }

  v111 = *(v0 + 1244);
  v66 = *(v0 + 1240);
  v67 = *(v0 + 1024);
  v93 = *(v0 + 984);
  v94 = *(v0 + 1104);
  v68 = *(v0 + 976);
  v69 = *(v0 + 968);
  v70 = *(v0 + 960);
  v116 = *(v0 + 944);
  v118 = *(v0 + 952);
  v114 = *(v0 + 936);
  v71 = *(v0 + 928);
  v98 = v71;
  v72 = *(v0 + 920);
  v110 = *(v0 + 912);
  v108 = *(v0 + 904);
  v113 = *(v0 + 896);
  v126 = *(v0 + 888);
  v109 = *(v0 + 872);
  v105 = *(v0 + 856);
  v101 = *(v0 + 864);
  v102 = *(v0 + 848);
  v106 = *(v0 + 840);
  v107 = *(v0 + 880);
  v103 = *(v0 + 808);
  UUID.init()();
  (*(v69 + 104))(v68, v66, v70);
  v73 = objc_allocWithZone(type metadata accessor for LogKey());
  v97 = LogKey.init(prefix:)();
  (*(v72 + 104))(v71, v111, v110);
  v74 = (v67 + *(v93 + 44));
  v99 = v74[1];
  v100 = *v74;
  v112 = v67[1];
  v95 = *v67;
  v96 = *(v113 + 16);
  v96(v108, v58 + v59, v126);
  (*(v113 + 56))(v107, 1, 1, v126);
  sub_10020A980(v103, v0 + 376);
  sub_100005934(v67 + *(v93 + 48), v109, &unk_1007809F0);
  v75 = *(v0 + 264);
  sub_100006D8C((v0 + 240), v75);
  v76 = *(v75 - 8);
  v104 = swift_task_alloc();
  (*(v76 + 16))();
  v77 = *v104;
  *(v0 + 440) = &type metadata for WebDistributor;
  v78 = sub_100231E84();
  *(v0 + 416) = v121;
  *(v0 + 480) = v94;
  *(v0 + 488) = &off_100770208;
  *(v0 + 448) = v78;
  *(v0 + 456) = v77;
  type metadata accessor for ADPInstallConfiguration(0);
  v79 = swift_allocObject();
  *(v0 + 1200) = v79;
  sub_100231ED8(v0 + 456, v94);
  v80 = *(v94 - 8);
  v124 = swift_task_alloc();
  (*(v80 + 16))();
  v81 = *v124;
  *(v0 + 520) = v94;
  *(v0 + 528) = &off_100770208;
  *(v0 + 496) = v81;
  (*(v116 + 16))(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v118, v114);
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey) = v97;
  v82 = (v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  *v82 = 0;
  v82[1] = 0;
  v83 = (v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  *v83 = v95;
  v83[1] = v112;
  v84 = (v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
  *v84 = 0;
  v84[1] = 0;
  v96(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v108, v126);
  sub_100005934(v107, v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, &unk_1007809F0);
  sub_10020A980(v0 + 376, v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData) = xmmword_10069E8A0;
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) = 2;
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt) = 0;
  v85 = v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  *v85 = 0;
  *(v85 + 8) = 1;
  v86 = v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration;
  *v86 = 0;
  *(v86 + 8) = 1;
  sub_100005934(v109, v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, &unk_1007809F0);
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) = 0;
  sub_10020A980(v0 + 496, v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);
  sub_10020A980(v0 + 416, v101);
  (*(v72 + 16))(v101 + v102[7], v71, v110);
  v87 = v102[9];
  v88 = type metadata accessor for MediaAPIMetadata();
  (*(*(v88 - 8) + 56))(v101 + v87, 1, 1, v88);
  *(v101 + 40) = 0;
  *(v101 + 48) = 0;
  v89 = (v101 + v102[8]);
  *v89 = v100;
  v89[1] = v99;
  *(v101 + v102[10]) = 0;
  sub_1001F0C48(&qword_10077EE10);
  v90 = swift_allocObject();
  *(v90 + ((*(*v90 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100232074(v101, v105, type metadata accessor for ADPInstallConfiguration.Storage);

  sub_1002320FC(v101, type metadata accessor for ADPInstallConfiguration.Storage);
  sub_1000032A8(v109, &unk_1007809F0);
  sub_10000710C(v0 + 376);
  sub_1000032A8(v107, &unk_1007809F0);
  (*(v113 + 8))(v108, v126);
  (*(v72 + 8))(v98, v110);
  (*(v116 + 8))(v118, v114);
  sub_10000710C(v0 + 416);
  sub_10000710C(v0 + 496);
  sub_100232220(v105, v90 + *(*v90 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for ADPInstallConfiguration.Storage);
  *(v79 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage) = v90;
  sub_10000710C(v0 + 456);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1208) = sub_100400560(v91, v106);
  v92 = swift_task_alloc();
  *(v0 + 1216) = v92;
  *v92 = v0;
  v92[1] = sub_10022EC40;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_10022D830()
{
  v148 = v0;
  static Logger.updates.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v135 = *(v0 + 1040);
    v139 = *(v0 + 1032);
    v143 = *(v0 + 1064);
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v146 = v5;
    *v3 = 138412546;
    v6 = sub_100625FA0();
    *(v3 + 4) = v6;
    *v4 = v6;
    *(v3 + 12) = 2082;
    swift_getErrorValue();
    v7 = *(*(v0 + 576) - 8);
    swift_task_alloc();
    (*(v7 + 16))();
    v8 = String.init<A>(describing:)();
    v10 = v9;

    v11 = sub_1002346CC(v8, v10, &v146);

    *(v3 + 14) = v11;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Error saving updates to database: %{public}s", v3, 0x16u);
    sub_1000032A8(v4, &qword_10077F920);

    sub_10000710C(v5);

    (*(v135 + 8))(v143, v139);
  }

  else
  {
    v12 = *(v0 + 1064);
    v13 = *(v0 + 1040);
    v14 = *(v0 + 1032);

    (*(v13 + 8))(v12, v14);
  }

  v15 = *(v0 + 1136);
  v16 = *(v0 + 832);
  v17 = *(v15 + 16);
  *(v0 + 1176) = v17;
  if (!v17)
  {
    if (v16)
    {
      swift_getObjectType();
      v40._countAndFlagsBits = 0xD000000000000026;
      v40._object = 0x80000001006C4AC0;
      XPCClientProtocol.logMessage(_:)(v40);
    }

LABEL_15:
    if (!v17 || (*(v0 + 127) & 1) == 0)
    {
LABEL_17:

      sub_10000710C(v0 + 240);

      v41 = *(v0 + 8);

      return v41();
    }

    goto LABEL_21;
  }

  if (v16)
  {
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v146 = 0;
    v147 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v20 = v15 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v21 = _swiftEmptyArrayStorage;
    v136 = v17;
    v140 = *(v19 + 72);
    v22 = v17;
    do
    {
      v23 = *(v0 + 1000);
      sub_100232074(v20, v23, type metadata accessor for IdentifiableAvailableUpdate);
      v146 = 0;
      v147 = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      v24._countAndFlagsBits = 0x4920656C646E7562;
      v24._object = 0xEB00000000203A44;
      String.append(_:)(v24);
      String.append(_:)(v18[1]);
      v25._countAndFlagsBits = 0x49206D657469202CLL;
      v25._object = 0xEB00000000203A44;
      String.append(_:)(v25);
      String.append(_:)(v18[2]);
      v26._countAndFlagsBits = 0x6F6973726576202CLL;
      v26._object = 0xEE00203A4449206ELL;
      String.append(_:)(v26);
      String.append(_:)(v18[3]);
      v27._countAndFlagsBits = 0x203A504441202CLL;
      v27._object = 0xE700000000000000;
      String.append(_:)(v27);
      sub_100231F28(&qword_10077EE18, &type metadata accessor for URL);
      v28._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v28);

      v29._countAndFlagsBits = 0;
      v29._object = 0xE000000000000000;
      String.append(_:)(v29);
      v31 = v146;
      v30 = v147;
      sub_1002320FC(v23, type metadata accessor for IdentifiableAvailableUpdate);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_100009530(0, *(v21 + 2) + 1, 1, v21);
      }

      v33 = *(v21 + 2);
      v32 = *(v21 + 3);
      if (v33 >= v32 >> 1)
      {
        v21 = sub_100009530((v32 > 1), v33 + 1, 1, v21);
      }

      *(v21 + 2) = v33 + 1;
      v34 = &v21[16 * v33];
      *(v34 + 4) = v31;
      *(v34 + 5) = v30;
      v20 += v140;
      --v22;
    }

    while (v22);
    swift_getObjectType();
    *(v0 + 776) = v21;
    sub_1001F0C48(&unk_10077FB40);
    sub_1001F766C();
    v35 = BidirectionalCollection<>.joined(separator:)();
    v37 = v36;

    v38._countAndFlagsBits = v35;
    v38._object = v37;
    String.append(_:)(v38);

    v39._countAndFlagsBits = 0xD000000000000014;
    v39._object = 0x80000001006C4AA0;
    XPCClientProtocol.logMessage(_:)(v39);

    v17 = v136;
    goto LABEL_15;
  }

  if (*(v0 + 127) != 1)
  {
    goto LABEL_17;
  }

LABEL_21:
  v43 = 0;
  v144 = (v0 + 760);
  v44 = *(v0 + 992);
  *(v0 + 1232) = *(v44 + 80);
  *(v0 + 1184) = *(v44 + 72);
  *(v0 + 1236) = enum case for LogKey.Prefix.undefined(_:);
  *(v0 + 1240) = enum case for LogKey.Prefix.automaticUpdate(_:);
  *(v0 + 1244) = enum case for AppInstallRequestType.automaticUpdate(_:);
  while (1)
  {
    *(v0 + 1192) = v43;
    v45 = *(v0 + 1024);
    v46 = *(v0 + 1016);
    sub_100232074(*(v0 + 1136) + ((*(v0 + 1232) + 32) & ~*(v0 + 1232)) + *(v0 + 1184) * v43, v45, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_100232074(v45, v46, type metadata accessor for IdentifiableAvailableUpdate);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v47, v48))
    {
      v69 = *(v0 + 1056);
      v70 = *(v0 + 1040);
      v71 = *(v0 + 1032);
      v72 = *(v0 + 1016);

      sub_1002320FC(v72, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v70 + 8))(v69, v71);
      if (!*(v0 + 832))
      {
        goto LABEL_32;
      }

LABEL_31:
      swift_getObjectType();
      *(v0 + 704) = 0;
      *(v0 + 712) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 688) = 0xD000000000000014;
      *(v0 + 696) = 0x80000001006C4A80;
      v73._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v73);

      XPCClientProtocol.logMessage(_:)(*(v0 + 688));

      goto LABEL_32;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    *v144 = v51;
    *v49 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v52 = *(v0 + 544);
    v141 = v51;
    v137 = v48;
    if (!v52 || (, , , os_unfair_lock_lock((v52 + 24)), v53 = *(v52 + 16), v54 = v53, os_unfair_lock_unlock((v52 + 24)), , !v53))
    {
      (*(*(v0 + 968) + 104))(*(v0 + 976), *(v0 + 1236), *(v0 + 960));
      v55 = objc_allocWithZone(type metadata accessor for LogKey());
      v54 = LogKey.init(prefix:)();
    }

    v56 = *(v0 + 1040);
    v131 = *(v0 + 1032);
    v133 = *(v0 + 1056);
    v57 = *(v0 + 1016);
    v58 = *(v0 + 984);
    *(v49 + 4) = v54;
    *v50 = v54;
    *(v49 + 12) = 2082;
    *(v0 + 736) = 0;
    *(v0 + 744) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v57[1]._countAndFlagsBits;
    object = v57[1]._object;

    *(v0 + 720) = countAndFlagsBits;
    *(v0 + 728) = object;
    v61._countAndFlagsBits = 58;
    v61._object = 0xE100000000000000;
    String.append(_:)(v61);
    String.append(_:)(v57[2]);
    v62._countAndFlagsBits = 58;
    v62._object = 0xE100000000000000;
    String.append(_:)(v62);
    String.append(_:)(v57[3]);
    v63._countAndFlagsBits = 2108704;
    v63._object = 0xE300000000000000;
    String.append(_:)(v63);
    String.append(_:)(*(v57 + *(v58 + 40)));
    v64._countAndFlagsBits = 40;
    v64._object = 0xE100000000000000;
    String.append(_:)(v64);
    String.append(_:)(*(v57 + *(v58 + 36)));
    v65._countAndFlagsBits = 41;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    v66 = *(v0 + 720);
    v67 = *(v0 + 728);
    sub_1002320FC(v57, type metadata accessor for IdentifiableAvailableUpdate);
    v68 = sub_1002346CC(v66, v67, v144);

    *(v49 + 14) = v68;
    _os_log_impl(&_mh_execute_header, v47, v137, "[%@] Starting update for %{public}s", v49, 0x16u);
    sub_1000032A8(v50, &qword_10077F920);

    sub_10000710C(v141);

    (*(v56 + 8))(v133, v131);
    if (*(v0 + 832))
    {
      goto LABEL_31;
    }

LABEL_32:
    v74 = *(v0 + 1024);
    v75 = *(*(v0 + 984) + 32);
    v76 = URL.host(percentEncoded:)(1);
    if (v76.value._object)
    {
      break;
    }

    sub_1002320FC(*(v0 + 1024), type metadata accessor for IdentifiableAvailableUpdate);
    v43 = *(v0 + 1192) + 1;
    if (v43 == *(v0 + 1176))
    {
      goto LABEL_17;
    }
  }

  v138 = v76;
  v77 = URL.port.getter();
  if ((v78 & 1) == 0)
  {
    v79 = v77;
    *(v0 + 672) = v76;
    v80._countAndFlagsBits = 58;
    v80._object = 0xE100000000000000;
    String.append(_:)(v80);
    *(v0 + 752) = v79;
    v81._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v81);

    v138 = *(v0 + 672);
  }

  v127 = *(v0 + 1244);
  v82 = *(v0 + 1240);
  v83 = *(v0 + 1024);
  v109 = *(v0 + 984);
  v110 = *(v0 + 1104);
  v84 = *(v0 + 976);
  v85 = *(v0 + 968);
  v86 = *(v0 + 960);
  v132 = *(v0 + 944);
  v134 = *(v0 + 952);
  v130 = *(v0 + 936);
  v87 = *(v0 + 928);
  v114 = v87;
  v88 = *(v0 + 920);
  v126 = *(v0 + 912);
  v124 = *(v0 + 904);
  v129 = *(v0 + 896);
  v145 = *(v0 + 888);
  v125 = *(v0 + 872);
  v121 = *(v0 + 856);
  v117 = *(v0 + 864);
  v118 = *(v0 + 848);
  v122 = *(v0 + 840);
  v123 = *(v0 + 880);
  v119 = *(v0 + 808);
  UUID.init()();
  (*(v85 + 104))(v84, v82, v86);
  v89 = objc_allocWithZone(type metadata accessor for LogKey());
  v113 = LogKey.init(prefix:)();
  (*(v88 + 104))(v87, v127, v126);
  v90 = (v83 + *(v109 + 44));
  v115 = v90[1];
  v116 = *v90;
  v128 = v83[1];
  v111 = *v83;
  v112 = *(v129 + 16);
  v112(v124, v74 + v75, v145);
  (*(v129 + 56))(v123, 1, 1, v145);
  sub_10020A980(v119, v0 + 376);
  sub_100005934(v83 + *(v109 + 48), v125, &unk_1007809F0);
  v91 = *(v0 + 264);
  sub_100006D8C((v0 + 240), v91);
  v92 = *(v91 - 8);
  v120 = swift_task_alloc();
  (*(v92 + 16))();
  v93 = *v120;
  *(v0 + 440) = &type metadata for WebDistributor;
  v94 = sub_100231E84();
  *(v0 + 416) = v138;
  *(v0 + 480) = v110;
  *(v0 + 488) = &off_100770208;
  *(v0 + 448) = v94;
  *(v0 + 456) = v93;
  type metadata accessor for ADPInstallConfiguration(0);
  v95 = swift_allocObject();
  *(v0 + 1200) = v95;
  sub_100231ED8(v0 + 456, v110);
  v96 = *(v110 - 8);
  v142 = swift_task_alloc();
  (*(v96 + 16))();
  v97 = *v142;
  *(v0 + 520) = v110;
  *(v0 + 528) = &off_100770208;
  *(v0 + 496) = v97;
  (*(v132 + 16))(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v134, v130);
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey) = v113;
  v98 = (v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  *v98 = 0;
  v98[1] = 0;
  v99 = (v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  *v99 = v111;
  v99[1] = v128;
  v100 = (v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
  *v100 = 0;
  v100[1] = 0;
  v112(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v124, v145);
  sub_100005934(v123, v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, &unk_1007809F0);
  sub_10020A980(v0 + 376, v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData) = xmmword_10069E8A0;
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) = 2;
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt) = 0;
  v101 = v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  *v101 = 0;
  *(v101 + 8) = 1;
  v102 = v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration;
  *v102 = 0;
  *(v102 + 8) = 1;
  sub_100005934(v125, v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, &unk_1007809F0);
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) = 0;
  sub_10020A980(v0 + 496, v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);
  sub_10020A980(v0 + 416, v117);
  (*(v88 + 16))(v117 + v118[7], v87, v126);
  v103 = v118[9];
  v104 = type metadata accessor for MediaAPIMetadata();
  (*(*(v104 - 8) + 56))(v117 + v103, 1, 1, v104);
  *(v117 + 40) = 0;
  *(v117 + 48) = 0;
  v105 = (v117 + v118[8]);
  *v105 = v116;
  v105[1] = v115;
  *(v117 + v118[10]) = 0;
  sub_1001F0C48(&qword_10077EE10);
  v106 = swift_allocObject();
  *(v106 + ((*(*v106 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100232074(v117, v121, type metadata accessor for ADPInstallConfiguration.Storage);

  sub_1002320FC(v117, type metadata accessor for ADPInstallConfiguration.Storage);
  sub_1000032A8(v125, &unk_1007809F0);
  sub_10000710C(v0 + 376);
  sub_1000032A8(v123, &unk_1007809F0);
  (*(v129 + 8))(v124, v145);
  (*(v88 + 8))(v114, v126);
  (*(v132 + 8))(v134, v130);
  sub_10000710C(v0 + 416);
  sub_10000710C(v0 + 496);
  sub_100232220(v121, v106 + *(*v106 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for ADPInstallConfiguration.Storage);
  *(v95 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage) = v106;
  sub_10000710C(v0 + 456);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1208) = sub_100400560(v107, v122);
  v108 = swift_task_alloc();
  *(v0 + 1216) = v108;
  *v108 = v0;
  v108[1] = sub_10022EC40;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_10022EC40()
{
  *(*v1 + 1224) = v0;

  if (v0)
  {
    v2 = sub_10022FBFC;
  }

  else
  {
    v2 = sub_10022ED54;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10022ED54()
{
  v1 = *(v0 + 1024);

  sub_1002320FC(v1, type metadata accessor for IdentifiableAvailableUpdate);
  v2 = *(v0 + 1192) + 1;
  if (v2 == *(v0 + 1176))
  {
LABEL_2:

    sub_10000710C(v0 + 240);

    v3 = *(v0 + 8);

    return v3();
  }

  v98 = (v0 + 760);
  while (1)
  {
    *(v0 + 1192) = v2;
    v5 = *(v0 + 1024);
    v6 = *(v0 + 1016);
    sub_100232074(*(v0 + 1136) + ((*(v0 + 1232) + 32) & ~*(v0 + 1232)) + *(v0 + 1184) * v2, v5, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_100232074(v5, v6, type metadata accessor for IdentifiableAvailableUpdate);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v7, v8))
    {
      v28 = *(v0 + 1056);
      v29 = *(v0 + 1040);
      v30 = *(v0 + 1032);
      v31 = *(v0 + 1016);

      sub_1002320FC(v31, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v29 + 8))(v28, v30);
      if (!*(v0 + 832))
      {
        goto LABEL_16;
      }

LABEL_15:
      swift_getObjectType();
      *(v0 + 704) = 0;
      *(v0 + 712) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 688) = 0xD000000000000014;
      *(v0 + 696) = 0x80000001006C4A80;
      v32._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v32);

      XPCClientProtocol.logMessage(_:)(*(v0 + 688));

      goto LABEL_16;
    }

    v94 = v8;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v98 = v96;
    *v9 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v11 = *(v0 + 544);
    if (!v11 || (, , , os_unfair_lock_lock((v11 + 24)), v12 = *(v11 + 16), v13 = v12, os_unfair_lock_unlock((v11 + 24)), , !v12))
    {
      (*(*(v0 + 968) + 104))(*(v0 + 976), *(v0 + 1236), *(v0 + 960));
      v14 = objc_allocWithZone(type metadata accessor for LogKey());
      v13 = LogKey.init(prefix:)();
    }

    v15 = *(v0 + 1040);
    v90 = *(v0 + 1032);
    v92 = *(v0 + 1056);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 984);
    *(v9 + 4) = v13;
    *v10 = v13;
    *(v9 + 12) = 2082;
    *(v0 + 736) = 0;
    *(v0 + 744) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v16[1]._countAndFlagsBits;
    object = v16[1]._object;

    *(v0 + 720) = countAndFlagsBits;
    *(v0 + 728) = object;
    v20._countAndFlagsBits = 58;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    String.append(_:)(v16[2]);
    v21._countAndFlagsBits = 58;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    String.append(_:)(v16[3]);
    v22._countAndFlagsBits = 2108704;
    v22._object = 0xE300000000000000;
    String.append(_:)(v22);
    String.append(_:)(*(v16 + *(v17 + 40)));
    v23._countAndFlagsBits = 40;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    String.append(_:)(*(v16 + *(v17 + 36)));
    v24._countAndFlagsBits = 41;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = *(v0 + 720);
    v26 = *(v0 + 728);
    sub_1002320FC(v16, type metadata accessor for IdentifiableAvailableUpdate);
    v27 = sub_1002346CC(v25, v26, v98);

    *(v9 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v7, v94, "[%@] Starting update for %{public}s", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v96);

    (*(v15 + 8))(v92, v90);
    if (*(v0 + 832))
    {
      goto LABEL_15;
    }

LABEL_16:
    v33 = *(v0 + 1024);
    v34 = *(*(v0 + 984) + 32);
    v35 = URL.host(percentEncoded:)(1);
    if (v35.value._object)
    {
      break;
    }

    sub_1002320FC(*(v0 + 1024), type metadata accessor for IdentifiableAvailableUpdate);
    v2 = *(v0 + 1192) + 1;
    if (v2 == *(v0 + 1176))
    {
      goto LABEL_2;
    }
  }

  v95 = v35;
  v36 = URL.port.getter();
  if ((v37 & 1) == 0)
  {
    v38 = v36;
    *(v0 + 672) = v35;
    v39._countAndFlagsBits = 58;
    v39._object = 0xE100000000000000;
    String.append(_:)(v39);
    *(v0 + 752) = v38;
    v40._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v40);

    v95 = *(v0 + 672);
  }

  v86 = *(v0 + 1244);
  v41 = *(v0 + 1240);
  v42 = *(v0 + 1024);
  v68 = *(v0 + 984);
  v69 = *(v0 + 1104);
  v43 = *(v0 + 976);
  v44 = *(v0 + 968);
  v45 = *(v0 + 960);
  v91 = *(v0 + 944);
  v93 = *(v0 + 952);
  v89 = *(v0 + 936);
  v46 = *(v0 + 928);
  v73 = v46;
  v47 = *(v0 + 920);
  v85 = *(v0 + 912);
  v83 = *(v0 + 904);
  v88 = *(v0 + 896);
  v99 = *(v0 + 888);
  v84 = *(v0 + 872);
  v80 = *(v0 + 856);
  v76 = *(v0 + 864);
  v77 = *(v0 + 848);
  v81 = *(v0 + 840);
  v82 = *(v0 + 880);
  v78 = *(v0 + 808);
  UUID.init()();
  (*(v44 + 104))(v43, v41, v45);
  v48 = objc_allocWithZone(type metadata accessor for LogKey());
  v72 = LogKey.init(prefix:)();
  (*(v47 + 104))(v46, v86, v85);
  v49 = (v42 + *(v68 + 44));
  v74 = v49[1];
  v75 = *v49;
  v70 = *v42;
  v87 = v42[1];
  v71 = *(v88 + 16);
  v71(v83, v33 + v34, v99);
  (*(v88 + 56))(v82, 1, 1, v99);
  sub_10020A980(v78, v0 + 376);
  sub_100005934(v42 + *(v68 + 48), v84, &unk_1007809F0);
  v50 = *(v0 + 264);
  sub_100006D8C((v0 + 240), v50);
  v51 = *(v50 - 8);
  v79 = swift_task_alloc();
  (*(v51 + 16))();
  v52 = *v79;
  *(v0 + 440) = &type metadata for WebDistributor;
  v53 = sub_100231E84();
  *(v0 + 416) = v95;
  *(v0 + 480) = v69;
  *(v0 + 488) = &off_100770208;
  *(v0 + 448) = v53;
  *(v0 + 456) = v52;
  type metadata accessor for ADPInstallConfiguration(0);
  v54 = swift_allocObject();
  *(v0 + 1200) = v54;
  sub_100231ED8(v0 + 456, v69);
  v55 = *(v69 - 8);
  v97 = swift_task_alloc();
  (*(v55 + 16))();
  v56 = *v97;
  *(v0 + 520) = v69;
  *(v0 + 528) = &off_100770208;
  *(v0 + 496) = v56;
  (*(v91 + 16))(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v93, v89);
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey) = v72;
  v57 = (v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  *v57 = 0;
  v57[1] = 0;
  v58 = (v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  *v58 = v70;
  v58[1] = v87;
  v59 = (v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
  *v59 = 0;
  v59[1] = 0;
  v71(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v83, v99);
  sub_100005934(v82, v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, &unk_1007809F0);
  sub_10020A980(v0 + 376, v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData) = xmmword_10069E8A0;
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) = 2;
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt) = 0;
  v60 = v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  *v60 = 0;
  *(v60 + 8) = 1;
  v61 = v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration;
  *v61 = 0;
  *(v61 + 8) = 1;
  sub_100005934(v84, v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, &unk_1007809F0);
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) = 0;
  sub_10020A980(v0 + 496, v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);
  sub_10020A980(v0 + 416, v76);
  (*(v47 + 16))(v76 + v77[7], v46, v85);
  v62 = v77[9];
  v63 = type metadata accessor for MediaAPIMetadata();
  (*(*(v63 - 8) + 56))(v76 + v62, 1, 1, v63);
  *(v76 + 40) = 0;
  *(v76 + 48) = 0;
  v64 = (v76 + v77[8]);
  *v64 = v75;
  v64[1] = v74;
  *(v76 + v77[10]) = 0;
  sub_1001F0C48(&qword_10077EE10);
  v65 = swift_allocObject();
  *(v65 + ((*(*v65 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100232074(v76, v80, type metadata accessor for ADPInstallConfiguration.Storage);

  sub_1002320FC(v76, type metadata accessor for ADPInstallConfiguration.Storage);
  sub_1000032A8(v84, &unk_1007809F0);
  sub_10000710C(v0 + 376);
  sub_1000032A8(v82, &unk_1007809F0);
  (*(v88 + 8))(v83, v99);
  (*(v47 + 8))(v73, v85);
  (*(v91 + 8))(v93, v89);
  sub_10000710C(v0 + 416);
  sub_10000710C(v0 + 496);
  sub_100232220(v80, v65 + *(*v65 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for ADPInstallConfiguration.Storage);
  *(v54 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage) = v65;
  sub_10000710C(v0 + 456);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1208) = sub_100400560(v66, v81);
  v67 = swift_task_alloc();
  *(v0 + 1216) = v67;
  *v67 = v0;
  v67[1] = sub_10022EC40;

  return sub_1003FF6B0(v0 + 240);
}

uint64_t sub_10022FBFC()
{
  v130 = v0;
  if (*(v0 + 832))
  {
    swift_getObjectType();
    *(v0 + 656) = 0;
    *(v0 + 664) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);
    v1 = *(v0 + 664);
    *(v0 + 640) = *(v0 + 656);
    *(v0 + 648) = v1;
    v2._countAndFlagsBits = 0xD000000000000019;
    v2._object = 0x80000001006C4A60;
    String.append(_:)(v2);
    v3._countAndFlagsBits = sub_1005E2414();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 8250;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    swift_getErrorValue();
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    XPCClientProtocol.logMessage(_:)(*(v0 + 640));
  }

  v5 = *(v0 + 1024);
  v6 = *(v0 + 1008);
  static Logger.updates.getter();
  sub_100232074(v5, v6, type metadata accessor for IdentifiableAvailableUpdate);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1048);
  v11 = *(v0 + 1040);
  v12 = *(v0 + 1032);
  v13 = *(v0 + 1024);
  v14 = *(v0 + 1008);
  if (v9)
  {
    v15 = swift_slowAlloc();
    v126 = v10;
    v16 = swift_slowAlloc();
    v129[0] = swift_slowAlloc();
    *v15 = 138412802;
    v17 = sub_100625FA0();
    *(v15 + 4) = v17;
    *v16 = v17;
    v121 = v13;
    *(v15 + 12) = 2082;
    v118 = v12;
    v18 = sub_1005E2414();
    v20 = v19;
    sub_1002320FC(v14, type metadata accessor for IdentifiableAvailableUpdate);
    v21 = sub_1002346CC(v18, v20, v129);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2082;
    swift_getErrorValue();
    v22 = *(*(v0 + 600) - 8);
    swift_task_alloc();
    (*(v22 + 16))();
    v23 = String.init<A>(describing:)();
    v25 = v24;

    v26 = sub_1002346CC(v23, v25, v129);

    *(v15 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Unable to enqueue update %{public}s: %{public}s", v15, 0x20u);
    sub_1000032A8(v16, &qword_10077F920);

    swift_arrayDestroy();

    (*(v11 + 8))(v126, v118);
    v27 = v121;
  }

  else
  {

    sub_1002320FC(v14, type metadata accessor for IdentifiableAvailableUpdate);
    (*(v11 + 8))(v10, v12);
    v27 = v13;
  }

  sub_1002320FC(v27, type metadata accessor for IdentifiableAvailableUpdate);
  v28 = *(v0 + 1192) + 1;
  if (v28 == *(v0 + 1176))
  {
LABEL_7:

    sub_10000710C(v0 + 240);

    v29 = *(v0 + 8);

    return v29();
  }

  v127 = (v0 + 760);
  while (1)
  {
    *(v0 + 1192) = v28;
    v31 = *(v0 + 1024);
    v32 = *(v0 + 1016);
    sub_100232074(*(v0 + 1136) + ((*(v0 + 1232) + 32) & ~*(v0 + 1232)) + *(v0 + 1184) * v28, v31, type metadata accessor for IdentifiableAvailableUpdate);
    static Logger.updates.getter();
    sub_100232074(v31, v32, type metadata accessor for IdentifiableAvailableUpdate);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v33, v34))
    {
      v54 = *(v0 + 1056);
      v55 = *(v0 + 1040);
      v56 = *(v0 + 1032);
      v57 = *(v0 + 1016);

      sub_1002320FC(v57, type metadata accessor for IdentifiableAvailableUpdate);
      (*(v55 + 8))(v54, v56);
      if (!*(v0 + 832))
      {
        goto LABEL_21;
      }

LABEL_20:
      swift_getObjectType();
      *(v0 + 704) = 0;
      *(v0 + 712) = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      *(v0 + 688) = 0xD000000000000014;
      *(v0 + 696) = 0x80000001006C4A80;
      v58._countAndFlagsBits = sub_1005E2220(1);
      String.append(_:)(v58);

      XPCClientProtocol.logMessage(_:)(*(v0 + 688));

      goto LABEL_21;
    }

    v122 = v34;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v124 = swift_slowAlloc();
    *v127 = v124;
    *v35 = 138412546;
    if (qword_10077E598 != -1)
    {
      swift_once();
    }

    TaskLocal.get()();
    v37 = *(v0 + 544);
    if (!v37 || (, , , os_unfair_lock_lock((v37 + 24)), v38 = *(v37 + 16), v39 = v38, os_unfair_lock_unlock((v37 + 24)), , !v38))
    {
      (*(*(v0 + 968) + 104))(*(v0 + 976), *(v0 + 1236), *(v0 + 960));
      v40 = objc_allocWithZone(type metadata accessor for LogKey());
      v39 = LogKey.init(prefix:)();
    }

    v41 = *(v0 + 1040);
    v116 = *(v0 + 1032);
    v119 = *(v0 + 1056);
    v42 = *(v0 + 1016);
    v43 = *(v0 + 984);
    *(v35 + 4) = v39;
    *v36 = v39;
    *(v35 + 12) = 2082;
    *(v0 + 736) = 0;
    *(v0 + 744) = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    countAndFlagsBits = v42[1]._countAndFlagsBits;
    object = v42[1]._object;

    *(v0 + 720) = countAndFlagsBits;
    *(v0 + 728) = object;
    v46._countAndFlagsBits = 58;
    v46._object = 0xE100000000000000;
    String.append(_:)(v46);
    String.append(_:)(v42[2]);
    v47._countAndFlagsBits = 58;
    v47._object = 0xE100000000000000;
    String.append(_:)(v47);
    String.append(_:)(v42[3]);
    v48._countAndFlagsBits = 2108704;
    v48._object = 0xE300000000000000;
    String.append(_:)(v48);
    String.append(_:)(*(v42 + *(v43 + 40)));
    v49._countAndFlagsBits = 40;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    String.append(_:)(*(v42 + *(v43 + 36)));
    v50._countAndFlagsBits = 41;
    v50._object = 0xE100000000000000;
    String.append(_:)(v50);
    v51 = *(v0 + 720);
    v52 = *(v0 + 728);
    sub_1002320FC(v42, type metadata accessor for IdentifiableAvailableUpdate);
    v53 = sub_1002346CC(v51, v52, v127);

    *(v35 + 14) = v53;
    _os_log_impl(&_mh_execute_header, v33, v122, "[%@] Starting update for %{public}s", v35, 0x16u);
    sub_1000032A8(v36, &qword_10077F920);

    sub_10000710C(v124);

    (*(v41 + 8))(v119, v116);
    if (*(v0 + 832))
    {
      goto LABEL_20;
    }

LABEL_21:
    v59 = *(v0 + 1024);
    v60 = *(*(v0 + 984) + 32);
    v61 = URL.host(percentEncoded:)(1);
    if (v61.value._object)
    {
      break;
    }

    sub_1002320FC(*(v0 + 1024), type metadata accessor for IdentifiableAvailableUpdate);
    v28 = *(v0 + 1192) + 1;
    if (v28 == *(v0 + 1176))
    {
      goto LABEL_7;
    }
  }

  v123 = v61;
  v62 = URL.port.getter();
  if ((v63 & 1) == 0)
  {
    v64 = v62;
    *(v0 + 672) = v61;
    v65._countAndFlagsBits = 58;
    v65._object = 0xE100000000000000;
    String.append(_:)(v65);
    *(v0 + 752) = v64;
    v66._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v66);

    v123 = *(v0 + 672);
  }

  v112 = *(v0 + 1244);
  v67 = *(v0 + 1240);
  v68 = *(v0 + 1024);
  v94 = *(v0 + 984);
  v95 = *(v0 + 1104);
  v69 = *(v0 + 976);
  v70 = *(v0 + 968);
  v71 = *(v0 + 960);
  v117 = *(v0 + 944);
  v120 = *(v0 + 952);
  v115 = *(v0 + 936);
  v72 = *(v0 + 928);
  v99 = v72;
  v73 = *(v0 + 920);
  v111 = *(v0 + 912);
  v109 = *(v0 + 904);
  v114 = *(v0 + 896);
  v128 = *(v0 + 888);
  v110 = *(v0 + 872);
  v106 = *(v0 + 856);
  v102 = *(v0 + 864);
  v103 = *(v0 + 848);
  v107 = *(v0 + 840);
  v108 = *(v0 + 880);
  v104 = *(v0 + 808);
  UUID.init()();
  (*(v70 + 104))(v69, v67, v71);
  v74 = objc_allocWithZone(type metadata accessor for LogKey());
  v98 = LogKey.init(prefix:)();
  (*(v73 + 104))(v72, v112, v111);
  v75 = (v68 + *(v94 + 44));
  v100 = v75[1];
  v101 = *v75;
  v113 = v68[1];
  v96 = *v68;
  v97 = *(v114 + 16);
  v97(v109, v59 + v60, v128);
  (*(v114 + 56))(v108, 1, 1, v128);
  sub_10020A980(v104, v0 + 376);
  sub_100005934(v68 + *(v94 + 48), v110, &unk_1007809F0);
  v76 = *(v0 + 264);
  sub_100006D8C((v0 + 240), v76);
  v77 = *(v76 - 8);
  v105 = swift_task_alloc();
  (*(v77 + 16))();
  v78 = *v105;
  *(v0 + 440) = &type metadata for WebDistributor;
  v79 = sub_100231E84();
  *(v0 + 416) = v123;
  *(v0 + 480) = v95;
  *(v0 + 488) = &off_100770208;
  *(v0 + 448) = v79;
  *(v0 + 456) = v78;
  type metadata accessor for ADPInstallConfiguration(0);
  v80 = swift_allocObject();
  *(v0 + 1200) = v80;
  sub_100231ED8(v0 + 456, v95);
  v81 = *(v95 - 8);
  v125 = swift_task_alloc();
  (*(v81 + 16))();
  v82 = *v125;
  *(v0 + 520) = v95;
  *(v0 + 528) = &off_100770208;
  *(v0 + 496) = v82;
  (*(v117 + 16))(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_id, v120, v115);
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey) = v98;
  v83 = (v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_oAuthToken);
  *v83 = 0;
  v83[1] = 0;
  v84 = (v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_accountID);
  *v84 = v96;
  v84[1] = v113;
  v85 = (v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_clientID);
  *v85 = 0;
  v85[1] = 0;
  v97(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v109, v128);
  sub_100005934(v108, v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, &unk_1007809F0);
  sub_10020A980(v0 + 376, v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag);
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_authenticationContextData) = xmmword_10069E8A0;
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) = 2;
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_allowAccountPrompt) = 0;
  v86 = v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_originallyRequestedVersion;
  *v86 = 0;
  *(v86 + 8) = 1;
  v87 = v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_itemIDFromButtonConfiguration;
  *v87 = 0;
  *(v87 + 8) = 1;
  sub_100005934(v110, v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_appShareURL, &unk_1007809F0);
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_isExceptionRequest) = 0;
  sub_10020A980(v0 + 496, v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_dependencies);
  sub_10020A980(v0 + 416, v102);
  (*(v73 + 16))(v102 + v103[7], v72, v111);
  v88 = v103[9];
  v89 = type metadata accessor for MediaAPIMetadata();
  (*(*(v89 - 8) + 56))(v102 + v88, 1, 1, v89);
  *(v102 + 40) = 0;
  *(v102 + 48) = 0;
  v90 = (v102 + v103[8]);
  *v90 = v101;
  v90[1] = v100;
  *(v102 + v103[10]) = 0;
  sub_1001F0C48(&qword_10077EE10);
  v91 = swift_allocObject();
  *(v91 + ((*(*v91 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_100232074(v102, v106, type metadata accessor for ADPInstallConfiguration.Storage);

  sub_1002320FC(v102, type metadata accessor for ADPInstallConfiguration.Storage);
  sub_1000032A8(v110, &unk_1007809F0);
  sub_10000710C(v0 + 376);
  sub_1000032A8(v108, &unk_1007809F0);
  (*(v114 + 8))(v109, v128);
  (*(v73 + 8))(v99, v111);
  (*(v117 + 8))(v120, v115);
  sub_10000710C(v0 + 416);
  sub_10000710C(v0 + 496);
  sub_100232220(v106, v91 + *(*v91 + class metadata base offset for ManagedBuffer + 16), type metadata accessor for ADPInstallConfiguration.Storage);
  *(v80 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage) = v91;
  sub_10000710C(v0 + 456);

  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 1208) = sub_100400560(v92, v107);
  v93 = swift_task_alloc();
  *(v0 + 1216) = v93;
  *v93 = v0;
  v93[1] = sub_10022EC40;

  return sub_1003FF6B0(v0 + 240);
}

void sub_100230E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagService();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = [objc_opt_self() sharedScheduler];
  v8 = String._bridgeToObjectiveC()();
  (*(v5 + 16))(aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  *(v10 + ((v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  aBlock[4] = sub_1002316E0;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100225DB4;
  aBlock[3] = &unk_10075C520;
  v11 = _Block_copy(aBlock);

  [v7 registerForTaskWithIdentifier:v8 usingQueue:0 launchHandler:v11];
  _Block_release(v11);
}

void sub_100231094(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v46 - v8;
  __chkstk_darwin(v7);
  v11 = v46 - v10;
  if (a1)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = sub_100225E50(0x526B636F4C796164, 0xEE00736E6F736165, 1, 0);
  if (v14)
  {
    v15 = 0;
    goto LABEL_8;
  }

  v15 = v13;
  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_27:
    __break(1u);
  }

  if (v13 > 0xFF)
  {
    goto LABEL_27;
  }

LABEL_8:
  v16 = [objc_opt_self() standardUserDefaults];
  if (v16)
  {
    v17 = v16;
    LOBYTE(v48) = v15 | v12;
    v18 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
    v19 = String._bridgeToObjectiveC()();
    [v17 setObject:v18 forKey:v19];

    swift_unknownObjectRelease();
  }

  v20 = objc_allocWithZone(BGNonRepeatingSystemTaskRequest);
  v21 = String._bridgeToObjectiveC()();
  v22 = [v20 initWithIdentifier:v21];

  v23 = v22;
  [v23 setRequiresProtectionClass:1];
  [v23 setPriority:2];

  v24 = [objc_opt_self() sharedScheduler];
  v48 = 0;
  v25 = [v24 submitTaskRequest:v23 error:&v48];

  if (v25)
  {
    v26 = v48;

    return;
  }

  v27 = v48;
  v28 = _convertNSErrorToError(_:)();

  swift_willThrow();
  v48 = v28;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  type metadata accessor for BGSystemTaskSchedulerError(0);
  if (swift_dynamicCast())
  {

    v29 = v47;
    v46[1] = v47;
    sub_100231F28(&qword_10077E880, type metadata accessor for BGSystemTaskSchedulerError);
    _BridgedStoredNSError.code.getter();
    if (v46[0] == 5)
    {
      static Logger.general.getter();
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();
      if (!os_log_type_enabled(v30, v31))
      {
        v9 = v11;
        goto LABEL_24;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Day lock activity has already been scheduled", v32, 2u);
      v9 = v11;
    }

    else
    {
      static Logger.general.getter();
      v39 = v29;
      v30 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v30, v40))
      {
LABEL_24:

        (*(v3 + 8))(v9, v2);

        return;
      }

      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138543362;
      v43 = v39;
      v44 = _swift_stdlib_bridgeErrorToNSError();
      *(v41 + 4) = v44;
      *v42 = v44;
      _os_log_impl(&_mh_execute_header, v30, v40, "Scheduling day lock activity failed: %{public}@", v41, 0xCu);
      sub_1000032A8(v42, &qword_10077F920);
    }

    v45 = v30;

    v30 = v23;
    v23 = v45;
    goto LABEL_24;
  }

  static Logger.general.getter();
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138543362;
    swift_errorRetain();
    v37 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v37;
    *v36 = v37;
    _os_log_impl(&_mh_execute_header, v33, v34, "Scheduling day lock activity failed unexpectedly: %{public}@", v35, 0xCu);
    sub_1000032A8(v36, &qword_10077F920);

    v38 = v33;
  }

  else
  {
    v38 = v23;
    v23 = v33;
  }

  (*(v3 + 8))(v6, v2);
}

unint64_t sub_1002316E0(void *a1)
{
  v3 = *(type metadata accessor for BagService() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100223858(a1, v1 + v4, v5);
}

uint64_t sub_100231784(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1001F0E54;

  return sub_100224AD4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1002318A4()
{
  v1 = type metadata accessor for BagService();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10023197C(uint64_t a1)
{
  v4 = *(type metadata accessor for BagService() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100223C2C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_100231A9C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1002246D8(a1, v5, v4);
}

uint64_t sub_100231B48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100214EFC;

  return sub_1005608F0(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_100231C4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_10077EDE8);
    sub_100231F28(a2, &type metadata accessor for AppVersion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100231CE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v6 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_100231D54(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[5];
  a2[4] = a1[4];
  a2[5] = v5;
  a2[2] = v3;
  a2[3] = v4;
  return a2;
}

uint64_t sub_100231DBC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_100225790(a1, v5, v4);
}

unint64_t sub_100231E84()
{
  result = qword_100784350;
  if (!qword_100784350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784350);
  }

  return result;
}

uint64_t sub_100231ED8(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_100231F28(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100232074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002320FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002321B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&unk_1007809F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100232220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002322A4()
{

  return sub_1002256BC();
}

uint64_t sub_10023231C()
{

  return sub_100225488();
}

uint64_t sub_100232390(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManagedAppDeclaration();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1002323FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ManagedAppDeclaration();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t type metadata accessor for DDMJournalEntry()
{
  result = qword_10077EE90;
  if (!qword_10077EE90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002324C4(uint64_t a1)
{
  result = type metadata accessor for ManagedAppDeclaration();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_100232568(void *a1)
{
  v2 = sub_1001F0C48(&qword_10077EEE8);
  v16 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for DDMJournalEntry();
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1001F0C48(&qword_10077EEF0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - v10;
  sub_100006D8C(a1, a1[3]);
  sub_100232E64();
  v12 = v2;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100232F70(v15, v7);
  sub_100232EB8();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v13 = type metadata accessor for ManagedAppDeclaration();
  sub_100232FD4(&qword_10077EEF8);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(*(v13 - 8) + 8))(v7, v13);
  (*(v16 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100232818@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for DDMJournalEntry();
  __chkstk_darwin(v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F0C48(&qword_10077EEC0);
  v23 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v22 - v6;
  v8 = sub_1001F0C48(&qword_10077EEC8);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v22 - v9;
  sub_100006D8C(a1, a1[3]);
  sub_100232E64();
  v11 = v30;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if ((sub_1005CD738() & 1) != 0 || v28 != v29 >> 1)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    sub_1001F0C48(&qword_1007896A0);
    *v20 = v22;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, enum case for DecodingError.typeMismatch(_:), v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return sub_10000710C(v17);
  }

  sub_100232EB8();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for ManagedAppDeclaration();
  sub_100232FD4(&qword_10077EEE0);
  v22 = v10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_100232F0C(v4, v12);
  v17 = v30;
  return sub_10000710C(v17);
}

uint64_t sub_100232C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100232C90(uint64_t a1)
{
  v2 = sub_100232EB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100232CCC(uint64_t a1)
{
  v2 = sub_100232EB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100232D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616C636544707061 && a2 == 0xEE006E6F69746172)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100232DBC(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100232DF8(uint64_t a1)
{
  v2 = sub_100232E64();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100232E64()
{
  result = qword_10077EED0;
  if (!qword_10077EED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EED0);
  }

  return result;
}

unint64_t sub_100232EB8()
{
  result = qword_10077EED8;
  if (!qword_10077EED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EED8);
  }

  return result;
}

uint64_t sub_100232F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMJournalEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100232F70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMJournalEntry();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100232FD4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ManagedAppDeclaration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10023303C()
{
  result = qword_10077EF00;
  if (!qword_10077EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF00);
  }

  return result;
}

unint64_t sub_100233094()
{
  result = qword_10077EF08;
  if (!qword_10077EF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF08);
  }

  return result;
}

unint64_t sub_1002330EC()
{
  result = qword_10077EF10;
  if (!qword_10077EF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF10);
  }

  return result;
}

unint64_t sub_100233144()
{
  result = qword_10077EF18;
  if (!qword_10077EF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF18);
  }

  return result;
}

unint64_t sub_10023319C()
{
  result = qword_10077EF20;
  if (!qword_10077EF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF20);
  }

  return result;
}

unint64_t sub_1002331F4()
{
  result = qword_10077EF28;
  if (!qword_10077EF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF28);
  }

  return result;
}

void sub_100233254(uint64_t a1@<X8>)
{
  v2 = ManifestValidationRequest.primaryProductVariant.getter();
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v2;
  v5 = v3;
  v6 = ManifestValidationRequest.compatibleProductVariants.getter();
  if (!v6)
  {
LABEL_9:

LABEL_10:
    sub_1004FF660(&v30);
    v13 = v42;
    v23 = v41;
    v21 = v40;
    v24 = v39;
    v22 = v38;
    v26 = v35;
    v27 = v36;
    v10 = v37;
    v17 = v33;
    v19 = v34;
    v20 = *(&v31 + 1);
    v25 = v32;
    v5 = *(&v30 + 1);
    v7 = v31;
    v4 = v30;
    goto LABEL_11;
  }

  v7 = v6;
  v8 = ManifestValidationRequest.osVersion.getter();
  if (!v9)
  {

    goto LABEL_9;
  }

  sub_10051BCFC(v8, v9, &v30);
  v28 = v31;
  v29 = v30;
  v10 = v32;
  v11 = [objc_opt_self() sharedManager];
  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v11;
  v13 = [v11 isSharedIPad];

  v14 = MobileGestalt_get_current_device();
  if (!v14)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v14;
  v16 = MobileGestalt_copy_deviceClass_obj();

  if (v16)
  {
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 1;
    v24 = 0;
    v25 = 0xE000000000000000;
    v27 = v28;
    v26 = v29;
LABEL_11:
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v20;
    *(a1 + 32) = v25;
    *(a1 + 40) = v17;
    *(a1 + 48) = v19;
    *(a1 + 56) = v26;
    *(a1 + 72) = v27;
    *(a1 + 88) = v10;
    *(a1 + 96) = v22;
    *(a1 + 104) = v24;
    *(a1 + 108) = v21;
    *(a1 + 109) = v23;
    *(a1 + 110) = v13;
    return;
  }

LABEL_14:
  __break(1u);
}

uint64_t sub_1002333F8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v10 = URL.absoluteString.getter();
  v12 = sub_10047D678(a2, a3, v10, v11, a4 & 1, v9);
  v14 = v13;

  *a5 = v12;
  a5[1] = v14;
  return result;
}

uint64_t sub_100233484@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W4>, uint64_t a5@<X5>, unint64_t a6@<X6>, char *a7@<X8>)
{
  v50 = a6;
  v49 = a5;
  v55 = a7;
  v44 = type metadata accessor for MarketplaceCertificate();
  v11 = __chkstk_darwin(v44);
  v47 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v14 = &v41[-v13];
  v15 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v15 - 8);
  v17 = &v41[-v16];
  v18 = URL.absoluteString.getter();
  v20 = v19;
  v21 = *a1;
  v45 = a2;
  v46 = a3;
  v43 = v18;
  v42 = a4 & 1;
  v22 = sub_10047DD7C(a2, a3, v18, v19, a4 & 1);
  v53 = sub_1001F0C48(&qword_10077EF38);
  v23 = sub_100233898();
  LOBYTE(v52) = 0;
  v54 = v23;
  *(&v52 + 1) = v22;
  sub_1001F0C48(&qword_10077EF48);
  inited = swift_initStackObject();
  v48 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v52, inited + 32);
  sub_1001F0C48(&qword_10077EF50);
  v25 = swift_initStackObject();
  *(v25 + 16) = v48;
  *(v25 + 32) = inited;

  v26 = sub_1005AEA5C(v25);
  swift_setDeallocating();
  sub_1000032A8(v25 + 32, &qword_10077FA00);
  v27 = sub_10047E760(0, 0, v26, sub_10047E6EC, 0, v21);

  if (v27)
  {

    sub_100633AE0(v49, v50, 2, v27);
    Date.init()();
    v28 = type metadata accessor for Date();
    (*(*(v28 - 8) + 56))(v17, 0, 1, v28);
    sub_10063368C(v17, 1, v27);

    result = sub_1000032A8(v17, &qword_10077EF30);
    v30 = 0;
  }

  else
  {
    v31 = v45;
    *v14 = 0;
    v14[1] = v31;
    v14[2] = v46;
    v32 = v44;

    Date.init()();
    v33 = (v14 + v32[7]);
    v34 = v49;
    v35 = v50;
    *v33 = v49;
    v33[1] = v35;
    *(v14 + v32[8]) = v42;
    v36 = (v14 + v32[9]);
    *v36 = v43;
    v36[1] = v20;
    v37 = v47;
    sub_1002338FC(v14, v47);
    sub_10020ABFC(v34, v35);
    v38 = v21;
    v39 = v51;
    v40 = sub_100564798(v37, v38);
    if (v39)
    {

      result = sub_100233960(v14);
      v30 = 1;
    }

    else
    {

      result = sub_100233960(v14);
      v30 = 0;
    }
  }

  *v55 = v30;
  return result;
}

unint64_t sub_100233898()
{
  result = qword_10077EF40;
  if (!qword_10077EF40)
  {
    sub_1001F76D0(&qword_10077EF38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF40);
  }

  return result;
}

uint64_t sub_1002338FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceCertificate();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100233960(uint64_t a1)
{
  v2 = type metadata accessor for MarketplaceCertificate();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t audit_token_t.signingIdentifier.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v41[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v14 = &v41[-v13];
  v16 = sub_10032178C(a1, a2, a3, a4);
  error = 0;
  v17 = SecTaskCopySigningIdentifier(v16, &error);
  if (v17)
  {
    v18 = v17;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v19;
  }

  else
  {
    v20 = error;
    if (error)
    {
      v43 = v9;
      static Logger.daemon.getter();
      v21 = v20;
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.error.getter();
      v44 = v21;

      v42 = v23;
      v45 = v22;
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        *v24 = 136446466;
        v25 = audit_token_t.processDescription.getter(a1, a2, a3, a4);
        v27 = sub_1002346CC(v25, v26, &v47);

        *(v24 + 4) = v27;
        *(v24 + 12) = 2082;
        v28 = v44;
        v46 = v44;
        type metadata accessor for CFError(0);
        v29 = v28;
        v30 = String.init<A>(describing:)();
        v32 = sub_1002346CC(v30, v31, &v47);

        *(v24 + 14) = v32;
        v33 = v45;
        _os_log_impl(&_mh_execute_header, v45, v42, "Could not get signing identifier for %{public}s: %{public}s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      (*(v43 + 8))(v14, v8);
    }

    else
    {
      static Logger.daemon.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        LODWORD(v44) = v35;
        v37 = v36;
        v45 = swift_slowAlloc();
        v47 = v45;
        *v37 = 136446210;
        v38 = audit_token_t.processDescription.getter(a1, a2, a3, a4);
        v40 = sub_1002346CC(v38, v39, &v47);

        *(v37 + 4) = v40;
        _os_log_impl(&_mh_execute_header, v34, v44, "Missing signing identifier for %{public}s", v37, 0xCu);
        sub_10000710C(v45);
      }

      (*(v9 + 8))(v12, v8);
    }

    return 0;
  }
}

uint64_t audit_token_t.processDescription.getter(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = HIDWORD(a1);
  v9 = HIDWORD(a2);
  v10 = HIDWORD(a3);
  v11 = HIDWORD(a4);
  v12 = type metadata accessor for Logger();
  v27 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_slowAlloc();
  atoken.val[0] = v7;
  atoken.val[1] = v8;
  atoken.val[2] = v6;
  atoken.val[3] = v9;
  atoken.val[4] = v5;
  atoken.val[5] = v10;
  v16 = v15;
  atoken.val[6] = v4;
  atoken.val[7] = v11;
  v17 = audit_token_to_pid(&atoken);
  if (proc_name(v17, v16, 0x400u) < 1)
  {
    v20 = v27;
    static Logger.daemon.getter();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 67109120;
      *(v23 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v21, v22, "Could not get process name for %d", v23, 8u);
    }

    (*(v20 + 8))(v14, v12);
    *atoken.val = 0;
    *&atoken.val[2] = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    *atoken.val = 0xD000000000000010;
    *&atoken.val[2] = 0x80000001006C4B20;
    v28 = v17;
    v24._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v24);

    v25._countAndFlagsBits = 41;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v19 = *atoken.val;
  }

  else
  {
    sub_1001F0C48(&qword_10077E910);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_10069F6E0;
    *(v18 + 56) = sub_1001F0C48(&qword_10077EF58);
    *(v18 + 64) = sub_100234C00();
    *(v18 + 32) = v16;
    *(v18 + 96) = &type metadata for Int32;
    *(v18 + 104) = &protocol witness table for Int32;
    *(v18 + 72) = v17;
    v19 = String.init(format:_:)();
  }

  return v19;
}

uint64_t sub_1002340E8()
{
  sub_1001F0C48(&qword_10077EF68);
  type metadata accessor for ValidationCategory.Value();
  *(swift_allocObject() + 16) = xmmword_10069F6E0;
  static ValidationCategory.Value.development.getter();
  static ValidationCategory.Value.developerID.getter();
  v4[3] = type metadata accessor for ValidationCategory();
  v4[4] = sub_100234C64();
  sub_10020A748(v4);
  static ValidationCategory.in(_:)();

  v0 = static ProcessConstraintBuilder.buildExpression(_:)();
  sub_10000710C(v4);
  sub_1001F0C48(&qword_10077EF78);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10069E680;
  *(v1 + 32) = v0;
  v2 = static ProcessConstraintBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100234258(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v15 = type metadata accessor for Logger();
  __chkstk_darwin(v15);
  v8 = type metadata accessor for ProcessCodeRequirement();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10032178C(a1, a2, a3, a4);
  static ProcessCodeRequirement.anyOf(requirement:)();
  v14 = SecTaskValidateForRequirement(task:requirement:)();
  (*(v9 + 8))(v11, v8);

  return v14 & 1;
}

uint64_t sub_100234528()
{
  sub_1001F0C48(&qword_10077EF68);
  type metadata accessor for ValidationCategory.Value();
  *(swift_allocObject() + 16) = xmmword_10069E680;
  static ValidationCategory.Value.platform.getter();
  v4[3] = type metadata accessor for ValidationCategory();
  v4[4] = sub_100234C64();
  sub_10020A748(v4);
  static ValidationCategory.in(_:)();

  v0 = static ProcessConstraintBuilder.buildExpression(_:)();
  sub_10000710C(v4);
  sub_1001F0C48(&qword_10077EF78);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10069E680;
  *(v1 + 32) = v0;
  v2 = static ProcessConstraintBuilder.buildBlock(_:)();

  return v2;
}

uint64_t sub_100234684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v6[3] = a4;
  return a5(v6);
}

unint64_t sub_1002346CC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100234798(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_10020A6D0(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_10000710C(v11);
  return v7;
}

unint64_t sub_100234798(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1002348A4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_1002348A4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1002348F0(a1, a2);
  sub_100234A20(&off_100756E28);
  return v3;
}

char *sub_1002348F0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_1005D9260(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_1005D9260(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_100234A20(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_100234B0C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_100234B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1001F0C48(&qword_10077EF80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_100234C00()
{
  result = qword_10077EF60;
  if (!qword_10077EF60)
  {
    sub_1001F76D0(&qword_10077EF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF60);
  }

  return result;
}

unint64_t sub_100234C64()
{
  result = qword_10077EF70;
  if (!qword_10077EF70)
  {
    type metadata accessor for ValidationCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EF70);
  }

  return result;
}

uint64_t sub_100234CBC(char a1)
{
  result = 0x5F746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x697461725F656761;
      break;
    case 2:
      result = 0x74695F656C707061;
      break;
    case 3:
    case 25:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x5F6B726F77747261;
      break;
    case 5:
      v3 = 0x656C646E7562;
      goto LABEL_28;
    case 6:
      result = 0x6E5F656C646E7562;
      break;
    case 7:
      result = 0x765F656C646E7562;
      break;
    case 8:
      v3 = 0x746E65696C63;
LABEL_28:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x695F000000000000;
      break;
    case 9:
      result = 0x616E6964726F6F63;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 11:
      result = 0x5F6572756C696166;
      break;
    case 12:
      result = 0xD00000000000001ELL;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
    case 15:
    case 16:
      result = 0x5F6C6C6174736E69;
      break;
    case 17:
      result = 0x746E65746E69;
      break;
    case 18:
      result = 0xD000000000000016;
      break;
    case 19:
    case 23:
    case 24:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x74616470755F7369;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x79656B5F676F6CLL;
      break;
    case 26:
      result = 0x616E6F73726570;
      break;
    case 27:
      result = 0x6573616870;
      break;
    case 28:
      result = 0x6C6F686563616C70;
      break;
    case 29:
      result = 0x6D726F6674616C70;
      break;
    case 30:
      result = 0xD000000000000015;
      break;
    case 31:
      result = 0x797469726F697270;
      break;
    case 32:
      result = 0xD00000000000001ALL;
      break;
    case 33:
      result = 0x74706965636572;
      break;
    case 34:
      result = 0x656372756F73;
      break;
    case 35:
      result = 0x656D5F65726F7473;
      break;
    case 36:
      result = 0x6F745F7469647561;
      break;
    case 37:
      result = 0x65706F6C65766564;
      break;
    case 38:
      result = 0x7562697274736964;
      break;
    case 39:
      result = 0xD000000000000016;
      break;
    case 40:
      result = 0x656B72616D5F7369;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100235118(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100234CBC(*a1);
  v5 = v4;
  if (v3 == sub_100234CBC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1002351A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100234CBC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100235204()
{
  sub_100234CBC(*v0);
  String.hash(into:)();
}

Swift::Int sub_100235258()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100234CBC(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002352B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100235C48();
  *a1 = result;
  return result;
}

uint64_t sub_1002352E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100234CBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_1002354C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppInstallEntity.Entity();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100235580(uint64_t a1, void *a2, uint64_t a3, void (*a4)(uint64_t), void (*a5)(__int128 *, void *))
{
  a4(a3);
  v8 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  if (!*(a1 + 24))
  {
    v19 = *(a1 + 16);
    v20 = *a1;
    v21 = v19;
    v22 = *(a1 + 32);
    if (!*(&v19 + 1))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  sub_10020A980(a1, &v20);
  if (*(&v21 + 1))
  {
LABEL_3:
    a5(&v20, v23);
    v9 = v24;
    v10 = v25;
    sub_100006D8C(v23, v24);
    v11 = (*(v10 + 24))(v9, v10);
    [v8 setPredicate:v11];

    sub_10000710C(v23);
  }

LABEL_4:
  v12 = objc_allocWithZone(ASUSQLiteQuery);
  v13 = a2;
  v14 = [v12 initOnConnection:v13 descriptor:v8];
  v15 = [v14 copyEntityIdentifiers];
  v16 = [v15 array];

  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100235A74(v17);

  return v13;
}

void *sub_10023585C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1005263EC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {

      sub_1001F0C48(&unk_10077FA80);
      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1005263EC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001F6498(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100235974(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v9 = _swiftEmptyArrayStorage;
    sub_1005263EC(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1005263EC((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      v2[2] = v6 + 1;
      sub_1001F6498(&v8, &v2[4 * v6 + 4]);
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100235A74(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v10 = _swiftEmptyArrayStorage;
    sub_1005264B0(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_10020A6D0(v4, v9);
      swift_dynamicCast();
      v5 = v9[4];
      v10 = v2;
      v7 = v2[2];
      v6 = v2[3];
      if (v7 >= v6 >> 1)
      {
        sub_1005264B0((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      v2[2] = v7 + 1;
      v2[v7 + 4] = v5;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_100235B70(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_10020A6D0(v4, &v5);
      sub_100235E64();
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 32;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t sub_100235C48()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x29)
  {
    return 41;
  }

  else
  {
    return v0;
  }
}

void sub_100235C9C(void *a1)
{
  v2 = [a1 connection];
  v3 = [a1 persistentID];
  v13 = sub_1001F0C48(&qword_10077EFB0);
  v11 = 10;
  v14 = sub_100213FA0(&qword_10077EFB8, &qword_10077EFB0);
  v12 = v3;
  v4 = sub_100235580(&v11, v2, 0, type metadata accessor for AppPackageEntity.Entity, sub_100236238);
  v6 = v5;

  if (v13)
  {
    sub_10000710C(&v11);
  }

  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    while (v8 < *(v6 + 16))
    {
      v9 = *(v6 + 8 * v8 + 32);
      type metadata accessor for AppPackageEntity.Entity();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:v9 onConnection:v4];
      if (([v10 existsInDatabase] & 1) == 0)
      {

        v4 = v10;
        goto LABEL_10;
      }

      ++v8;
      [v10 deleteFromDatabase];

      if (v7 == v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

LABEL_10:

    [a1 deleteFromDatabase];
  }
}

unint64_t sub_100235E64()
{
  result = qword_100784500;
  if (!qword_100784500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100784500);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppInstallEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD8)
  {
    goto LABEL_17;
  }

  if (a2 + 40 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 40) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 40;
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

      return (*a1 | (v4 << 8)) - 40;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 40;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x29;
  v8 = v6 - 41;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppInstallEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 40 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 40) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD8)
  {
    v4 = 0;
  }

  if (a2 > 0xD7)
  {
    v5 = ((a2 - 216) >> 8) + 1;
    *result = a2 + 40;
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
    *result = a2 + 40;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100236058()
{
  result = qword_10077EFD0;
  if (!qword_10077EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EFD0);
  }

  return result;
}

unint64_t sub_1002360B0()
{
  result = qword_10077EFD8;
  if (!qword_10077EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EFD8);
  }

  return result;
}

unint64_t sub_100236104(void *a1)
{
  a1[1] = sub_10023613C();
  a1[2] = sub_100236190();
  result = sub_1002361E4();
  a1[3] = result;
  return result;
}

unint64_t sub_10023613C()
{
  result = qword_10077F010;
  if (!qword_10077F010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F010);
  }

  return result;
}

unint64_t sub_100236190()
{
  result = qword_10077F018;
  if (!qword_10077F018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F018);
  }

  return result;
}

unint64_t sub_1002361E4()
{
  result = qword_10077F020;
  if (!qword_10077F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F020);
  }

  return result;
}

uint64_t sub_10023623C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a3;
  v5 = type metadata accessor for Logger();
  v66 = *(v5 - 8);
  v67 = v5;
  __chkstk_darwin(v5);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809E0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v66 - v11;
  v13 = type metadata accessor for DDMDeclaration(0);
  v14 = *(v13 - 8);
  v15 = __chkstk_darwin(v13);
  v71 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v68 = &v66 - v18;
  v19 = __chkstk_darwin(v17);
  v21 = &v66 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v66 - v23;
  __chkstk_darwin(v22);
  v69 = &v66 - v25;
  v73 = v14;
  v26 = *(v14 + 56);
  v76 = v12;
  v26(v12, 1, 1, v13);
  v74 = v13;
  v27 = (a2 + *(v13 + 52));
  v28 = *v27;
  v29 = v27[1];
  v30 = *a1;

  v31 = sub_100239130(0, 8, v28, v29, sub_1002390BC, 0, v30);

  if (v31)
  {
    v32 = v31;
    v33 = v75;
    sub_1003A7C28(v32, v10);
    if (v33)
    {
      v34 = v76;
LABEL_22:

      return sub_1000032A8(v34, &unk_1007809E0);
    }

    v38 = v74;
    v26(v10, 0, 1, v74);
    v34 = v76;
    sub_10020AD90(v10, v76, &unk_1007809E0);
    v39 = *(a2 + 48);
    v40 = *(a2 + 56);
    v41 = *(v73 + 48);
    result = v41(v34, 1, v38);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v43 = v39 == *(v34 + 48) && v40 == *(v34 + 56);
      if (v43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        sub_1004DA55C(a2, v32);
        v21 = v68;
        sub_1003A7C28(v32, v68);
        goto LABEL_15;
      }

      v49 = v72;
      static Logger.ddm.getter();
      v50 = v71;
      sub_100239A70(a2, v71, type metadata accessor for DDMDeclaration);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v51, v52))
      {

        sub_100239A10(v50, type metadata accessor for DDMDeclaration);
        (*(v66 + 8))(v49, v67);
        goto LABEL_21;
      }

      LODWORD(v75) = v52;
      v53 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v77 = v73;
      *v53 = 136315650;
      swift_beginAccess();
      v54 = v74;
      result = v41(v34, 1, v74);
      if (result != 1)
      {
        v55 = (v34 + *(v54 + 52));
        v57 = *v55;
        v56 = v55[1];

        v58 = sub_1002346CC(v57, v56, &v77);

        *(v53 + 4) = v58;
        *(v53 + 12) = 2080;
        result = v41(v34, 1, v54);
        if (result != 1)
        {
          v60 = *(v34 + 48);
          v59 = *(v34 + 56);

          v61 = sub_1002346CC(v60, v59, &v77);

          *(v53 + 14) = v61;
          *(v53 + 22) = 2080;
          v62 = v71;
          v63 = *(v71 + 48);
          v64 = *(v71 + 56);

          sub_100239A10(v62, type metadata accessor for DDMDeclaration);
          v65 = sub_1002346CC(v63, v64, &v77);

          *(v53 + 24) = v65;
          _os_log_impl(&_mh_execute_header, v51, v75, "Refusing to update declaration '%s' for '%s' with '%s'", v53, 0x20u);
          swift_arrayDestroy();

          (*(v66 + 8))(v72, v67);
LABEL_21:
          type metadata accessor for InternalError();
          sub_100239AD8(&qword_10077F900, type metadata accessor for InternalError);
          swift_allocError();
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          goto LABEL_22;
        }

LABEL_27:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  sub_100239A70(a2, v24, type metadata accessor for DDMDeclaration);
  v35 = v30;
  v36 = v75;
  v37 = sub_1005647EC(v24, v35);

  if (!v36)
  {
    sub_1003A7C28(v37, v21);
    v34 = v76;
LABEL_15:
    v44 = v21;
    v45 = v69;
    sub_1002399A8(v44, v69, type metadata accessor for DDMDeclaration);
    v46 = *(sub_1001F0C48(&qword_10077F138) + 48);
    v47 = v45;
    v48 = v70;
    sub_1002399A8(v47, v70, type metadata accessor for DDMDeclaration);
    return sub_10020A668(v34, v48 + v46, &unk_1007809E0);
  }

  v34 = v76;
  return sub_1000032A8(v34, &unk_1007809E0);
}

uint64_t sub_1002369B8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *a1;

  v10 = sub_100239130(0, 4, a2, a3, sub_1002390BC, 0, v9);

  if (v10)
  {
    result = sub_1003A7C28(v10, a4);
    if (v5)
    {
      return result;
    }

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = type metadata accessor for DDMDeclaration(0);
  return (*(*(v13 - 8) + 56))(a4, v12, 1, v13);
}

uint64_t sub_100236AD8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  v9 = *a1;

  v10 = sub_100239130(0, a4, a2, a3, sub_1002390BC, 0, v9);

  if (v10)
  {
    return sub_1003A7C28(v10, a5);
  }

  type metadata accessor for InternalError();
  sub_100239AD8(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  *v12 = a2;
  v12[1] = a3;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
}

void sub_100236BF8(void **a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = type metadata accessor for DDMDeclaration(0);
  v38 = *(v5 - 8);
  v6 = __chkstk_darwin(v5 - 8);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v32 - v9;
  v11 = *a1;
  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  v40 = sub_100235550(&v42, v11);
  v13 = v12;
  if (*(&v43 + 1))
  {
    sub_10000710C(&v42);
  }

  *&v42 = _swiftEmptyArrayStorage;
  sub_100526530(0, 0, 0);
  v14 = v42;
  v37 = *(v13 + 16);
  if (v37)
  {
    v15 = 0;
    v39 = v13 + 32;
    v35 = v13;
    v36 = v8;
    v34 = v10;
    while (v15 < *(v13 + 16))
    {
      v16 = *(v39 + 8 * v15);
      type metadata accessor for DDMDeclarationEntity.Entity();
      v17 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v18 = [v17 initWithPersistentID:v16 onConnection:v40];
      if (([v18 existsInDatabase] & 1) == 0)
      {

        v40 = v18;
        goto LABEL_17;
      }

      v41 = v3;
      v45 = _swiftEmptyArrayStorage;
      v19 = v18;
      sub_100526500(0, 22, 0);
      v20 = 0;
      v21 = v45;
      v22 = v45[2];
      do
      {
        v23 = *(&off_100757878 + v20 + 32);
        v45 = v21;
        v24 = *(v21 + 24);
        if (v22 >= v24 >> 1)
        {
          sub_100526500((v24 > 1), v22 + 1, 1);
          v21 = v45;
        }

        ++v20;
        *(v21 + 16) = v22 + 1;
        *(v21 + v22++ + 32) = v23;
      }

      while (v20 != 22);
      v25 = sub_1003A8BDC(v21, v19);

      v26 = [v19 persistentID];

      v27 = v36;
      v28 = v41;
      sub_1004DD8B8(v26, v25, v36);
      v3 = v28;
      if (v28)
      {

        return;
      }

      v29 = v34;
      sub_1002399A8(v27, v34, type metadata accessor for DDMDeclaration);
      *&v42 = v14;
      v31 = *(v14 + 16);
      v30 = *(v14 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_100526530(v30 > 1, v31 + 1, 1);
        v14 = v42;
      }

      ++v15;
      *(v14 + 16) = v31 + 1;
      sub_1002399A8(v29, v14 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v31, type metadata accessor for DDMDeclaration);
      v13 = v35;
      if (v15 == v37)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

LABEL_17:

    *v33 = v14;
  }
}

void sub_100236F8C(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;

  v15 = sub_100239130(0, 8, a2, a3, sub_1002390BC, 0, v14);

  if (v15)
  {
    v16 = v15;
    sub_1003A7C28(v16, a4);
    if (!v5)
    {
      v17 = type metadata accessor for DDMDeclaration(0);
      (*(*(v17 - 8) + 56))(a4, 0, 1, v17);
    }

    [v16 deleteFromDatabase];
  }

  else
  {
    static Logger.ddm.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v25 = v11;
      v21 = v20;
      v22 = swift_slowAlloc();
      v26 = a4;
      v23 = v22;
      v27 = v22;
      *v21 = 136446210;
      *(v21 + 4) = sub_1002346CC(a2, a3, &v27);
      _os_log_impl(&_mh_execute_header, v18, v19, "Received request to remove app %{public}s but it didn't exist", v21, 0xCu);
      sub_10000710C(v23);
      a4 = v26;

      (*(v25 + 8))(v13, v10);
    }

    else
    {

      (*(v11 + 8))(v13, v10);
    }

    v24 = type metadata accessor for DDMDeclaration(0);
    (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }
}

void sub_100237274(void **a1, uint64_t a2, int a3)
{
  LODWORD(v27) = a3;
  v5 = type metadata accessor for DDMDeclaration(0);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (a2 + *(v5 + 52));
  v13 = *v12;
  v14 = v12[1];
  v15 = *a1;

  v16 = sub_100239130(0, 8, v13, v14, sub_1002390BC, 0, v15);

  if (v16)
  {
    sub_100633CCC(v27 & 1, 12, v16);
  }

  else
  {
    v26 = v8;
    v27 = v9;
    v17 = v11;
    static Logger.ddm.getter();
    sub_100239A70(a2, v7, type metadata accessor for DDMDeclaration);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136446210;
      v22 = &v7[*(v5 + 52)];
      v23 = *v22;
      v24 = v22[1];

      sub_100239A10(v7, type metadata accessor for DDMDeclaration);
      v25 = sub_1002346CC(v23, v24, &v28);

      *(v20 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v18, v19, "Received request to set visibility for %{public}s but it didn't exist", v20, 0xCu);
      sub_10000710C(v21);
    }

    else
    {

      sub_100239A10(v7, type metadata accessor for DDMDeclaration);
    }

    (*(v27 + 8))(v17, v26);
    type metadata accessor for InternalError();
    sub_100239AD8(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1002375D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = v5;
  *(v6 + 140) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = type metadata accessor for Logger();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();
  *(v6 + 80) = sub_1001F0C48(&qword_10077F140);
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();

  return _swift_task_switch(sub_1002376F4, v5, 0);
}

uint64_t sub_1002376F4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 140);
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v12 = *(v0 + 24);
  v5 = *(*(v0 + 80) + 48);
  *(v0 + 136) = v5;
  v6 = type metadata accessor for ManagedApp();
  (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
  *(v1 + v5) = 1;
  v7 = *(v3 + 112);
  v8 = swift_task_alloc();
  *(v0 + 112) = v8;
  *(v8 + 16) = v12;
  *(v8 + 32) = v4;
  *(v8 + 40) = v2 & 1;
  v9 = swift_task_alloc();
  *(v0 + 120) = v9;
  *v9 = v0;
  v9[1] = sub_100237860;
  v10 = *(v0 + 96);

  return sub_1003B0AD4(v10, sub_100239914, v8, v7);
}

uint64_t sub_100237860()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_100237AC4;
  }

  else
  {
    v4 = sub_1002379A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002379A8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v4 = *(v2 + *(*(v0 + 80) + 48));
  sub_10020AD90(v2, v3, &qword_10077F148);
  *(v3 + v1) = v4;
  v5 = *(v0 + 104);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 16);
  sub_100239938(v5, v6);
  v9 = *(v6 + *(v7 + 48));
  sub_10020A668(v6, v8, &qword_10077F148);
  sub_1000032A8(v5, &qword_10077F140);

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_100237AC4()
{
  v23 = v0;
  static Logger.ddm.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[8];
  v4 = v0[9];
  v6 = v0[7];
  if (v3)
  {
    v21 = v0[9];
    v7 = v0[3];
    v8 = v0[4];
    v20 = v0[7];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v9 = 136446466;
    *(v9 + 4) = sub_1002346CC(v7, v8, &v22);
    *(v9 + 12) = 2114;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failure when fetching cached metaadata for '%{public}s': %{public}@", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);

    sub_10000710C(v11);

    (*(v5 + 8))(v21, v20);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v13 = v0[13];
  v15 = v0[10];
  v14 = v0[11];
  v16 = v0[2];
  sub_100239938(v13, v14);
  v17 = *(v14 + *(v15 + 48));
  sub_10020A668(v14, v16, &qword_10077F148);
  sub_1000032A8(v13, &qword_10077F140);

  v18 = v0[1];

  return v18(v17);
}

uint64_t sub_100237D48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v106 = a6;
  LODWORD(v96) = a5;
  v93[1] = a4;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v104 = v9;
  v105 = v10;
  v11 = __chkstk_darwin(v9);
  v13 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v99 = v93 - v15;
  v16 = __chkstk_darwin(v14);
  v97 = v93 - v17;
  v18 = __chkstk_darwin(v16);
  v95 = v93 - v19;
  __chkstk_darwin(v18);
  v98 = v93 - v20;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v102 = v21;
  v103 = v22;
  v23 = __chkstk_darwin(v21);
  v25 = v93 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = v93 - v26;
  v28 = sub_1001F0C48(&qword_10077F130);
  __chkstk_darwin(v28 - 8);
  v30 = v93 - v29;
  v31 = type metadata accessor for DDMCachedMetadata(0);
  v32 = *(v31 - 8);
  v33 = __chkstk_darwin(v31);
  v94 = v93 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v100 = v93 - v35;
  v36 = *a1;

  v101 = a2;
  v37 = sub_100239130(0, 8, a2, a3, sub_1002390BC, 0, v36);

  if (!v37)
  {
    static Logger.ddm.getter();

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v107 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1002346CC(v101, a3, &v107);
      _os_log_impl(&_mh_execute_header, v44, v45, "Cached metadata for '%{public}s' is stale: declaration does not exist", v46, 0xCu);
      sub_10000710C(v47);
    }

    (*(v105 + 8))(v13, v104);
    goto LABEL_12;
  }

  sub_1005359D0(v37, v30);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    sub_1000032A8(v30, &qword_10077F130);
    v38 = v99;
    static Logger.ddm.getter();

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = v37;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v107 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1002346CC(v101, a3, &v107);
      _os_log_impl(&_mh_execute_header, v39, v40, "Cached metadata for '%{public}s' is stale: no cached metadata", v42, 0xCu);
      sub_10000710C(v43);
    }

    else
    {
    }

    (*(v105 + 8))(v38, v104);
LABEL_12:
    v52 = *(sub_1001F0C48(&qword_10077F140) + 48);
    v53 = type metadata accessor for ManagedApp();
    v54 = v106;
    result = (*(*(v53 - 8) + 56))(v106, 1, 1, v53);
    *(v54 + v52) = 1;
    return result;
  }

  v48 = v100;
  sub_1002399A8(v30, v100, type metadata accessor for DDMCachedMetadata);
  static Date.now.getter();
  sub_100239AD8(&qword_10077F150, &type metadata accessor for Date);
  v49 = v102;
  v50 = dispatch thunk of static Comparable.<= infix(_:_:)();
  v51 = *(v103 + 8);
  v103 += 8;
  v51(v27, v49);
  if ((v50 & 1) == 0)
  {
    v56 = v97;
    static Logger.ddm.getter();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v31;
      v60 = v37;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v107 = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_1002346CC(v101, a3, &v107);
      v63 = "Cached metadata for '%{public}s' is stale: cached on a future date";
LABEL_20:
      _os_log_impl(&_mh_execute_header, v57, v58, v63, v61, 0xCu);
      sub_10000710C(v62);

      v31 = v59;

LABEL_22:
      (*(v105 + 8))(v56, v104);
      v81 = *(sub_1001F0C48(&qword_10077F140) + 48);
      v82 = *(v31 + 20);
      v83 = type metadata accessor for ManagedApp();
      v84 = *(v83 - 8);
      v85 = v106;
      (*(v84 + 16))(v106, v48 + v82, v83);
      sub_100239A10(v48, type metadata accessor for DDMCachedMetadata);
      result = (*(v84 + 56))(v85, 0, 1, v83);
      *(v85 + v81) = 1;
      return result;
    }

LABEL_21:

    goto LABEL_22;
  }

  v64 = v48;
  v65 = v98;
  static Date.now.getter();
  static Date.- infix(_:_:)();
  v66 = v25;
  v67 = v102;
  v51(v66, v102);
  Date.timeIntervalSince(_:)();
  v69 = v68;
  v51(v27, v67);
  if (v69 <= 0.0)
  {
    v48 = v64;
    v56 = v95;
    static Logger.ddm.getter();

    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = v31;
      v60 = v37;
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v107 = v62;
      *v61 = 136446210;
      *(v61 + 4) = sub_1002346CC(v101, a3, &v107);
      v63 = "Cached metadata for '%{public}s' is stale: cache has expired";
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  static Logger.ddm.getter();
  v70 = v94;
  sub_100239A70(v64, v94, type metadata accessor for DDMCachedMetadata);

  v71 = Logger.logObject.getter();
  v72 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    v97 = v31;
    v99 = v37;
    v74 = v73;
    v96 = swift_slowAlloc();
    v107 = v96;
    *v74 = 136446466;
    *(v74 + 4) = sub_1002346CC(v101, a3, &v107);
    *(v74 + 12) = 2080;
    static Date.+ infix(_:_:)();
    sub_100239AD8(&qword_10077F158, &type metadata accessor for Date);
    v75 = v72;
    v76 = v102;
    v77 = dispatch thunk of CustomStringConvertible.description.getter();
    v79 = v78;
    v51(v27, v76);
    sub_100239A10(v70, type metadata accessor for DDMCachedMetadata);
    v80 = sub_1002346CC(v77, v79, &v107);

    *(v74 + 14) = v80;
    _os_log_impl(&_mh_execute_header, v71, v75, "Found cached metadata for '%{public}s' (expires: %s)", v74, 0x16u);
    swift_arrayDestroy();

    v31 = v97;

    (*(v105 + 8))(v98, v104);
  }

  else
  {

    sub_100239A10(v70, type metadata accessor for DDMCachedMetadata);
    (*(v105 + 8))(v65, v104);
  }

  v86 = *(sub_1001F0C48(&qword_10077F140) + 48);
  v87 = *(v31 + 20);
  v88 = type metadata accessor for ManagedApp();
  v89 = *(v88 - 8);
  v90 = v100;
  v91 = v100 + v87;
  v92 = v106;
  (*(v89 + 16))(v106, v91, v88);
  sub_100239A10(v90, type metadata accessor for DDMCachedMetadata);
  result = (*(v89 + 56))(v92, 0, 1, v88);
  *(v92 + v86) = 0;
  return result;
}

uint64_t sub_10023898C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  v14 = sub_1001F0C48(&qword_10077F130);
  __chkstk_darwin(v14 - 8);
  v16 = &v24 - v15;
  v17 = *a1;

  v18 = sub_100239130(0, 8, a2, a3, sub_1002390BC, 0, v17);

  if (v18)
  {
    v20 = type metadata accessor for Date();
    (*(*(v20 - 8) + 16))(v16, a4, v20);
    v21 = type metadata accessor for DDMCachedMetadata(0);
    v22 = *(v21 + 20);
    v23 = type metadata accessor for ManagedApp();
    (*(*(v23 - 8) + 16))(&v16[v22], a5, v23);
    v16[*(v21 + 24)] = a6;
    (*(*(v21 - 8) + 56))(v16, 0, 1, v21);
    sub_100633CE4(v16, 5, v18);

    result = sub_1000032A8(v16, &qword_10077F130);
  }

  *a7 = 0;
  return result;
}

uint64_t sub_100238B80()
{

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

id sub_100238BDC(__int16 a1, uint64_t a2, uint64_t a3)
{
  sub_1004DC6A8(a1);
  v11[3] = &type metadata for String;
  v11[4] = &protocol witness table for String;
  v11[5] = &protocol witness table for String;
  v11[0] = a2;
  v11[1] = a3;
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  SQLiteEncodeValue(_:using:)(v11, v12);

  if ((a1 & 0x100) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  sub_10000710C(v11);
  v7 = String._bridgeToObjectiveC()();

  sub_100006D8C(v12, v12[3]);
  v8 = _bridgeAnythingToObjectiveC<A>(_:)();
  v9 = [objc_opt_self() predicateWithProperty:v7 value:v8 comparisonType:v6];
  swift_unknownObjectRelease();

  sub_10000710C(v12);
  return v9;
}

id sub_100238D50(char a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  v9[5] = &protocol witness table for String;
  v9[0] = a2;
  v9[1] = a3;
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  SQLiteEncodeValue(_:using:)(v9, v10);

  if (a1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  sub_10000710C(v9);
  v5 = String._bridgeToObjectiveC()();
  sub_100006D8C(v10, v10[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 value:v6 comparisonType:v4];
  swift_unknownObjectRelease();

  sub_10000710C(v10);
  return v7;
}

id sub_100238EB4(__int16 a1, uint64_t a2, uint64_t a3)
{
  v9[3] = &type metadata for String;
  v9[4] = &protocol witness table for String;
  v9[5] = &protocol witness table for String;
  v9[0] = a2;
  v9[1] = a3;
  type metadata accessor for JSONEncoder();
  swift_allocObject();

  JSONEncoder.init()();
  SQLiteEncodeValue(_:using:)(v9, v10);

  if ((a1 & 0x100) != 0)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  sub_10000710C(v9);
  v5 = String._bridgeToObjectiveC()();

  sub_100006D8C(v10, v10[3]);
  v6 = _bridgeAnythingToObjectiveC<A>(_:)();
  v7 = [objc_opt_self() predicateWithProperty:v5 value:v6 comparisonType:v4];
  swift_unknownObjectRelease();

  sub_10000710C(v10);
  return v7;
}

void sub_1002390BC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DDMDeclarationEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_100239130(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v53 = 0;
  type metadata accessor for DDMDeclarationEntity.Entity();
  v14 = a1;
  v15 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v16 = sub_100238BDC(a2 & 0x1FF, a3, a4);
  [v15 setPredicate:v16];

  if (a1)
  {
    v51 = a5;
    v17 = *(a1 + 16);
    if (v17)
    {
      v49 = a6;
      v50 = a7;

      v18 = (v14 + 33);
      v19 = _swiftEmptyArrayStorage;
      v20 = _swiftEmptyArrayStorage;
      do
      {
        v21 = *(v18 - 1);
        if (*v18)
        {
          v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v24 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_100009530(0, *(v19 + 2) + 1, 1, v19);
          }

          v26 = *(v19 + 2);
          v25 = *(v19 + 3);
          if (v26 >= v25 >> 1)
          {
            v19 = sub_100009530((v25 > 1), v26 + 1, 1, v19);
          }

          *(v19 + 2) = v26 + 1;
          v27 = &v19[16 * v26];
          *(v27 + 4) = v22;
          *(v27 + 5) = v24;
          v28 = 0xED000064695F6D65;
          v29 = 0x74695F656C707061;
          switch(v21)
          {
            case 1:
              goto LABEL_15;
            case 2:
              goto LABEL_22;
            case 3:
              goto LABEL_24;
            case 4:
              goto LABEL_19;
            case 5:
              goto LABEL_28;
            case 6:
              goto LABEL_32;
            case 7:
              goto LABEL_25;
            case 8:
              goto LABEL_35;
            case 9:
              goto LABEL_21;
            case 10:
              goto LABEL_34;
            case 11:
              goto LABEL_18;
            case 12:
              goto LABEL_20;
            case 13:
              goto LABEL_31;
            case 14:
              goto LABEL_17;
            case 15:
              goto LABEL_23;
            case 16:
              goto LABEL_16;
            case 17:
              goto LABEL_26;
            case 18:
              goto LABEL_33;
            case 19:
              goto LABEL_36;
            case 20:
              goto LABEL_27;
            case 21:
              goto LABEL_30;
            default:
              break;
          }
        }

        else
        {
          v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v32 = v31;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_100009530(0, *(v19 + 2) + 1, 1, v19);
          }

          v34 = *(v19 + 2);
          v33 = *(v19 + 3);
          if (v34 >= v33 >> 1)
          {
            v19 = sub_100009530((v33 > 1), v34 + 1, 1, v19);
          }

          *(v19 + 2) = v34 + 1;
          v35 = &v19[16 * v34];
          *(v35 + 4) = v30;
          *(v35 + 5) = v32;
          v28 = 0xED000064695F6D65;
          v29 = 0x74695F656C707061;
          switch(v21)
          {
            case 1:
LABEL_15:
              v28 = 0xEA00000000007365;
              v29 = 0x7475626972747461;
              break;
            case 2:
LABEL_22:
              v29 = 0xD000000000000017;
              v28 = 0x80000001006C39D0;
              break;
            case 3:
LABEL_24:
              v29 = 0x615F70756B636162;
              v36 = 1683976304;
              goto LABEL_29;
            case 4:
LABEL_19:
              v29 = 0x695F656C646E7562;
              v28 = 0xE900000000000064;
              break;
            case 5:
LABEL_28:
              v29 = 0x6D5F646568636163;
              v36 = 1684108389;
LABEL_29:
              v28 = v36 | 0xEF61746100000000;
              break;
            case 6:
LABEL_32:
              v29 = 0x72616C756C6C6563;
              v28 = 0xEF7963696C6F705FLL;
              break;
            case 7:
LABEL_25:
              v29 = 0xD000000000000013;
              v28 = 0x80000001006C3A20;
              break;
            case 8:
LABEL_35:
              v29 = 0x746172616C636564;
              v28 = 0xEE0064695F6E6F69;
              break;
            case 9:
LABEL_21:
              v29 = 0x746172616C636564;
              v28 = 0xEF79656B5F6E6F69;
              break;
            case 10:
LABEL_34:
              v29 = 0x5F6C6C6174736E69;
              v28 = 0xEE00676E696D6974;
              break;
            case 11:
LABEL_18:
              v29 = 0xD000000000000019;
              v28 = 0x80000001006C3A70;
              break;
            case 12:
LABEL_20:
              v29 = 0x62697369765F7369;
              v28 = 0xEA0000000000656CLL;
              break;
            case 13:
LABEL_31:
              v28 = 0xE700000000000000;
              v29 = 0x65736E6563696CLL;
              break;
            case 14:
LABEL_17:
              v29 = 0xD000000000000010;
              v28 = 0x80000001006C3AA0;
              break;
            case 15:
LABEL_23:
              v29 = 0x74736566696E616DLL;
              v28 = 0xEC0000006C72755FLL;
              break;
            case 16:
LABEL_16:
              v28 = 0xE400000000000000;
              v29 = 1701667182;
              break;
            case 17:
LABEL_26:
              v28 = 0xE700000000000000;
              v29 = 0x616E6F73726570;
              break;
            case 18:
LABEL_33:
              v29 = 0x765F64656E6E6970;
              v28 = 0xEE006E6F69737265;
              break;
            case 19:
LABEL_36:
              v28 = 0xE800000000000000;
              v29 = 0x6D726F6674616C70;
              break;
            case 20:
LABEL_27:
              v29 = 0x6573616863727570;
              v28 = 0xEF646F6874656D5FLL;
              break;
            case 21:
LABEL_30:
              v29 = 0x6E5F726F646E6576;
              v28 = 0xEB00000000656D61;
              break;
            default:
              break;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_100009530(0, *(v20 + 2) + 1, 1, v20);
        }

        v38 = *(v20 + 2);
        v37 = *(v20 + 3);
        if (v38 >= v37 >> 1)
        {
          v20 = sub_100009530((v37 > 1), v38 + 1, 1, v20);
        }

        *(v20 + 2) = v38 + 1;
        v39 = &v20[16 * v38];
        *(v39 + 4) = v29;
        *(v39 + 5) = v28;
        v18 += 2;
        --v17;
      }

      while (v17);

      a7 = v50;
      a6 = v49;
    }

    else
    {
      v19 = _swiftEmptyArrayStorage;
      v20 = _swiftEmptyArrayStorage;
    }

    sub_100235974(v19);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v15 setOrderingDirections:isa];

    sub_100235974(v20);

    v41 = Array._bridgeToObjectiveC()().super.isa;

    [v15 setOrderingProperties:v41];

    a5 = v51;
  }

  v42 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a7 descriptor:v15];
  v43 = swift_allocObject();
  v43[2] = &v53;
  v43[3] = a5;
  v43[4] = a6;
  v43[5] = a7;
  v44 = swift_allocObject();
  *(v44 + 16) = sub_1002398F8;
  *(v44 + 24) = v43;
  aBlock[4] = sub_100239904;
  aBlock[5] = v44;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10075C858;
  v45 = _Block_copy(aBlock);
  v46 = a7;

  [v42 enumeratePersistentIDsUsingBlock:v45];

  _Block_release(v45);
  LOBYTE(v45) = swift_isEscapingClosureAtFileLocation();

  if (v45)
  {
    __break(1u);
  }

  else
  {
    v48 = v53;

    return v48;
  }

  return result;
}

uint64_t sub_100239938(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077F140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002399A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100239A10(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100239A70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100239AD8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100239B20(uint64_t a1)
{
  v15 = a1;
  v2 = sub_1001F0C48(&qword_10077F3E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v15 - v4;
  v16 = sub_1001F0C48(&qword_10077F328);
  v6 = *(v16 - 8);
  __chkstk_darwin(v16);
  v8 = &v15 - v7;
  v9 = sub_1001F0C48(&qword_10077F3D0);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  swift_defaultActor_initialize();
  v13 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_declarationTasks;
  *(v1 + v13) = sub_100529ED0(_swiftEmptyArrayStorage);
  *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_stateRemovalTimer) = 0;
  *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_statePostTimer) = 0;
  *(v1 + 112) = v15;
  type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  (*(v3 + 104))(v5, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v2);
  static AsyncStream.makeStream(of:bufferingPolicy:)();
  (*(v3 + 8))(v5, v2);
  (*(v10 + 32))(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_operationStream, v12, v9);
  (*(v6 + 32))(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon29ManagedAppDeclarationIngester_operationContinuation, v8, v16);
  return v1;
}

uint64_t sub_100239DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v7 = type metadata accessor for Logger();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for BagService();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();

  return _swift_task_switch(sub_100239EFC, a3, 0);
}

uint64_t sub_100239EFC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = sub_100006D8C(*(v0 + 56), *(*(v0 + 56) + 24));
  (*(v2 + 16))(v1, *v4 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_bagService, v3);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_100239FDC;

  return sub_100324268(v0 + 16);
}

uint64_t sub_100239FDC()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *(*v1 + 112);
  *(*v1 + 144) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_10023A3AC;
  }

  else
  {
    v7 = sub_10023A164;
  }

  return _swift_task_switch(v7, v6, 0);
}

uint64_t sub_10023A164()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_10023A224;
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  return sub_1002636FC(v6, v3, v7, v5, v2, v1);
}

uint64_t sub_10023A224()
{
  v1 = *(*v0 + 64);

  return _swift_task_switch(sub_10023A334, v1, 0);
}

uint64_t sub_10023A334()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023A3AC()
{
  v1 = v0[10];
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Ingest error, failed to load bag: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v10 = v0[1];

  return v10();
}

uint64_t sub_10023A578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return _swift_task_switch(sub_10023A598, a2, 0);
}

uint64_t sub_10023A598()
{
  v1 = v0[4];
  v2 = v1[3];
  v3 = v1[6];
  v4 = v1[7];
  v5 = sub_100006D8C(v1, v2);
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_10023A65C;
  v7 = v0[2];
  v8 = v0[3];

  return sub_10026B32C(v8, v5, v7, v2, v3, v4);
}

uint64_t sub_10023A65C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10023A754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[12] = a4;
  v5[13] = a5;
  v6 = type metadata accessor for Logger();
  v5[14] = v6;
  v5[15] = *(v6 - 8);
  v5[16] = swift_task_alloc();
  v5[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return _swift_task_switch(sub_10023A89C, 0, 0);
}

uint64_t sub_10023A89C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = type metadata accessor for LogKey();
  v10 = *(v0 + 96);
  v5 = objc_allocWithZone(v4);
  v6 = LogKey.init(string:)();
  *(v0 + 168) = v6;
  (*(v3 + 56))(v1, 1, 1, v2);
  v7 = swift_task_alloc();
  *(v0 + 176) = v7;
  *(v7 + 16) = v10;
  v8 = v6;

  return _swift_task_switch(sub_10023A9B8, 0, 0);
}

uint64_t sub_10023A9B8()
{
  sub_100005934(*(v0 + 160), *(v0 + 152), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 184) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Cleanup on start", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 168);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_10023228C((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 192) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 200) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 144);
  v10 = *(v0 + 112);
  v11 = *(v0 + 120);
  sub_100005934(*(v0 + 152), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 152), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 136);
    v15 = *(v0 + 120);
    v14 = *(v0 + 128);
    v16 = *(v0 + 112);
    v22 = *(v0 + 152);
    (*(v15 + 32))(v13, *(v0 + 144), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Cleanup on start", 16, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0);
  }

  *(v0 + 208) = v12;
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 216) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069FD60;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 224) = v20;
  *v20 = v0;
  v20[1] = sub_10023AEE8;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069FD68, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10023AEE8()
{

  if (v0)
  {

    v1 = sub_10023B26C;
  }

  else
  {

    v1 = sub_10023B0A8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_10023B0A8()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_10023B1A0, 0, 0);
}

uint64_t sub_10023B1A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023B26C()
{
}

uint64_t sub_10023B308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return _swift_task_switch(sub_10023B328, 0, 0);
}

uint64_t sub_10023B328()
{
  v1 = v0[3];
  v2 = v1[3];
  v3 = v1[7];
  v4 = sub_100006D8C(v1, v2);
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_10023B3E4;
  v6 = v0[2];

  return sub_10026C768(v4, v6, v2, v3);
}

uint64_t sub_10023B3E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_10023B4DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  v5 = type metadata accessor for Logger();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return _swift_task_switch(sub_10023B630, v3, 0);
}

uint64_t sub_10023B630()
{
  v1 = v0[22];
  v2 = v0[16];
  v3 = v0[17];
  v5 = v0[14];
  v4 = v0[15];
  v6 = v0[12];
  v18 = v0[13];
  sub_1001F0C48(&qword_10077E910);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10069E680;
  ManagedAppDeclaration.declarationIdentifier.getter();
  v8 = String.hashValue.getter();

  *(v7 + 56) = &type metadata for Int;
  *(v7 + 64) = &protocol witness table for Int;
  *(v7 + 32) = v8;
  v9._countAndFlagsBits = String.init(format:_:)();
  String.append(_:)(v9);

  v10 = objc_allocWithZone(type metadata accessor for LogKey());
  v11 = LogKey.init(string:)();
  v0[23] = v11;
  (*(v3 + 56))(v1, 1, 1, v2);
  v12 = swift_task_alloc();
  v0[24] = v12;
  v12[2] = v5;
  v12[3] = v6;
  v12[4] = v11;
  v12[5] = v18;
  v12[6] = v4;
  v0[25] = sub_100262B9C(&qword_10077FE20, type metadata accessor for ManagedAppDeclarationIngester);
  v13 = v11;
  if (v4)
  {
    swift_getObjectType();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v0[26] = v14;
  v0[27] = v16;

  return _swift_task_switch(sub_10023B85C, v14, v16);
}

uint64_t sub_10023B85C()
{
  sub_100005934(*(v0 + 176), *(v0 + 168), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 224) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "addOrUpdateDeclaration", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 184);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 232) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 240) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 160);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_100005934(*(v0 + 168), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 168), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 152);
    v15 = *(v0 + 136);
    v14 = *(v0 + 144);
    v16 = *(v0 + 128);
    v23 = *(v0 + 168);
    (*(v15 + 32))(v13, *(v0 + 160), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("addOrUpdateDeclaration", 22, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v23, &unk_10077F8E0);
  }

  *(v0 + 248) = v12;
  v17 = *(v0 + 192);
  v18 = *(v0 + 184);
  v22 = *(v0 + 120);
  v24 = *(v0 + 200);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 256) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_10069F9F8;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 264) = v20;
  *v20 = v0;
  v20[1] = sub_10023BD94;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069F3A0, v19, v22, v24, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_10023BD94()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 208);
  v4 = *(v2 + 216);
  if (v0)
  {
    v5 = sub_10023C110;
  }

  else
  {
    v5 = sub_10023BF44;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10023BF44()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_10023C040, v2, 0);
}

uint64_t sub_10023C040()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023C110()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 120);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_10023C20C, v2, 0);
}

uint64_t sub_10023C20C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023C2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  type metadata accessor for DDMJournalEntry();
  v6[7] = swift_task_alloc();
  v6[8] = type metadata accessor for ManagedAppDeclarationIngester.Operation(0);
  v6[9] = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_10077F320);
  v6[10] = v8;
  v6[11] = *(v8 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = sub_1001F0C48(&qword_10077F138);
  v6[14] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809E0);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v9 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum();
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();
  v10 = type metadata accessor for DDMDeclaration(0);
  v6[20] = v10;
  v6[21] = *(v10 - 8);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();
  v11 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum();
  v6[26] = v11;
  v6[27] = *(v11 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v12 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum();
  v6[30] = v12;
  v6[31] = *(v12 - 8);
  v6[32] = swift_task_alloc();
  v13 = type metadata accessor for ManagedAppDeclaration.InstallBehavior();
  v6[33] = v13;
  v6[34] = *(v13 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();

  return _swift_task_switch(sub_10023C6D8, a6, 0);
}

uint64_t sub_10023C6D8()
{
  *(v0 + 532) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 532));

  if (*(v0 + 532) && AppBooleanValue)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 24);
    v6 = *(*sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_journal);
    *(v0 + 496) = v6;
    v7 = type metadata accessor for ManagedAppDeclaration();
    (*(*(v7 - 8) + 16))(v4, v5, v7);

    return _swift_task_switch(sub_10023E928, v6, 0);
  }

  v8 = *(v0 + 296);
  v10 = *(v0 + 264);
  v9 = *(v0 + 272);
  v11 = *(v0 + 248);
  v12 = *(v0 + 256);
  v13 = *(v0 + 240);
  v14 = ManagedAppDeclaration.personaIdentifier.getter();
  *(v0 + 304) = v15;
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  v55 = v16;
  if (v15 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.installTiming.getter();
  v18 = *(v9 + 8);
  v18(v8, v10);
  v19 = (*(v11 + 88))(v12, v13);
  if (v19 != enum case for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.immediately(_:) && v19 != enum case for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.onDemand(_:))
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  v52 = enum case for ManagedAppDeclaration.InstallBehavior.InstallTimingEnum.immediately(_:);
  v53 = v19;
  v54 = v17;
  v20 = *(v0 + 288);
  v21 = *(v0 + 264);
  v23 = *(v0 + 224);
  v22 = *(v0 + 232);
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.cellularAvailability.getter();
  v18(v20, v21);
  (*(v25 + 16))(v23, v22, v24);
  v26 = (*(v25 + 88))(v23, v24);
  if (v26 == enum case for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.always(_:))
  {
    v27 = 0;
  }

  else if (v26 == enum case for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.never(_:))
  {
    v27 = 1;
  }

  else
  {
    if (v26 != enum case for ManagedAppDeclaration.InstallBehavior.CellularAvailabilityEnum.storeSettings(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v27 = 2;
  }

  v28 = *(v0 + 280);
  v29 = *(v0 + 264);
  v30 = *(v0 + 144);
  v31 = *(v0 + 152);
  v32 = *(v0 + 136);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.purchaseMethod.getter();
  v18(v28, v29);
  v33 = (*(v30 + 88))(v31, v32);
  if (v33 == enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.volumePurchaseProgram(_:))
  {
    v34 = *(v0 + 152);
    (*(*(v0 + 144) + 96))(v34, *(v0 + 136));
    sub_1001DFEBC(*v34, *(v34 + 8), *(v34 + 16));
    *(v0 + 528) = *(sub_1001F0C48(&qword_10077F330) + 48);
    v35 = swift_task_alloc();
    *(v0 + 312) = v35;
    *v35 = v0;
    v35[1] = sub_10023CDB8;
    v36 = *(v0 + 192);
    v37 = *(v0 + 200);
    v38 = *(v0 + 32);
    v39 = *(v0 + 40);
    v41 = *(v0 + 16);
    v40 = *(v0 + 24);

    return sub_10023F434(v36, v40, v38, v39, v41, v55, v54, v37);
  }

  else if (v33 == enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.manifest(_:))
  {
    v42 = swift_task_alloc();
    *(v0 + 328) = v42;
    *v42 = v0;
    v42[1] = sub_10023D02C;
    v43 = *(v0 + 192);
    v44 = *(v0 + 24);
    v45 = *(v0 + 32);
    v46 = *(v0 + 16);

    return sub_100243FA8(v43, v44, v45, v46, v27, v53 != v52, v55, v54);
  }

  else
  {
    if (v33 != enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.other(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v47 = swift_task_alloc();
    *(v0 + 344) = v47;
    *v47 = v0;
    v47[1] = sub_10023D270;
    v48 = *(v0 + 192);
    v49 = *(v0 + 24);
    v50 = *(v0 + 32);

    return sub_100246E68(v48, v49, v50, v27, v53 != v52, v55, v54);
  }
}

uint64_t sub_10023CDB8()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10023EF74;
  }

  else
  {
    v4 = sub_10023CF34;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023CF34()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 152);
  v3 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);
  v4 = *(v0 + 48);
  sub_1002711BC(*(v0 + 192), *(v0 + 200), type metadata accessor for DDMDeclaration);
  v5 = *(v4 + 112);
  *(v0 + 360) = v5;

  return _swift_task_switch(sub_10023D3EC, v5, 0);
}

uint64_t sub_10023D02C()
{
  v2 = *v1;
  *(*v1 + 336) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10023F124;
  }

  else
  {
    v4 = sub_10023D1A8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023D1A8()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[6];
  sub_1002711BC(v0[24], v0[25], type metadata accessor for DDMDeclaration);
  v2 = *(v1 + 112);
  v0[45] = v2;

  return _swift_task_switch(sub_10023D3EC, v2, 0);
}

uint64_t sub_10023D270()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = sub_10023F2AC;
  }

  else
  {
    v4 = sub_100271E30;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023D3EC()
{
  v1 = v0;
  v2 = v0[45];
  v3 = v0[25];
  v4 = *(v2 + 112);
  v5 = swift_task_alloc();
  v1[46] = v5;
  *(v5 + 16) = v3;
  v6 = swift_task_alloc();
  v1[47] = v6;
  *v6 = v1;
  v6[1] = sub_10023D504;
  v7 = v1[14];

  return sub_10052CDA4(v7, sub_100262B80, v5, v4);
}

uint64_t sub_10023D504()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  v3 = *(v2 + 360);
  if (v0)
  {
    v4 = sub_10023DB04;
  }

  else
  {
    v4 = sub_10023D680;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023D680()
{
  v1 = v0[16];
  v2 = v0[14];
  v3 = v0[6];
  v4 = *(v0[13] + 48);
  sub_1002711BC(v2, v0[23], type metadata accessor for DDMDeclaration);
  sub_10020A668(v2 + v4, v1, &unk_1007809E0);

  return _swift_task_switch(sub_10023D768, v3, 0);
}

uint64_t sub_10023D768()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 120);
  sub_100005934(*(v0 + 128), v3, &unk_1007809E0);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    sub_1000032A8(*(v0 + 120), &unk_1007809E0);
    goto LABEL_9;
  }

  v6 = *(v0 + 176);
  v5 = *(v0 + 184);
  v7 = *(v0 + 160);
  sub_1002711BC(*(v0 + 120), v6, type metadata accessor for DDMDeclaration);
  v8 = *(v7 + 56);
  v9 = *(v6 + v8);
  v10 = *(v6 + v8 + 8);
  v11 = (v5 + v8);
  v12 = *v11;
  *(v0 + 392) = *v11;
  v13 = v11[1];
  *(v0 + 400) = v13;
  v14 = v9 == v12 && v10 == v13;
  if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    sub_100271224(*(v0 + 176), type metadata accessor for DDMDeclaration);
LABEL_9:
    if (v4(*(v0 + 128), 1, *(v0 + 160)) == 1)
    {
      *(v0 + 472) = *(*sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);

      v15 = swift_task_alloc();
      *(v0 + 480) = v15;
      *v15 = v0;
      v15[1] = sub_10023E388;
      v16 = *(v0 + 184);
      v17 = *(v0 + 32);

      return sub_1003051BC(v16, 1, v17);
    }

    else
    {
      v19 = *(v0 + 200);
      v21 = *(v19 + 48);
      v20 = *(v19 + 56);
      v22 = swift_task_alloc();
      *(v0 + 488) = v22;
      *v22 = v0;
      v22[1] = sub_10023E5A4;
      v23 = *(v0 + 16);

      return sub_100248324(v21, v20, v23);
    }
  }

  v24 = *(v0 + 184);
  v25 = *(v0 + 160);
  *(v0 + 408) = *(*sub_100006D8C(*(v0 + 16), *(*(v0 + 16) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStatus);
  v26 = (v24 + *(v25 + 52));
  *(v0 + 416) = *v26;
  *(v0 + 424) = v26[1];
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100262B9C(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);

  v27 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 432) = v27;
  *(v0 + 440) = v28;

  return _swift_task_switch(sub_10023DD1C, v27, v28);
}

uint64_t sub_10023DB04()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10023DB90, v1, 0);
}

uint64_t sub_10023DB90()
{
  sub_100271224(*(v0 + 200), type metadata accessor for DDMDeclaration);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023DD1C()
{
  v6 = *(v0 + 416);
  v1 = *(v0 + 400);
  v2 = *(v0 + 392);
  v3 = swift_task_alloc();
  *(v0 + 448) = v3;
  *(v3 + 16) = v6;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v4 = swift_task_alloc();
  *(v0 + 456) = v4;
  *v4 = v0;
  v4[1] = sub_10023DE40;

  return sub_10052E0B0(v4, sub_100262BE4, v3);
}

uint64_t sub_10023DE40()
{
  v2 = *v1;
  *(*v1 + 464) = v0;

  if (v0)
  {
    v3 = *(v2 + 432);
    v4 = *(v2 + 440);
    v5 = sub_10023E11C;
  }

  else
  {

    v3 = *(v2 + 432);
    v4 = *(v2 + 440);
    v5 = sub_10023DF90;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10023DF90()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10023E01C, v1, 0);
}

uint64_t sub_10023E01C()
{
  v1 = v0[22];

  sub_100271224(v1, type metadata accessor for DDMDeclaration);
  v2 = v0[25];
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_10023E5A4;
  v6 = v0[2];

  return sub_100248324(v4, v3, v6);
}

uint64_t sub_10023E11C()
{
  v1 = *(v0 + 48);

  return _swift_task_switch(sub_10023E1B4, v1, 0);
}

uint64_t sub_10023E1B4()
{
  v1 = v0[25];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[16];

  sub_100271224(v3, type metadata accessor for DDMDeclaration);
  sub_1000032A8(v4, &unk_1007809E0);
  sub_100271224(v2, type metadata accessor for DDMDeclaration);
  sub_100271224(v1, type metadata accessor for DDMDeclaration);

  v5 = v0[1];

  return v5();
}

uint64_t sub_10023E388()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10023E4C4, v1, 0);
}

uint64_t sub_10023E4C4()
{

  v1 = v0[25];
  v3 = *(v1 + 48);
  v2 = *(v1 + 56);
  v4 = swift_task_alloc();
  v0[61] = v4;
  *v4 = v0;
  v4[1] = sub_10023E5A4;
  v5 = v0[2];

  return sub_100248324(v3, v2, v5);
}

uint64_t sub_10023E5A4()
{
  v1 = *(*v0 + 48);

  return _swift_task_switch(sub_10023E6E0, v1, 0);
}

uint64_t sub_10023E6E0()
{
  v1 = v0[25];
  v8 = v0[23];
  v2 = v0[16];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  sub_100271284(v1, v0[9], type metadata accessor for DDMDeclaration);
  swift_storeEnumTagMultiPayload();
  sub_1001F0C48(&qword_10077F328);
  AsyncStream.Continuation.yield(_:)();
  (*(v4 + 8))(v3, v5);
  sub_1000032A8(v2, &unk_1007809E0);
  sub_100271224(v8, type metadata accessor for DDMDeclaration);
  sub_100271224(v1, type metadata accessor for DDMDeclaration);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10023E928()
{
  v1 = v0[7];
  v2 = *(v0[62] + 112);
  v3 = swift_task_alloc();
  v0[63] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[64] = v4;
  *v4 = v0;
  v4[1] = sub_10023EA38;

  return sub_10052D7DC(v4, sub_100262B64, v3, v2);
}

uint64_t sub_10023EA38()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  v3 = *(v2 + 496);
  if (v0)
  {
    v4 = sub_10023ED48;
  }

  else
  {
    v4 = sub_10023EBB4;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10023EBB4()
{
  v1 = *(v0 + 56);

  sub_100271224(v1, type metadata accessor for DDMJournalEntry);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10023ED48()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);

  sub_100271224(v1, type metadata accessor for DDMJournalEntry);

  return _swift_task_switch(sub_10023EE04, v2, 0);
}

uint64_t sub_10023EE04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10023EF74()
{
  v1 = *(v0 + 528);
  v2 = *(v0 + 152);
  v3 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10023F124()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10023F2AC()
{
  (*(v0[18] + 8))(v0[19], v0[17]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10023F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 193) = v25;
  *(v8 + 1088) = a8;
  *(v8 + 1080) = a7;
  *(v8 + 1072) = a6;
  *(v8 + 1064) = a5;
  *(v8 + 1056) = a4;
  *(v8 + 1048) = a3;
  *(v8 + 1040) = a2;
  *(v8 + 1032) = a1;
  v9 = type metadata accessor for ManagedApp.License();
  *(v8 + 1096) = v9;
  *(v8 + 1104) = *(v9 - 8);
  *(v8 + 1112) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F338);
  *(v8 + 1120) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F148);
  *(v8 + 1128) = swift_task_alloc();
  v10 = type metadata accessor for ManagedApp();
  *(v8 + 1136) = v10;
  *(v8 + 1144) = *(v10 - 8);
  *(v8 + 1152) = swift_task_alloc();
  *(v8 + 1160) = type metadata accessor for AppStoreItem(0);
  *(v8 + 1168) = swift_task_alloc();
  *(v8 + 1176) = type metadata accessor for AppStorePurchaseRequest(0);
  *(v8 + 1184) = swift_task_alloc();
  updated = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum();
  *(v8 + 1192) = updated;
  *(v8 + 1200) = *(updated - 8);
  *(v8 + 1208) = swift_task_alloc();
  v12 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy();
  *(v8 + 1216) = v12;
  *(v8 + 1224) = *(v12 - 8);
  *(v8 + 1232) = swift_task_alloc();
  *(v8 + 1240) = type metadata accessor for DDMDeclaration(0);
  *(v8 + 1248) = swift_task_alloc();
  v13 = type metadata accessor for DDMPurchaseMethod();
  *(v8 + 1256) = v13;
  *(v8 + 1264) = *(v13 - 8);
  *(v8 + 1272) = swift_task_alloc();
  *(v8 + 1280) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 1288) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  *(v8 + 1296) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F348);
  *(v8 + 1304) = swift_task_alloc();
  v14 = type metadata accessor for ManagedAppDeclaration.BackupBehavior();
  *(v8 + 1312) = v14;
  *(v8 + 1320) = *(v14 - 8);
  *(v8 + 1328) = swift_task_alloc();
  v15 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior();
  *(v8 + 1336) = v15;
  *(v8 + 1344) = *(v15 - 8);
  *(v8 + 1352) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F350);
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F358);
  *(v8 + 1376) = swift_task_alloc();
  type metadata accessor for MediaAPIApp.Attributes(0);
  *(v8 + 1384) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F360);
  *(v8 + 1392) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F368);
  *(v8 + 1400) = swift_task_alloc();
  v16 = type metadata accessor for MediaAPIApp(0);
  *(v8 + 1408) = v16;
  *(v8 + 1416) = *(v16 - 8);
  *(v8 + 1424) = swift_task_alloc();
  v17 = type metadata accessor for Platform();
  *(v8 + 1432) = v17;
  *(v8 + 1440) = *(v17 - 8);
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F130);
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();
  v18 = type metadata accessor for ManagedAppDeclaration();
  *(v8 + 1520) = v18;
  *(v8 + 1528) = *(v18 - 8);
  *(v8 + 1536) = swift_task_alloc();
  *(v8 + 1544) = swift_task_alloc();
  v19 = type metadata accessor for Logger();
  *(v8 + 1552) = v19;
  *(v8 + 1560) = *(v19 - 8);
  *(v8 + 1568) = swift_task_alloc();
  *(v8 + 1576) = swift_task_alloc();
  v20 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum();
  *(v8 + 1584) = v20;
  *(v8 + 1592) = *(v20 - 8);
  *(v8 + 1600) = swift_task_alloc();
  v21 = type metadata accessor for ManagedAppDeclaration.InstallBehavior();
  *(v8 + 1608) = v21;
  *(v8 + 1616) = *(v21 - 8);
  *(v8 + 1624) = swift_task_alloc();
  *(v8 + 1632) = swift_task_alloc();
  *(v8 + 1640) = swift_task_alloc();
  v22 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  *(v8 + 1648) = v22;
  *(v8 + 1656) = *(v22 - 8);
  *(v8 + 1664) = swift_task_alloc();
  *(v8 + 1672) = swift_task_alloc();
  *(v8 + 1680) = swift_task_alloc();

  return _swift_task_switch(sub_10023FD68, 0, 0);
}

uint64_t sub_10023FD68()
{
  v67 = v0;
  v1 = *(v0 + 1640);
  v2 = *(v0 + 1616);
  v3 = *(v0 + 1608);
  v4 = *(v0 + 1600);
  v5 = *(v0 + 1592);
  v6 = *(v0 + 1584);
  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.purchaseMethod.getter();
  v7 = *(v2 + 8);
  *(v0 + 1688) = v7;
  *(v0 + 1696) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if ((*(v5 + 88))(v4, v6) == enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.volumePurchaseProgram(_:))
  {
    v8 = *(v0 + 1680);
    v9 = *(v0 + 1656);
    v10 = *(v0 + 1648);
    v11 = *(v0 + 1600);
    v12 = *(v0 + 1544);
    v13 = *(v0 + 1528);
    v14 = *(v0 + 1520);
    v61 = *(v0 + 1048);
    v15 = *(v0 + 1040);
    (*(*(v0 + 1592) + 96))(v11, *(v0 + 1584));
    v65 = *v11;
    *(v0 + 1704) = *v11;
    v64 = *(v11 + 8);
    *(v0 + 1712) = v64;
    v63 = *(v11 + 16);
    *(v0 + 195) = v63;
    v16 = sub_1001F0C48(&qword_10077F330);
    (*(v9 + 32))(v8, v11 + *(v16 + 48), v10);
    static Logger.ddm.getter();
    v17 = *(v13 + 16);
    *(v0 + 1720) = v17;
    *(v0 + 1728) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v17(v12, v15, v14);
    v18 = v61;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();

    v21 = os_log_type_enabled(v19, v20);
    v22 = *(v0 + 1576);
    v23 = *(v0 + 1560);
    v24 = *(v0 + 1552);
    v25 = *(v0 + 1544);
    v26 = *(v0 + 1528);
    v27 = *(v0 + 1520);
    if (v21)
    {
      v62 = *(v0 + 1576);
      v28 = *(v0 + 1048);
      v29 = swift_slowAlloc();
      log = v19;
      v30 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v66 = v59;
      *v29 = 138412546;
      *(v29 + 4) = v28;
      *v30 = v28;
      *(v29 + 12) = 2082;
      v31 = v28;
      v32 = ManagedAppDeclaration.declarationIdentifier.getter();
      v60 = v24;
      v34 = v33;
      v57 = v20;
      v35 = *(v26 + 8);
      v35(v25, v27);
      v36 = sub_1002346CC(v32, v34, &v66);

      *(v29 + 14) = v36;
      _os_log_impl(&_mh_execute_header, log, v57, "[%@] Requesting metadata for declaration %{public}s", v29, 0x16u);
      sub_1000032A8(v30, &qword_10077F920);

      sub_10000710C(v59);

      v37 = *(v23 + 8);
      v37(v62, v60);
    }

    else
    {

      v35 = *(v26 + 8);
      v35(v25, v27);
      v37 = *(v23 + 8);
      v37(v22, v24);
    }

    *(v0 + 1744) = v35;
    *(v0 + 1736) = v37;
    v38 = *(v0 + 1512);
    v39 = *(v0 + 1392);
    v40 = *(v0 + 1064);
    v41 = *(v0 + 1056);
    v42 = type metadata accessor for DDMCachedMetadata(0);
    *(v0 + 1752) = v42;
    v43 = *(v42 - 8);
    v44 = *(v43 + 56);
    *(v0 + 1760) = v44;
    *(v0 + 1768) = (v43 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v44(v38, 1, 1, v42);
    ManagedAppDeclaration.platform.getter();
    sub_10020A980(v41, v0 + 200);
    v45 = (*sub_100006D8C(v40, v40[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v47 = v45[4];
    v46 = v45[5];
    v48 = v45[3];
    *(v0 + 455) = *(v45 + 95);
    *(v0 + 424) = v47;
    *(v0 + 440) = v46;
    *(v0 + 408) = v48;
    v50 = v45[1];
    v49 = v45[2];
    *(v0 + 360) = *v45;
    *(v0 + 376) = v50;
    *(v0 + 392) = v49;
    memmove((v0 + 240), v45, 0x6FuLL);
    *(v0 + 352) = 0;
    sub_10020A7AC(v0 + 360, v0 + 472);
    static Platform.current.getter();
    v51 = type metadata accessor for Locale.Language();
    (*(*(v51 - 8) + 56))(v39, 1, 1, v51);
    v52 = swift_task_alloc();
    *(v0 + 1776) = v52;
    *v52 = v0;
    v52[1] = sub_10024029C;
    v53 = *(v0 + 1480);
    v54 = *(v0 + 1400);
    v55 = *(v0 + 1392);

    return sub_1003726D4(v54, v65, v64, v63, v53, v55);
  }

  else
  {
    result = (*(*(v0 + 1592) + 8))(*(v0 + 1600), *(v0 + 1584));
    __break(1u);
  }

  return result;
}

uint64_t sub_10024029C()
{
  v2 = *v1;
  v2[223] = v0;

  v3 = v2[185];
  v4 = v2[180];
  v5 = v2[179];
  sub_1000032A8(v2[174], &qword_10077F360);
  v8 = *(v4 + 8);
  v7 = v4 + 8;
  v6 = v8;
  if (v0)
  {
    v6(v3, v5);
    v9 = sub_100243738;
  }

  else
  {
    v2[224] = v6;
    v2[225] = v7 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v6(v3, v5);
    v9 = sub_100240468;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100240468()
{
  v254 = v0;
  v1 = *(v0 + 1400);
  if ((*(*(v0 + 1416) + 48))(v1, 1, *(v0 + 1408)) == 1)
  {
    sub_1000032A8(v1, &qword_10077F368);
    type metadata accessor for InternalError();
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v2 = swift_allocError();
    v4 = v3;
    *v3 = StoreAppIdentifier.description.getter();
    v4[1] = v5;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_8:
    sub_100262C04(v0 + 200);
    *(v0 + 1840) = v2;
    v42 = *(v0 + 1720);
    v43 = *(v0 + 1536);
    v44 = *(v0 + 1520);
    v45 = *(v0 + 1048);
    v46 = *(v0 + 1040);
    static Logger.ddm.getter();
    v42(v43, v46, v44);
    v47 = v45;
    swift_errorRetain();
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v235 = v49;
    v50 = os_log_type_enabled(v48, v49);
    v51 = *(v0 + 1744);
    v52 = *(v0 + 1736);
    v53 = *(v0 + 1568);
    v54 = *(v0 + 1552);
    v55 = *(v0 + 1536);
    v56 = *(v0 + 1520);
    if (v50)
    {
      log = v48;
      v57 = *(v0 + 1048);
      v229 = *(v0 + 1736);
      v58 = swift_slowAlloc();
      v225 = v54;
      v59 = swift_slowAlloc();
      v218 = swift_slowAlloc();
      *&v242[0] = v218;
      *v58 = 138412802;
      *(v58 + 4) = v57;
      *v59 = v57;
      *(v58 + 12) = 2082;
      v60 = v57;
      v61 = ManagedAppDeclaration.declarationIdentifier.getter();
      v221 = v53;
      v63 = v62;
      v51(v55, v56);
      v64 = sub_1002346CC(v61, v63, v242);

      *(v58 + 14) = v64;
      *(v58 + 22) = 2114;
      swift_errorRetain();
      v65 = _swift_stdlib_bridgeErrorToNSError();
      *(v58 + 24) = v65;
      v59[1] = v65;
      _os_log_impl(&_mh_execute_header, log, v235, "[%@] MediaAPI lookup for declaration %{public}s failed, trying purchase instead (%{public}@)", v58, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v218);

      v229(v221, v225);
    }

    else
    {

      v51(v55, v56);
      v52(v53, v54);
    }

    v237 = *(v0 + 195);
    v66 = *(v0 + 1656);
    v67 = *(v0 + 1184);
    v68 = *(v0 + 1176);
    v230 = *(v0 + 1072);
    v236 = *(v0 + 1080);
    v69 = *(v0 + 1064);
    v70 = *(v0 + 1056);
    v71 = *(v0 + 1048);
    v72 = sub_100508448(*(v0 + 1704), *(v0 + 1712), v237);
    v73 = v68[8];
    *(v0 + 196) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:);
    (*(v66 + 104))(v67 + v73);
    v74 = (*sub_100006D8C(v69, v69[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v75 = *(v74 + 95);
    v76 = v74[5];
    v77 = v74[3];
    *(v0 + 648) = v74[4];
    *(v0 + 664) = v76;
    *(v0 + 679) = v75;
    *(v0 + 632) = v77;
    v78 = *v74;
    v79 = v74[2];
    *(v0 + 600) = v74[1];
    *(v0 + 616) = v79;
    *(v0 + 584) = v78;
    sub_10020A980(v70, v67 + v68[10]);
    *v67 = v72;
    *(v67 + 8) = 0u;
    *(v67 + 24) = 0u;
    *(v67 + 40) = 0;
    *(v67 + 48) = v230;
    *(v67 + 56) = v236;
    v80 = (v67 + v68[9]);
    v81 = *(v0 + 632);
    v82 = *(v0 + 648);
    v83 = *(v0 + 664);
    *(v80 + 95) = *(v0 + 679);
    v80[4] = v82;
    v80[5] = v83;
    v80[3] = v81;
    v85 = *(v0 + 600);
    v84 = *(v0 + 616);
    *v80 = *(v0 + 584);
    v80[1] = v85;
    v80[2] = v84;
    *(v67 + v68[11]) = 0;
    *(v67 + v68[12]) = 0;
    v86 = v67 + v68[13];
    *v86 = 0;
    *(v86 + 8) = 1;
    *(v67 + v68[14]) = v71;
    *(v0 + 1848) = *(*sub_100006D8C(v69, v69[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);
    v87 = v71;
    sub_10026E620(v230, v236);
    sub_10020A7AC(v0 + 584, v0 + 696);

    v88 = swift_task_alloc();
    *(v0 + 1856) = v88;
    *v88 = v0;
    v88[1] = sub_100241FAC;
    v89 = *(v0 + 1712);
    v90 = *(v0 + 1704);
    v91 = *(v0 + 1184);
    v92 = *(v0 + 1168);

    return sub_1005002C0(v92, v90, v89, v237, v91);
  }

  v6 = *(v0 + 1784);
  v7 = *(v0 + 1472);
  v8 = *(v0 + 1464);
  v9 = *(v0 + 1064);
  sub_1002711BC(v1, *(v0 + 1424), type metadata accessor for MediaAPIApp);
  v10 = (*sub_100006D8C(v9, v9[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v12 = v10[4];
  v11 = v10[5];
  v13 = v10[3];
  *(v0 + 903) = *(v10 + 95);
  *(v0 + 872) = v12;
  *(v0 + 888) = v11;
  *(v0 + 856) = v13;
  v15 = v10[1];
  v14 = v10[2];
  *(v0 + 808) = *v10;
  *(v0 + 824) = v15;
  *(v0 + 840) = v14;
  sub_10020A7AC(v0 + 808, v0 + 920);
  static Platform.iOS.getter();
  v16 = sub_1004FF904();
  sub_10020A92C(v0 + 808);
  sub_100373074(v7, v8, v16, v242);
  v2 = v6;
  v17 = *(v0 + 1792);
  v18 = *(v0 + 1464);
  v19 = *(v0 + 1432);
  v20 = *(v0 + 1424);
  if (v2)
  {

    v21 = v18;
LABEL_7:
    v17(v21, v19);
    sub_100271224(v20, type metadata accessor for MediaAPIApp);
    goto LABEL_8;
  }

  v22 = *(&v242[0] + 1);
  v23 = v242[1];
  v24 = v242[2];
  v25 = v242[3];
  v26 = v243;
  v27 = v244;
  v28 = v245;
  v29 = v246;
  v30 = v247;
  v31 = v248;
  v32 = v249;
  v33 = v250;
  v34 = v251;
  v35 = v252;
  v36 = v253;
  *(v0 + 16) = *&v242[0];
  *(v0 + 24) = v22;
  *(v0 + 32) = v23;
  *(v0 + 48) = v24;
  *(v0 + 64) = v25;
  *(v0 + 80) = v26;
  *(v0 + 88) = v27;
  *(v0 + 96) = v28;
  *(v0 + 112) = v29;
  *(v0 + 128) = v30;
  *(v0 + 136) = v31;
  *(v0 + 144) = v32;
  *(v0 + 152) = v33;
  *(v0 + 168) = v34;
  *(v0 + 176) = v35;
  *(v0 + 192) = v36;
  v17(v18, v19);

  v37 = *v20;
  v38 = v20[1];

  v234 = sub_1005B7724(v37, v38);
  v17 = *(v0 + 1792);
  if (v39)
  {
    v40 = *(v0 + 1472);
    v19 = *(v0 + 1432);
    v20 = *(v0 + 1424);
    sub_10026E6B8(v0 + 16);
    type metadata accessor for InternalError();
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    v2 = swift_allocError();
    *v41 = 0x44496D657469;
    v41[1] = 0xE600000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v21 = v40;
    goto LABEL_7;
  }

  v94 = *(v0 + 1488);
  v95 = *(v0 + 1472);
  v96 = *(v0 + 1440);
  v97 = *(v0 + 1432);
  v98 = *(v0 + 1424);
  v99 = *(v0 + 1408);
  v100 = *(v0 + 1384);
  sub_1001DFEBC(*(v0 + 1704), *(v0 + 1712), *(v0 + 195));
  sub_100262C04(v0 + 200);
  v17(v94, v97);
  v204 = *(v0 + 16);
  v205 = *(v0 + 24);

  sub_10026E6B8(v0 + 16);
  sub_100271284(v98 + *(v99 + 24), v100, type metadata accessor for MediaAPIApp.Attributes);
  sub_100271224(v98, type metadata accessor for MediaAPIApp);
  v206 = *(v100 + 16);
  v207 = *(v100 + 24);

  sub_100271224(v100, type metadata accessor for MediaAPIApp.Attributes);
  (*(v96 + 32))(v94, v95, v97);
  v101 = *(v0 + 1376);
  ManagedAppDeclaration.attributes.getter();
  v102 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v103 = *(v102 - 8);
  v104 = (*(v103 + 48))(v101, 1, v102);
  v105 = *(v0 + 1376);
  if (v104 == 1)
  {
    sub_1000032A8(*(v0 + 1376), &qword_10077F358);
    v197 = 0xF000000000000000;
    v198 = 0;
  }

  else
  {
    v106 = ManagedAppDeclaration.Attributes.rawValue.getter();
    v197 = v107;
    v198 = v106;
    (*(v103 + 8))(v105, v102);
  }

  v192 = *(v0 + 1760);
  v190 = *(v0 + 1752);
  v176 = *(v0 + 1688);
  v178 = *(v0 + 1680);
  v238 = *(v0 + 1656);
  v208 = *(v0 + 1648);
  v174 = *(v0 + 1632);
  v175 = *(v0 + 1608);
  v212 = *(v0 + 1504);
  v185 = *(v0 + 1512);
  v187 = *(v0 + 1488);
  v222 = *(v0 + 1440);
  v226 = *(v0 + 1432);
  v231 = *(v0 + 1456);
  v108 = *(v0 + 1368);
  v203 = *(v0 + 1360);
  v109 = *(v0 + 1352);
  v110 = *(v0 + 1344);
  v189 = *(v0 + 1336);
  v111 = *(v0 + 1328);
  v181 = *(v0 + 1320);
  v183 = *(v0 + 1312);
  v210 = *(v0 + 1296);
  v211 = *(v0 + 1304);
  v213 = *(v0 + 1288);
  v214 = *(v0 + 1264);
  loga = *(v0 + 1256);
  v219 = *(v0 + 1280);
  v112 = *(v0 + 1248);
  v172 = *(v0 + 1240);
  v113 = *(v0 + 1224);
  v114 = *(v0 + 1216);
  v201 = v114;
  v202 = v113;
  v196 = *(v0 + 194);
  v195 = *(v0 + 193);
  v199 = *(v0 + 1072);
  v200 = *(v0 + 1080);
  ManagedAppDeclaration.updateBehavior.getter();
  ManagedAppDeclaration.UpdateBehavior.automaticUpdatePolicy.getter();
  (*(v110 + 8))(v109, v189);
  (*(v113 + 56))(v108, 0, 1, v114);
  ManagedAppDeclaration.backupBehavior.getter();
  LOBYTE(v189) = ManagedAppDeclaration.BackupBehavior.backupAppData.getter();
  (*(v181 + 8))(v111, v183);
  sub_100005934(v185, v212, &qword_10077F130);
  v115 = type metadata accessor for ComposedIdentifier();
  v173 = *(*(v115 - 8) + 56);
  v173(v211, 1, 1, v115);
  v116 = ManagedAppDeclaration.declarationIdentifier.getter();
  v184 = v117;
  v186 = v116;
  v118 = ManagedAppDeclaration.declarationKey.getter();
  v180 = v119;
  v182 = v118;
  ManagedAppDeclaration.installBehavior.getter();
  v179 = ManagedAppDeclaration.InstallBehavior.isAccountPromptAllowed.getter();
  v176(v174, v175);
  (*(v238 + 16))(v210, v178, v208);
  v120 = *(v238 + 56);
  v120(v210, 0, 1, v208);
  LOBYTE(v178) = ManagedAppDeclaration.managementScope.getter();
  v121 = type metadata accessor for URL();
  v122 = *(*(v121 - 8) + 56);
  v122(v213, 1, 1, v121);
  (*(v222 + 16))(v231, v187, v226);
  v177 = *(v214 + 104);
  v177(v219, enum case for DDMPurchaseMethod.volumePurchaseProgram(_:), loga);
  *(v112 + 24) = xmmword_10069E8A0;
  v123 = v172[10];
  v192(v112 + v123, 1, 1, v190);
  v124 = v172[12];
  v188 = v172[11];
  v173(v112 + v124, 1, 1, v115);
  v194 = v172[16];
  v125 = v172[18];
  v191 = v172[15];
  v193 = v172[17];
  v120(v112 + v125, 1, 1, v208);
  v126 = v172[20];
  v209 = v172[19];
  v122(v112 + v126, 1, 1, v121);
  v127 = (v112 + v172[22]);
  v128 = v112 + v172[23];
  v129 = v172[24];
  static Platform.current.getter();
  v239 = (v112 + v172[26]);
  *v112 = 0;
  *(v112 + 8) = v234;
  *(v112 + 16) = 0;
  sub_1001CEE68(*(v112 + 24), *(v112 + 32));
  *(v112 + 24) = v198;
  *(v112 + 32) = v197;
  *(v112 + 41) = v189 & 1;
  *(v112 + 48) = v204;
  *(v112 + 56) = v205;
  sub_10026E634(v212, v112 + v123, &qword_10077F130);
  *(v112 + v188) = v195;
  sub_10026E634(v211, v112 + v124, &qword_10077F348);
  v130 = (v112 + v172[13]);
  *v130 = v186;
  v130[1] = v184;
  v131 = (v112 + v172[14]);
  *v131 = v182;
  v131[1] = v180;
  *(v112 + v191) = v196 & 1;
  *(v112 + v194) = v179 & 1;
  *(v112 + v193) = 1;
  sub_10026E634(v210, v112 + v125, &qword_10077F340);
  *(v112 + v209) = v178 & 1;
  sub_10026E634(v213, v112 + v126, &unk_1007809F0);
  v132 = (v112 + v172[21]);
  *v132 = v206;
  v132[1] = v207;
  *v127 = v199;
  v127[1] = v200;
  *v128 = 0;
  *(v128 + 8) = 1;
  sub_10026E620(v199, v200);
  (*(v222 + 24))(v112 + v129, v231, v226);
  (*(v214 + 16))(v112 + v172[25], v219, loga);
  *v239 = 0;
  v239[1] = 0;
  sub_100005934(v108, v203, &qword_10077F350);
  if ((*(v202 + 48))(v203, 1, v201) == 1)
  {
    v133 = *(v0 + 1456);
    v134 = *(v0 + 1440);
    v135 = *(v0 + 1432);
    v240 = *(v0 + 1368);
    v227 = *(v0 + 1304);
    v232 = *(v0 + 1504);
    v223 = *(v0 + 1296);
    logb = *(v0 + 1288);
    v136 = *(v0 + 1280);
    v137 = *(v0 + 1272);
    v138 = *(v0 + 1264);
    v139 = *(v0 + 1256);
    sub_1000032A8(*(v0 + 1360), &qword_10077F350);
    v177(v137, enum case for DDMPurchaseMethod.manifest(_:), v139);
    v220 = static DDMPurchaseMethod.== infix(_:_:)();
    v140 = *(v138 + 8);
    v140(v137, v139);
    v140(v136, v139);
    v141 = *(v134 + 8);
    v141(v133, v135);
    sub_1000032A8(logb, &unk_1007809F0);
    sub_1000032A8(v223, &qword_10077F340);
    sub_1000032A8(v227, &qword_10077F348);
    sub_1000032A8(v232, &qword_10077F130);
    sub_1000032A8(v240, &qword_10077F350);
    if (v220)
    {
      v142 = 1;
    }

    else
    {
      v142 = 2;
    }
  }

  else
  {
    v143 = *(v0 + 1208);
    v144 = *(v0 + 1200);
    v145 = *(v0 + 1192);
    (*(*(v0 + 1224) + 32))(*(v0 + 1232), *(v0 + 1360), *(v0 + 1216));
    ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.rawValue.getter();
    v146 = (*(v144 + 88))(v143, v145);
    if (v146 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.on(_:))
    {
      v142 = 0;
    }

    else if (v146 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.off(_:))
    {
      v142 = 1;
    }

    else
    {
      if (v146 != enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.storeSettings(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v142 = 2;
    }

    v147 = *(v0 + 1456);
    v148 = *(v0 + 1440);
    v149 = *(v0 + 1432);
    v241 = *(v0 + 1368);
    v228 = *(v0 + 1304);
    v233 = *(v0 + 1504);
    v224 = *(v0 + 1296);
    v150 = *(v0 + 1288);
    v151 = *(v0 + 1280);
    v152 = *(v0 + 1264);
    v153 = *(v0 + 1256);
    (*(*(v0 + 1224) + 8))(*(v0 + 1232), *(v0 + 1216));
    (*(v152 + 8))(v151, v153);
    v141 = *(v148 + 8);
    v141(v147, v149);
    sub_1000032A8(v150, &unk_1007809F0);
    sub_1000032A8(v224, &qword_10077F340);
    sub_1000032A8(v228, &qword_10077F348);
    sub_1000032A8(v233, &qword_10077F130);
    sub_1000032A8(v241, &qword_10077F350);
  }

  *(v0 + 1808) = v141;
  v154 = *(v0 + 1688);
  v155 = *(v0 + 1624);
  v156 = *(v0 + 1608);
  v157 = *(v0 + 1248);
  v158 = *(v0 + 1032);
  *(v157 + 40) = v142;
  sub_1002711BC(v157, v158, type metadata accessor for DDMDeclaration);
  ManagedAppDeclaration.installBehavior.getter();
  v159 = ManagedAppDeclaration.InstallBehavior.version.getter();
  v161 = v160;
  v154(v155, v156);
  if (v161)
  {
    v162 = *(v0 + 1680);
    v163 = *(v0 + 1656);
    v164 = *(v0 + 1648);
    v165 = *(v0 + 1512);
    (*(v0 + 1808))(*(v0 + 1488), *(v0 + 1432));
    sub_1000032A8(v165, &qword_10077F130);
    (*(v163 + 8))(v162, v164);

    v166 = *(v0 + 8);

    return v166();
  }

  else
  {
    v167 = *(v0 + 1064);
    v168 = *(v0 + 1032) + v172[23];
    *v168 = v159;
    *(v168 + 8) = 0;
    v169 = *(*sub_100006D8C(v167, v167[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
    *(v0 + 1816) = v169;
    v170 = swift_task_alloc();
    *(v0 + 1824) = v170;
    *(v170 + 16) = v234;

    v171 = swift_task_alloc();
    *(v0 + 1832) = v171;
    *v171 = v0;
    v171[1] = sub_100241B08;

    return sub_10052EF68(sub_10052EF68, sub_10026E69C, v170, v169);
  }
}

uint64_t sub_100241B08()
{

  if (v0)
  {

    v1 = sub_100271EA4;
  }

  else
  {

    v1 = sub_100241C74;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100241C74()
{
  v1 = *(v0 + 1680);
  v2 = *(v0 + 1656);
  v3 = *(v0 + 1648);
  v4 = *(v0 + 1512);
  (*(v0 + 1808))(*(v0 + 1488), *(v0 + 1432));
  sub_1000032A8(v4, &qword_10077F130);
  (*(v2 + 8))(v1, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100241FAC()
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 1864) = v0;

  v4 = *(v3 + 195);
  v5 = *(v2 + 1712);
  v6 = *(v2 + 1704);
  if (v0)
  {

    sub_1001DFEBC(v6, v5, v4);
    v7 = sub_100243BE8;
  }

  else
  {
    sub_1001DFEBC(v6, v5, v4);

    v7 = sub_100242140;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_100242140()
{
  v1 = *(v0 + 1168);
  v2 = *v1;
  if (*v1 < 0)
  {
    type metadata accessor for InternalError();
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    *v14 = 0x44496D657469;
    v14[1] = 0xE600000000000000;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100271224(v1, type metadata accessor for AppStoreItem);
    v15 = *(v0 + 1680);
    v16 = *(v0 + 1656);
    v17 = *(v0 + 1648);
    v18 = *(v0 + 1512);
    v19 = *(v0 + 1488);
    v20 = *(v0 + 1440);
    v21 = *(v0 + 1432);
    sub_100271224(*(v0 + 1184), type metadata accessor for AppStorePurchaseRequest);
    (*(v20 + 8))(v19, v21);
    sub_1000032A8(v18, &qword_10077F130);
    (*(v16 + 8))(v15, v17);

    v22 = *(v0 + 8);
LABEL_26:

    return v22();
  }

  v3 = *(v0 + 196);
  v4 = *(v0 + 1672);
  v5 = *(v0 + 1664);
  v6 = *(v0 + 1656);
  v7 = *(v0 + 1648);
  v8 = (v1 + *(*(v0 + 1160) + 24));
  v148 = v8[2];
  v9 = v8[27];
  v176 = v8[3];
  v179 = v8[28];
  v10 = (*(v0 + 1088) + *(*(v0 + 1240) + 52));
  v182 = *v10;
  v170 = v10[1];
  v11 = *(v6 + 16);
  v11(v4, *(v0 + 1680), v7);
  v11(v5, v4, v7);
  v12 = (*(v6 + 88))(v5, v7);
  if (v12 == v3)
  {
    v147 = v9;
    v149 = v2;
    v13 = &enum case for ManagedApp.License.user(_:);
  }

  else
  {
    if (v12 != enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:))
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }

    v147 = v9;
    v149 = v2;
    v13 = &enum case for ManagedApp.License.device(_:);
  }

  v156 = v13;
  v23 = *(v0 + 1672);
  v24 = *(v0 + 1648);
  v162 = *(v0 + 1168);
  v166 = *(v0 + 1864);
  v25 = *(v0 + 1120);
  v26 = *(v0 + 1112);
  v27 = *(v0 + 1104);
  v28 = *(v0 + 1096);
  v159 = *(v0 + 1128);
  v29 = *(*(v0 + 1656) + 8);

  v29(v23, v24);
  (*(v27 + 104))(v26, *v156, v28);
  (*(v27 + 32))(v25, v26, v28);
  (*(v27 + 56))(v25, 0, 1, v28);
  ManagedAppDeclaration.platform.getter();
  sub_100340004(v162, v182, v170, v25, v159);
  if (v166)
  {
    v30 = *(v0 + 1448);
    v31 = *(v0 + 1440);
    v32 = *(v0 + 1432);
    v171 = *(v0 + 1184);
    v33 = *(v0 + 1168);
    v34 = *(v0 + 1144);
    v183 = *(v0 + 1136);
    v35 = *(v0 + 1128);
    v36 = *(v0 + 1120);

    (*(v31 + 8))(v30, v32);
    sub_1000032A8(v36, &qword_10077F338);
    sub_100271224(v33, type metadata accessor for AppStoreItem);
    sub_100271224(v171, type metadata accessor for AppStorePurchaseRequest);
    (*(v34 + 56))(v35, 1, 1, v183);
    sub_1000032A8(v35, &qword_10077F148);
  }

  else
  {
    v37 = *(v0 + 1752);
    v167 = *(v0 + 1512);
    v172 = *(v0 + 1760);
    v38 = *(v0 + 1496);
    v160 = *(v0 + 1168);
    v163 = *(v0 + 1184);
    v39 = *(v0 + 1152);
    v40 = *(v0 + 1144);
    v41 = *(v0 + 1136);
    v42 = *(v0 + 1128);
    v43 = *(v0 + 1120);
    (*(*(v0 + 1440) + 8))(*(v0 + 1448), *(v0 + 1432));
    sub_1000032A8(v43, &qword_10077F338);
    (*(v40 + 56))(v42, 0, 1, v41);
    v44 = *(v40 + 32);
    v44(v39, v42, v41);
    static Date.now.getter();

    sub_100271224(v160, type metadata accessor for AppStoreItem);
    sub_100271224(v163, type metadata accessor for AppStorePurchaseRequest);
    sub_1000032A8(v167, &qword_10077F130);
    v44(v38 + *(v37 + 20), v39, v41);
    *(v38 + *(v37 + 24)) = 2;
    v172(v38, 0, 1, v37);
    sub_10020A668(v38, v167, &qword_10077F130);
  }

  v45 = *(v0 + 1376);
  ManagedAppDeclaration.attributes.getter();
  v46 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v47 = *(v46 - 8);
  v48 = (*(v47 + 48))(v45, 1, v46);
  v49 = *(v0 + 1376);
  if (v48 == 1)
  {
    sub_1000032A8(*(v0 + 1376), &qword_10077F358);
    v140 = 0xF000000000000000;
    v141 = 0;
  }

  else
  {
    v50 = ManagedAppDeclaration.Attributes.rawValue.getter();
    v140 = v51;
    v141 = v50;
    (*(v47 + 8))(v49, v46);
  }

  v135 = *(v0 + 1760);
  v133 = *(v0 + 1752);
  v119 = *(v0 + 1688);
  v121 = *(v0 + 1680);
  v184 = *(v0 + 1656);
  v150 = *(v0 + 1648);
  v117 = *(v0 + 1632);
  v118 = *(v0 + 1608);
  v128 = *(v0 + 1512);
  v154 = *(v0 + 1504);
  v130 = *(v0 + 1488);
  v164 = *(v0 + 1440);
  v168 = *(v0 + 1432);
  v173 = *(v0 + 1456);
  v52 = *(v0 + 1368);
  v146 = *(v0 + 1360);
  v53 = *(v0 + 1352);
  v54 = *(v0 + 1344);
  v132 = *(v0 + 1336);
  v55 = *(v0 + 1328);
  v124 = *(v0 + 1320);
  v126 = *(v0 + 1312);
  v152 = *(v0 + 1296);
  v153 = *(v0 + 1304);
  v155 = *(v0 + 1288);
  v157 = *(v0 + 1264);
  v158 = *(v0 + 1256);
  v161 = *(v0 + 1280);
  v56 = *(v0 + 1248);
  v115 = *(v0 + 1240);
  v57 = *(v0 + 1224);
  v58 = *(v0 + 1216);
  v144 = v58;
  v145 = v57;
  v139 = *(v0 + 194);
  v138 = *(v0 + 193);
  v142 = *(v0 + 1072);
  v143 = *(v0 + 1080);
  ManagedAppDeclaration.updateBehavior.getter();
  ManagedAppDeclaration.UpdateBehavior.automaticUpdatePolicy.getter();
  (*(v54 + 8))(v53, v132);
  (*(v57 + 56))(v52, 0, 1, v58);
  ManagedAppDeclaration.backupBehavior.getter();
  LOBYTE(v132) = ManagedAppDeclaration.BackupBehavior.backupAppData.getter();
  (*(v124 + 8))(v55, v126);
  sub_100005934(v128, v154, &qword_10077F130);
  v59 = type metadata accessor for ComposedIdentifier();
  v116 = *(*(v59 - 8) + 56);
  v116(v153, 1, 1, v59);
  v60 = ManagedAppDeclaration.declarationIdentifier.getter();
  v127 = v61;
  v129 = v60;
  v62 = ManagedAppDeclaration.declarationKey.getter();
  v123 = v63;
  v125 = v62;
  ManagedAppDeclaration.installBehavior.getter();
  v122 = ManagedAppDeclaration.InstallBehavior.isAccountPromptAllowed.getter();
  v119(v117, v118);
  (*(v184 + 16))(v152, v121, v150);
  v64 = *(v184 + 56);
  v64(v152, 0, 1, v150);
  LOBYTE(v121) = ManagedAppDeclaration.managementScope.getter();
  v65 = type metadata accessor for URL();
  v66 = *(*(v65 - 8) + 56);
  v66(v155, 1, 1, v65);
  (*(v164 + 16))(v173, v130, v168);
  v120 = *(v157 + 104);
  v120(v161, enum case for DDMPurchaseMethod.volumePurchaseProgram(_:), v158);
  *(v56 + 24) = xmmword_10069E8A0;
  v67 = v115[10];
  v135(v56 + v67, 1, 1, v133);
  v68 = v115[12];
  v131 = v115[11];
  v116(v56 + v68, 1, 1, v59);
  v137 = v115[16];
  v69 = v115[18];
  v134 = v115[15];
  v136 = v115[17];
  v64(v56 + v69, 1, 1, v150);
  v70 = v115[20];
  v151 = v115[19];
  v66(v56 + v70, 1, 1, v65);
  v71 = (v56 + v115[22]);
  v72 = v56 + v115[23];
  v73 = v115[24];
  static Platform.current.getter();
  v185 = (v56 + v115[26]);
  *v56 = 0;
  *(v56 + 8) = v149;
  *(v56 + 16) = 0;
  sub_1001CEE68(*(v56 + 24), *(v56 + 32));
  *(v56 + 24) = v141;
  *(v56 + 32) = v140;
  *(v56 + 41) = v132 & 1;
  *(v56 + 48) = v148;
  *(v56 + 56) = v176;
  sub_10026E634(v154, v56 + v67, &qword_10077F130);
  *(v56 + v131) = v138;
  sub_10026E634(v153, v56 + v68, &qword_10077F348);
  v74 = (v56 + v115[13]);
  *v74 = v129;
  v74[1] = v127;
  v75 = (v56 + v115[14]);
  *v75 = v125;
  v75[1] = v123;
  *(v56 + v134) = v139 & 1;
  *(v56 + v137) = v122 & 1;
  v76 = 1;
  *(v56 + v136) = 1;
  sub_10026E634(v152, v56 + v69, &qword_10077F340);
  *(v56 + v151) = v121 & 1;
  sub_10026E634(v155, v56 + v70, &unk_1007809F0);
  v77 = (v56 + v115[21]);
  *v77 = v147;
  v77[1] = v179;
  *v71 = v142;
  v71[1] = v143;
  *v72 = 0;
  *(v72 + 8) = 1;
  sub_10026E620(v142, v143);
  (*(v164 + 24))(v56 + v73, v173, v168);
  (*(v157 + 16))(v56 + v115[25], v161, v158);
  *v185 = 0;
  v185[1] = 0;
  sub_100005934(v52, v146, &qword_10077F350);
  if ((*(v145 + 48))(v146, 1, v144) != 1)
  {
    v87 = *(v0 + 1208);
    v88 = *(v0 + 1200);
    v89 = *(v0 + 1192);
    (*(*(v0 + 1224) + 32))(*(v0 + 1232), *(v0 + 1360), *(v0 + 1216));
    ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.rawValue.getter();
    v90 = (*(v88 + 88))(v87, v89);
    if (v90 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.on(_:))
    {
      v76 = 0;
LABEL_23:
      v92 = *(v0 + 1456);
      v93 = *(v0 + 1440);
      v94 = *(v0 + 1432);
      v181 = *(v0 + 1504);
      v187 = *(v0 + 1368);
      v175 = *(v0 + 1296);
      v178 = *(v0 + 1304);
      v95 = *(v0 + 1288);
      v96 = *(v0 + 1280);
      v97 = *(v0 + 1264);
      v98 = *(v0 + 1256);
      (*(*(v0 + 1224) + 8))(*(v0 + 1232), *(v0 + 1216));
      (*(v97 + 8))(v96, v98);
      v86 = *(v93 + 8);
      v86(v92, v94);
      sub_1000032A8(v95, &unk_1007809F0);
      sub_1000032A8(v175, &qword_10077F340);
      sub_1000032A8(v178, &qword_10077F348);
      sub_1000032A8(v181, &qword_10077F130);
      sub_1000032A8(v187, &qword_10077F350);
      goto LABEL_24;
    }

    if (v90 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.off(_:))
    {
      goto LABEL_23;
    }

    if (v90 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.storeSettings(_:))
    {
      v76 = 2;
      goto LABEL_23;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  v78 = *(v0 + 1456);
  v79 = *(v0 + 1440);
  v80 = *(v0 + 1432);
  v180 = *(v0 + 1504);
  v186 = *(v0 + 1368);
  v174 = *(v0 + 1296);
  v177 = *(v0 + 1304);
  v165 = *(v0 + 1288);
  v81 = *(v0 + 1280);
  v82 = *(v0 + 1272);
  v83 = *(v0 + 1264);
  v84 = *(v0 + 1256);
  sub_1000032A8(*(v0 + 1360), &qword_10077F350);
  v120(v82, enum case for DDMPurchaseMethod.manifest(_:), v84);
  v169 = static DDMPurchaseMethod.== infix(_:_:)();
  v85 = *(v83 + 8);
  v85(v82, v84);
  v85(v81, v84);
  v86 = *(v79 + 8);
  v86(v78, v80);
  sub_1000032A8(v165, &unk_1007809F0);
  sub_1000032A8(v174, &qword_10077F340);
  sub_1000032A8(v177, &qword_10077F348);
  sub_1000032A8(v180, &qword_10077F130);
  sub_1000032A8(v186, &qword_10077F350);
  if (v169)
  {
    v76 = 1;
  }

  else
  {
    v76 = 2;
  }

LABEL_24:
  *(v0 + 1808) = v86;
  v99 = *(v0 + 1688);
  v100 = *(v0 + 1624);
  v101 = *(v0 + 1608);
  v102 = *(v0 + 1248);
  v103 = *(v0 + 1032);
  *(v102 + 40) = v76;
  sub_1002711BC(v102, v103, type metadata accessor for DDMDeclaration);
  ManagedAppDeclaration.installBehavior.getter();
  v104 = ManagedAppDeclaration.InstallBehavior.version.getter();
  v106 = v105;
  v99(v100, v101);
  if (v106)
  {
    v107 = *(v0 + 1680);
    v108 = *(v0 + 1656);
    v109 = *(v0 + 1648);
    v110 = *(v0 + 1512);
    (*(v0 + 1808))(*(v0 + 1488), *(v0 + 1432));
    sub_1000032A8(v110, &qword_10077F130);
    (*(v108 + 8))(v107, v109);

    v22 = *(v0 + 8);
    goto LABEL_26;
  }

  v111 = *(v0 + 1064);
  v112 = *(v0 + 1032) + v115[23];
  *v112 = v104;
  *(v112 + 8) = 0;
  *(v0 + 1816) = *(*sub_100006D8C(v111, v111[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_ddmUpdateDatabase);
  v113 = swift_task_alloc();
  *(v0 + 1824) = v113;
  *(v113 + 16) = v149;

  v114 = swift_task_alloc();
  *(v0 + 1832) = v114;
  *v114 = v0;
  v114[1] = sub_100241B08;

  return sub_10052EF68();
}

uint64_t sub_100243738()
{
  v63 = v0;
  sub_100262C04(v0 + 200);
  *(v0 + 1840) = *(v0 + 1784);
  v1 = *(v0 + 1720);
  v2 = *(v0 + 1536);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1048);
  v5 = *(v0 + 1040);
  static Logger.ddm.getter();
  v1(v2, v5, v3);
  v6 = v4;
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  v59 = v8;
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 1744);
  v11 = *(v0 + 1736);
  v12 = *(v0 + 1568);
  v13 = *(v0 + 1552);
  v14 = *(v0 + 1536);
  v15 = *(v0 + 1520);
  if (v9)
  {
    log = v7;
    v16 = *(v0 + 1048);
    v57 = *(v0 + 1736);
    v17 = swift_slowAlloc();
    v56 = v13;
    v18 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v62 = v54;
    *v17 = 138412802;
    *(v17 + 4) = v16;
    *v18 = v16;
    *(v17 + 12) = 2082;
    v19 = v16;
    v20 = ManagedAppDeclaration.declarationIdentifier.getter();
    v55 = v12;
    v22 = v21;
    v10(v14, v15);
    v23 = sub_1002346CC(v20, v22, &v62);

    *(v17 + 14) = v23;
    *(v17 + 22) = 2114;
    swift_errorRetain();
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 24) = v24;
    v18[1] = v24;
    _os_log_impl(&_mh_execute_header, log, v59, "[%@] MediaAPI lookup for declaration %{public}s failed, trying purchase instead (%{public}@)", v17, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v54);

    v57(v55, v56);
  }

  else
  {

    v10(v14, v15);
    v11(v12, v13);
  }

  v61 = *(v0 + 195);
  v25 = *(v0 + 1656);
  v26 = *(v0 + 1184);
  v27 = *(v0 + 1176);
  v58 = *(v0 + 1072);
  v60 = *(v0 + 1080);
  v28 = *(v0 + 1064);
  v29 = *(v0 + 1056);
  v30 = *(v0 + 1048);
  v31 = sub_100508448(*(v0 + 1704), *(v0 + 1712), v61);
  v32 = v27[8];
  *(v0 + 196) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:);
  (*(v25 + 104))(v26 + v32);
  v33 = (*sub_100006D8C(v28, v28[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v34 = *(v33 + 95);
  v35 = v33[5];
  v36 = v33[3];
  *(v0 + 648) = v33[4];
  *(v0 + 664) = v35;
  *(v0 + 679) = v34;
  *(v0 + 632) = v36;
  v37 = *v33;
  v38 = v33[2];
  *(v0 + 600) = v33[1];
  *(v0 + 616) = v38;
  *(v0 + 584) = v37;
  sub_10020A980(v29, v26 + v27[10]);
  *v26 = v31;
  *(v26 + 8) = 0u;
  *(v26 + 24) = 0u;
  *(v26 + 40) = 0;
  *(v26 + 48) = v58;
  *(v26 + 56) = v60;
  v39 = (v26 + v27[9]);
  v40 = *(v0 + 632);
  v41 = *(v0 + 648);
  v42 = *(v0 + 664);
  *(v39 + 95) = *(v0 + 679);
  v39[4] = v41;
  v39[5] = v42;
  v39[3] = v40;
  v44 = *(v0 + 600);
  v43 = *(v0 + 616);
  *v39 = *(v0 + 584);
  v39[1] = v44;
  v39[2] = v43;
  *(v26 + v27[11]) = 0;
  *(v26 + v27[12]) = 0;
  v45 = v26 + v27[13];
  *v45 = 0;
  *(v45 + 8) = 1;
  *(v26 + v27[14]) = v30;
  *(v0 + 1848) = *(*sub_100006D8C(v28, v28[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);
  v46 = v30;
  sub_10026E620(v58, v60);
  sub_10020A7AC(v0 + 584, v0 + 696);

  v47 = swift_task_alloc();
  *(v0 + 1856) = v47;
  *v47 = v0;
  v47[1] = sub_100241FAC;
  v48 = *(v0 + 1712);
  v49 = *(v0 + 1704);
  v50 = *(v0 + 1184);
  v51 = *(v0 + 1168);

  return sub_1005002C0(v51, v49, v48, v61, v50);
}

uint64_t sub_100243BE8()
{

  v1 = v0[210];
  v2 = v0[207];
  v3 = v0[206];
  v4 = v0[189];
  v5 = v0[186];
  v6 = v0[180];
  v7 = v0[179];
  sub_100271224(v0[148], type metadata accessor for AppStorePurchaseRequest);
  (*(v6 + 8))(v5, v7);
  sub_1000032A8(v4, &qword_10077F130);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_100243F38(void **a1)
{
  v1 = *a1;
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  sub_1003A86E4(0, v2, v3, v1);
}

uint64_t sub_100243FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 304) = a7;
  *(v8 + 312) = a8;
  *(v8 + 239) = a6;
  *(v8 + 127) = a5;
  *(v8 + 288) = a3;
  *(v8 + 296) = a4;
  *(v8 + 272) = a1;
  *(v8 + 280) = a2;
  updated = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum();
  *(v8 + 320) = updated;
  *(v8 + 328) = *(updated - 8);
  *(v8 + 336) = swift_task_alloc();
  v10 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy();
  *(v8 + 344) = v10;
  *(v8 + 352) = *(v10 - 8);
  *(v8 + 360) = swift_task_alloc();
  *(v8 + 368) = type metadata accessor for DDMDeclaration(0);
  *(v8 + 376) = swift_task_alloc();
  v11 = type metadata accessor for DDMPurchaseMethod();
  *(v8 + 384) = v11;
  *(v8 + 392) = *(v11 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  v12 = type metadata accessor for Platform();
  *(v8 + 416) = v12;
  *(v8 + 424) = *(v12 - 8);
  *(v8 + 432) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 440) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  *(v8 + 448) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F348);
  *(v8 + 456) = swift_task_alloc();
  v13 = type metadata accessor for ManagedAppDeclaration.BackupBehavior();
  *(v8 + 464) = v13;
  *(v8 + 472) = *(v13 - 8);
  *(v8 + 480) = swift_task_alloc();
  v14 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior();
  *(v8 + 488) = v14;
  *(v8 + 496) = *(v14 - 8);
  *(v8 + 504) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F350);
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F358);
  *(v8 + 528) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F148);
  *(v8 + 536) = swift_task_alloc();
  v15 = type metadata accessor for ManagedApp();
  *(v8 + 544) = v15;
  *(v8 + 552) = *(v15 - 8);
  *(v8 + 560) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F130);
  *(v8 + 568) = swift_task_alloc();
  *(v8 + 576) = swift_task_alloc();
  *(v8 + 584) = swift_task_alloc();
  *(v8 + 592) = *(type metadata accessor for EnterpriseApp() - 8);
  *(v8 + 600) = swift_task_alloc();
  *(v8 + 608) = swift_task_alloc();
  v16 = type metadata accessor for ManagedAppDeclaration();
  *(v8 + 616) = v16;
  *(v8 + 624) = *(v16 - 8);
  *(v8 + 632) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v8 + 640) = v17;
  *(v8 + 648) = *(v17 - 8);
  *(v8 + 656) = swift_task_alloc();
  v18 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum();
  *(v8 + 664) = v18;
  *(v8 + 672) = *(v18 - 8);
  *(v8 + 680) = swift_task_alloc();
  v19 = type metadata accessor for ManagedAppDeclaration.InstallBehavior();
  *(v8 + 688) = v19;
  *(v8 + 696) = *(v19 - 8);
  *(v8 + 704) = swift_task_alloc();
  *(v8 + 712) = swift_task_alloc();
  v20 = type metadata accessor for URL();
  *(v8 + 720) = v20;
  *(v8 + 728) = *(v20 - 8);
  *(v8 + 736) = swift_task_alloc();
  *(v8 + 744) = swift_task_alloc();

  return _swift_task_switch(sub_1002446D0, 0, 0);
}

uint64_t sub_1002446D0()
{
  v52 = v0;
  v1 = v0[89];
  v2 = v0[87];
  v3 = v0[86];
  v4 = v0[85];
  v5 = v0[84];
  v6 = v0[83];
  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.purchaseMethod.getter();
  v7 = *(v2 + 8);
  v0[94] = v7;
  v0[95] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if ((*(v5 + 88))(v4, v6) == enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.manifest(_:))
  {
    v8 = v0[93];
    v9 = v0[91];
    v10 = v0[90];
    v11 = v0[85];
    v12 = v0[79];
    v13 = v0[78];
    v14 = v0[77];
    v15 = v0[35];
    v49 = v0[36];
    (*(v0[84] + 96))(v11, v0[83]);
    (*(v9 + 32))(v8, v11, v10);
    static Logger.ddm.getter();
    (*(v13 + 16))(v12, v15, v14);
    v16 = v49;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    v19 = os_log_type_enabled(v17, v18);
    v20 = v0[82];
    v21 = v0[81];
    v22 = v0[80];
    v23 = v0[79];
    v24 = v0[78];
    v25 = v0[77];
    if (v19)
    {
      v50 = v0[82];
      v26 = v0[36];
      v46 = v18;
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v51 = v47;
      *v27 = 138412546;
      *(v27 + 4) = v26;
      *v28 = v26;
      *(v27 + 12) = 2082;
      v29 = v26;
      v30 = ManagedAppDeclaration.declarationIdentifier.getter();
      v48 = v22;
      v32 = v31;
      (*(v24 + 8))(v23, v25);
      v33 = sub_1002346CC(v30, v32, &v51);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v17, v46, "[%@] Requesting manifest for declaration %{public}s", v27, 0x16u);
      sub_1000032A8(v28, &qword_10077F920);

      sub_10000710C(v47);

      (*(v21 + 8))(v50, v48);
    }

    else
    {

      (*(v24 + 8))(v23, v25);
      (*(v21 + 8))(v20, v22);
    }

    v34 = v0[93];
    v35 = v0[92];
    v36 = v0[91];
    v37 = v0[90];
    v38 = [objc_opt_self() ephemeralSessionConfiguration];
    [v38 setHTTPShouldSetCookies:0];
    [v38 setHTTPCookieAcceptPolicy:1];
    [v38 setRequestCachePolicy:1];
    sub_10043D15C(1);
    v39 = [objc_opt_self() sessionWithConfiguration:v38];

    type metadata accessor for PlainHTTP();
    inited = swift_initStackObject();
    v0[96] = inited;
    *(inited + 24) = 1;
    *(inited + 16) = v39;
    v41 = *(v36 + 16);
    v0[97] = v41;
    v0[98] = (v36 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v41(v35, v34, v37);

    v42 = sub_100625FA0();
    v43 = swift_task_alloc();
    v0[99] = v43;
    *v43 = v0;
    v43[1] = sub_100244B7C;
    v44 = v0[92];

    return sub_10035A314(v44, inited, v42);
  }

  else
  {
    result = (*(v0[84] + 8))(v0[85], v0[83]);
    __break(1u);
  }

  return result;
}

uint64_t sub_100244B7C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 800) = a1;
  *(v3 + 808) = v1;

  if (v1)
  {
    v4 = sub_1002450FC;
  }

  else
  {
    v4 = sub_100244C94;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100244C94()
{
  v1 = *(v0 + 800);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 608);
    v3 = *(v0 + 600);
    v4 = *(v0 + 584);
    v5 = *(v0 + 296);
    v6 = *(*(v0 + 592) + 80);
    sub_100271284(v1 + ((v6 + 32) & ~v6), v3, type metadata accessor for EnterpriseApp);

    sub_1002711BC(v3, v2, type metadata accessor for EnterpriseApp);
    v7 = type metadata accessor for DDMCachedMetadata(0);
    *(v0 + 816) = v7;
    v8 = *(v7 - 8);
    v9 = *(v8 + 56);
    *(v0 + 824) = v9;
    *(v0 + 832) = (v8 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v9(v4, 1, 1, v7);
    v10 = ManagedAppDeclaration.declarationIdentifier.getter();
    v12 = v11;
    *(v0 + 840) = v11;
    v13 = (*sub_100006D8C(v5, v5[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v15 = v13[4];
    v14 = v13[5];
    v16 = v13[3];
    *(v0 + 111) = *(v13 + 95);
    *(v0 + 80) = v15;
    *(v0 + 96) = v14;
    *(v0 + 64) = v16;
    v18 = v13[1];
    v17 = v13[2];
    *(v0 + 16) = *v13;
    *(v0 + 32) = v18;
    *(v0 + 48) = v17;
    sub_10020A7AC(v0 + 16, v0 + 128);
    v19 = swift_task_alloc();
    *(v0 + 848) = v19;
    *v19 = v0;
    v19[1] = sub_10024532C;
    v20 = *(v0 + 768);
    v21 = *(v0 + 608);
    v22 = *(v0 + 536);
    v23 = *(v0 + 288);

    return sub_100341050(v22, v21, v10, v12, v20, v0 + 16, v23);
  }

  else
  {
    v25 = *(v0 + 768);
    v26 = *(v0 + 744);
    v27 = *(v0 + 728);
    v28 = *(v0 + 720);

    type metadata accessor for InternalError();
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    swift_setDeallocating();
    v29 = *(v25 + 16);
    [v29 invalidateAndCancel];

    (*(v27 + 8))(v26, v28);

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_1002450FC()
{
  v1 = v0[96];
  v2 = v0[93];
  v3 = v0[91];
  v4 = v0[90];
  swift_setDeallocating();
  v5 = *(v1 + 16);
  [v5 invalidateAndCancel];

  (*(v3 + 8))(v2, v4);

  v6 = v0[1];

  return v6();
}

uint64_t sub_10024532C()
{
  v2 = *v1;

  if (v0)
  {

    sub_10020A92C(v2 + 16);

    v3 = sub_1002461C4;
  }

  else
  {
    sub_10020A92C(v2 + 16);

    v3 = sub_100245480;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100245480()
{
  v137 = *(v0 + 824);
  v1 = *(v0 + 816);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 560);
  v5 = *(v0 + 552);
  v6 = *(v0 + 544);
  v7 = *(v0 + 536);
  (*(v5 + 56))(v7, 0, 1, v6);
  v8 = *(v5 + 32);
  v8(v4, v7, v6);
  static Date.now.getter();
  sub_1000032A8(v2, &qword_10077F130);
  v8(v3 + *(v1 + 20), v4, v6);
  *(v3 + *(v1 + 24)) = 0;
  v137(v3, 0, 1, v1);
  sub_10020A668(v3, v2, &qword_10077F130);
  v9 = *(v0 + 528);
  ManagedAppDeclaration.attributes.getter();
  v10 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v9, 1, v10);
  v13 = *(v0 + 528);
  if (v12 == 1)
  {
    sub_1000032A8(*(v0 + 528), &qword_10077F358);
    v100 = 0xF000000000000000;
    v101 = 0;
  }

  else
  {
    v14 = ManagedAppDeclaration.Attributes.rawValue.getter();
    v100 = v15;
    v101 = v14;
    (*(v11 + 8))(v13, v10);
  }

  v95 = *(v0 + 824);
  v93 = *(v0 + 816);
  v83 = *(v0 + 776);
  v74 = *(v0 + 752);
  v79 = *(v0 + 744);
  v141 = *(v0 + 728);
  v116 = *(v0 + 720);
  v71 = *(v0 + 704);
  v73 = *(v0 + 688);
  v110 = *(v0 + 608);
  v87 = *(v0 + 584);
  v119 = *(v0 + 568);
  v16 = *(v0 + 520);
  v17 = *(v0 + 504);
  v109 = *(v0 + 512);
  v18 = *(v0 + 496);
  v19 = *(v0 + 480);
  v85 = *(v0 + 472);
  v90 = *(v0 + 464);
  v92 = *(v0 + 488);
  v122 = *(v0 + 456);
  v125 = *(v0 + 448);
  v113 = *(v0 + 440);
  v107 = *(v0 + 424);
  v108 = *(v0 + 416);
  v138 = *(v0 + 408);
  v128 = *(v0 + 432);
  v131 = *(v0 + 392);
  v134 = *(v0 + 384);
  v21 = *(v0 + 368);
  v20 = *(v0 + 376);
  v22 = *(v0 + 344);
  v23 = *(v0 + 352);
  v105 = v22;
  v106 = v23;
  v102 = *(v0 + 304);
  v103 = *(v0 + 312);
  v98 = *(v0 + 127);
  v99 = *(v0 + 239);
  ManagedAppDeclaration.updateBehavior.getter();
  v104 = v16;
  ManagedAppDeclaration.UpdateBehavior.automaticUpdatePolicy.getter();
  (*(v18 + 8))(v17, v92);
  (*(v23 + 56))(v16, 0, 1, v22);
  ManagedAppDeclaration.backupBehavior.getter();
  LOBYTE(v92) = ManagedAppDeclaration.BackupBehavior.backupAppData.getter();
  (*(v85 + 8))(v19, v90);
  v91 = *v110;
  v77 = v110[1];
  sub_100005934(v87, v119, &qword_10077F130);
  v70 = type metadata accessor for ComposedIdentifier();
  v69 = *(*(v70 - 8) + 56);
  v69(v122, 1, 1, v70);

  v24 = ManagedAppDeclaration.declarationIdentifier.getter();
  v86 = v25;
  v88 = v24;
  v26 = ManagedAppDeclaration.declarationKey.getter();
  v81 = v27;
  v82 = v26;
  ManagedAppDeclaration.installBehavior.getter();
  v78 = ManagedAppDeclaration.InstallBehavior.isAccountPromptAllowed.getter();
  v74(v71, v73);
  v28 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v75 = *(*(v28 - 8) + 56);
  v75(v125, 1, 1, v28);
  v76 = ManagedAppDeclaration.managementScope.getter();
  v83(v113, v79, v116);
  v29 = *(v141 + 56);
  v29(v113, 0, 1, v116);
  v89 = v110[5];
  v111 = v110[6];

  ManagedAppDeclaration.platform.getter();
  v72 = enum case for DDMPurchaseMethod.manifest(_:);
  v68 = *(v131 + 104);
  v68(v138);
  *(v20 + 24) = xmmword_10069E8A0;
  v30 = v21[10];
  v95(v20 + v30, 1, 1, v93);
  v31 = v21[12];
  v80 = v21[11];
  v69(v20 + v31, 1, 1, v70);
  v84 = v21[15];
  v32 = v21[18];
  v94 = v21[17];
  v96 = v21[16];
  v75(v20 + v32, 1, 1, v28);
  v33 = v21[20];
  v97 = v21[19];
  v29(v20 + v33, 1, 1, v116);
  v34 = (v20 + v21[22]);
  v35 = v20 + v21[23];
  v36 = v21[24];
  static Platform.current.getter();
  v142 = (v20 + v21[26]);
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 1;
  sub_1001CEE68(*(v20 + 24), *(v20 + 32));
  *(v20 + 24) = v101;
  *(v20 + 32) = v100;
  *(v20 + 41) = v92 & 1;
  *(v20 + 48) = v91;
  *(v20 + 56) = v77;
  sub_10026E634(v119, v20 + v30, &qword_10077F130);
  *(v20 + v80) = v98;
  sub_10026E634(v122, v20 + v31, &qword_10077F348);
  v37 = (v20 + v21[13]);
  *v37 = v88;
  v37[1] = v86;
  v38 = (v20 + v21[14]);
  *v38 = v82;
  v38[1] = v81;
  *(v20 + v84) = v99 & 1;
  *(v20 + v96) = v78 & 1;
  *(v20 + v94) = 1;
  sub_10026E634(v125, v20 + v32, &qword_10077F340);
  *(v20 + v97) = v76 & 1;
  sub_10026E634(v113, v20 + v33, &unk_1007809F0);
  v39 = (v20 + v21[21]);
  *v39 = v89;
  v39[1] = v111;
  *v34 = v102;
  v34[1] = v103;
  *v35 = 0;
  *(v35 + 8) = 1;
  sub_10026E620(v102, v103);
  (*(v107 + 24))(v20 + v36, v128, v108);
  (*(v131 + 16))(v20 + v21[25], v138, v134);
  *v142 = 0;
  v142[1] = 0;
  sub_100005934(v104, v109, &qword_10077F350);
  if ((*(v106 + 48))(v109, 1, v105) == 1)
  {
    v40 = *(v0 + 728);
    v139 = *(v0 + 720);
    v143 = *(v0 + 744);
    v132 = *(v0 + 584);
    v135 = *(v0 + 608);
    v126 = *(v0 + 568);
    v129 = *(v0 + 520);
    v117 = *(v0 + 448);
    v120 = *(v0 + 456);
    v41 = *(v0 + 432);
    v114 = *(v0 + 440);
    v43 = *(v0 + 416);
    v42 = *(v0 + 424);
    v45 = *(v0 + 400);
    v44 = *(v0 + 408);
    v46 = *(v0 + 384);
    v47 = *(v0 + 392);
    sub_1000032A8(*(v0 + 512), &qword_10077F350);
    (v68)(v45, v72, v46);
    v123 = static DDMPurchaseMethod.== infix(_:_:)();

    v48 = *(v47 + 8);
    v48(v45, v46);
    v48(v44, v46);
    (*(v42 + 8))(v41, v43);
    sub_1000032A8(v114, &unk_1007809F0);
    sub_1000032A8(v117, &qword_10077F340);
    sub_1000032A8(v120, &qword_10077F348);
    sub_1000032A8(v126, &qword_10077F130);
    sub_1000032A8(v129, &qword_10077F350);
    sub_1000032A8(v132, &qword_10077F130);
    sub_100271224(v135, type metadata accessor for EnterpriseApp);
    (*(v40 + 8))(v143, v139);
    if (v123)
    {
      v49 = 1;
    }

    else
    {
      v49 = 2;
    }
  }

  else
  {
    v50 = *(v0 + 336);
    v51 = *(v0 + 320);
    v52 = *(v0 + 328);
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 512), *(v0 + 344));
    ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.rawValue.getter();
    v53 = (*(v52 + 88))(v50, v51);
    if (v53 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.on(_:))
    {
      v144 = 0;
    }

    else
    {
      if (v53 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.off(_:))
      {
        v54 = 1;
      }

      else
      {
        if (v53 != enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.storeSettings(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v54 = 2;
      }

      v144 = v54;
    }

    v136 = *(v0 + 720);
    v140 = *(v0 + 744);
    v130 = *(v0 + 608);
    v133 = *(v0 + 728);
    v124 = *(v0 + 520);
    v127 = *(v0 + 584);
    v118 = *(v0 + 456);
    v121 = *(v0 + 568);
    v55 = *(v0 + 432);
    v112 = *(v0 + 440);
    v115 = *(v0 + 448);
    v56 = *(v0 + 416);
    v57 = *(v0 + 424);
    v58 = *(v0 + 408);
    v59 = *(v0 + 384);
    v60 = *(v0 + 392);
    v62 = *(v0 + 352);
    v61 = *(v0 + 360);
    v63 = *(v0 + 344);

    (*(v62 + 8))(v61, v63);
    (*(v60 + 8))(v58, v59);
    (*(v57 + 8))(v55, v56);
    sub_1000032A8(v112, &unk_1007809F0);
    sub_1000032A8(v115, &qword_10077F340);
    sub_1000032A8(v118, &qword_10077F348);
    sub_1000032A8(v121, &qword_10077F130);
    sub_1000032A8(v124, &qword_10077F350);
    sub_1000032A8(v127, &qword_10077F130);
    sub_100271224(v130, type metadata accessor for EnterpriseApp);
    (*(v133 + 8))(v140, v136);
    v49 = v144;
  }

  v64 = *(v0 + 376);
  v65 = *(v0 + 272);
  *(v64 + 40) = v49;
  sub_1002711BC(v64, v65, type metadata accessor for DDMDeclaration);

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1002461C4()
{
  v1 = *(v0 + 536);
  (*(*(v0 + 552) + 56))(v1, 1, 1, *(v0 + 544));
  sub_1000032A8(v1, &qword_10077F148);
  v2 = *(v0 + 528);
  ManagedAppDeclaration.attributes.getter();
  v3 = type metadata accessor for ManagedAppDeclaration.Attributes();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 48))(v2, 1, v3);
  v6 = *(v0 + 528);
  if (v5 == 1)
  {
    sub_1000032A8(*(v0 + 528), &qword_10077F358);
    v93 = 0xF000000000000000;
    v94 = 0;
  }

  else
  {
    v7 = ManagedAppDeclaration.Attributes.rawValue.getter();
    v93 = v8;
    v94 = v7;
    (*(v4 + 8))(v6, v3);
  }

  v88 = *(v0 + 824);
  v86 = *(v0 + 816);
  v76 = *(v0 + 776);
  v67 = *(v0 + 752);
  v72 = *(v0 + 744);
  v133 = *(v0 + 728);
  v109 = *(v0 + 720);
  v64 = *(v0 + 704);
  v66 = *(v0 + 688);
  v103 = *(v0 + 608);
  v80 = *(v0 + 584);
  v112 = *(v0 + 568);
  v9 = *(v0 + 520);
  v10 = *(v0 + 504);
  v102 = *(v0 + 512);
  v11 = *(v0 + 496);
  v12 = *(v0 + 480);
  v78 = *(v0 + 472);
  v83 = *(v0 + 464);
  v85 = *(v0 + 488);
  v115 = *(v0 + 456);
  v118 = *(v0 + 448);
  v106 = *(v0 + 440);
  v100 = *(v0 + 424);
  v101 = *(v0 + 416);
  v130 = *(v0 + 408);
  v121 = *(v0 + 432);
  v124 = *(v0 + 392);
  v127 = *(v0 + 384);
  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  v15 = *(v0 + 344);
  v16 = *(v0 + 352);
  v98 = v15;
  v99 = v16;
  v95 = *(v0 + 304);
  v96 = *(v0 + 312);
  v91 = *(v0 + 127);
  v92 = *(v0 + 239);
  ManagedAppDeclaration.updateBehavior.getter();
  v97 = v9;
  ManagedAppDeclaration.UpdateBehavior.automaticUpdatePolicy.getter();
  (*(v11 + 8))(v10, v85);
  (*(v16 + 56))(v9, 0, 1, v15);
  ManagedAppDeclaration.backupBehavior.getter();
  LOBYTE(v85) = ManagedAppDeclaration.BackupBehavior.backupAppData.getter();
  (*(v78 + 8))(v12, v83);
  v84 = *v103;
  v70 = v103[1];
  sub_100005934(v80, v112, &qword_10077F130);
  v63 = type metadata accessor for ComposedIdentifier();
  v62 = *(*(v63 - 8) + 56);
  v62(v115, 1, 1, v63);

  v17 = ManagedAppDeclaration.declarationIdentifier.getter();
  v79 = v18;
  v81 = v17;
  v19 = ManagedAppDeclaration.declarationKey.getter();
  v74 = v20;
  v75 = v19;
  ManagedAppDeclaration.installBehavior.getter();
  v71 = ManagedAppDeclaration.InstallBehavior.isAccountPromptAllowed.getter();
  v67(v64, v66);
  v21 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v68 = *(*(v21 - 8) + 56);
  v68(v118, 1, 1, v21);
  v69 = ManagedAppDeclaration.managementScope.getter();
  v76(v106, v72, v109);
  v22 = *(v133 + 56);
  v22(v106, 0, 1, v109);
  v82 = v103[5];
  v104 = v103[6];

  ManagedAppDeclaration.platform.getter();
  v65 = enum case for DDMPurchaseMethod.manifest(_:);
  v61 = *(v124 + 104);
  v61(v130);
  *(v13 + 24) = xmmword_10069E8A0;
  v23 = v14[10];
  v88(v13 + v23, 1, 1, v86);
  v24 = v14[12];
  v73 = v14[11];
  v62(v13 + v24, 1, 1, v63);
  v77 = v14[15];
  v25 = v14[18];
  v87 = v14[17];
  v89 = v14[16];
  v68(v13 + v25, 1, 1, v21);
  v26 = v14[20];
  v90 = v14[19];
  v22(v13 + v26, 1, 1, v109);
  v27 = (v13 + v14[22]);
  v28 = v13 + v14[23];
  v29 = v14[24];
  static Platform.current.getter();
  v134 = (v13 + v14[26]);
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  sub_1001CEE68(*(v13 + 24), *(v13 + 32));
  *(v13 + 24) = v94;
  *(v13 + 32) = v93;
  *(v13 + 41) = v85 & 1;
  *(v13 + 48) = v84;
  *(v13 + 56) = v70;
  sub_10026E634(v112, v13 + v23, &qword_10077F130);
  *(v13 + v73) = v91;
  sub_10026E634(v115, v13 + v24, &qword_10077F348);
  v30 = (v13 + v14[13]);
  *v30 = v81;
  v30[1] = v79;
  v31 = (v13 + v14[14]);
  *v31 = v75;
  v31[1] = v74;
  *(v13 + v77) = v92 & 1;
  *(v13 + v89) = v71 & 1;
  *(v13 + v87) = 1;
  sub_10026E634(v118, v13 + v25, &qword_10077F340);
  *(v13 + v90) = v69 & 1;
  sub_10026E634(v106, v13 + v26, &unk_1007809F0);
  v32 = (v13 + v14[21]);
  *v32 = v82;
  v32[1] = v104;
  *v27 = v95;
  v27[1] = v96;
  *v28 = 0;
  *(v28 + 8) = 1;
  sub_10026E620(v95, v96);
  (*(v100 + 24))(v13 + v29, v121, v101);
  (*(v124 + 16))(v13 + v14[25], v130, v127);
  *v134 = 0;
  v134[1] = 0;
  sub_100005934(v97, v102, &qword_10077F350);
  if ((*(v99 + 48))(v102, 1, v98) == 1)
  {
    v33 = *(v0 + 728);
    v131 = *(v0 + 720);
    v135 = *(v0 + 744);
    v125 = *(v0 + 584);
    v128 = *(v0 + 608);
    v119 = *(v0 + 568);
    v122 = *(v0 + 520);
    v110 = *(v0 + 448);
    v113 = *(v0 + 456);
    v34 = *(v0 + 432);
    v107 = *(v0 + 440);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v38 = *(v0 + 400);
    v37 = *(v0 + 408);
    v39 = *(v0 + 384);
    v40 = *(v0 + 392);
    sub_1000032A8(*(v0 + 512), &qword_10077F350);
    (v61)(v38, v65, v39);
    v116 = static DDMPurchaseMethod.== infix(_:_:)();

    v41 = *(v40 + 8);
    v41(v38, v39);
    v41(v37, v39);
    (*(v35 + 8))(v34, v36);
    sub_1000032A8(v107, &unk_1007809F0);
    sub_1000032A8(v110, &qword_10077F340);
    sub_1000032A8(v113, &qword_10077F348);
    sub_1000032A8(v119, &qword_10077F130);
    sub_1000032A8(v122, &qword_10077F350);
    sub_1000032A8(v125, &qword_10077F130);
    sub_100271224(v128, type metadata accessor for EnterpriseApp);
    (*(v33 + 8))(v135, v131);
    if (v116)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2;
    }
  }

  else
  {
    v43 = *(v0 + 336);
    v44 = *(v0 + 320);
    v45 = *(v0 + 328);
    (*(*(v0 + 352) + 32))(*(v0 + 360), *(v0 + 512), *(v0 + 344));
    ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.rawValue.getter();
    v46 = (*(v45 + 88))(v43, v44);
    if (v46 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.on(_:))
    {
      v136 = 0;
    }

    else
    {
      if (v46 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.off(_:))
      {
        v47 = 1;
      }

      else
      {
        if (v46 != enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.storeSettings(_:))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }

        v47 = 2;
      }

      v136 = v47;
    }

    v129 = *(v0 + 720);
    v132 = *(v0 + 744);
    v123 = *(v0 + 608);
    v126 = *(v0 + 728);
    v117 = *(v0 + 520);
    v120 = *(v0 + 584);
    v111 = *(v0 + 456);
    v114 = *(v0 + 568);
    v48 = *(v0 + 432);
    v105 = *(v0 + 440);
    v108 = *(v0 + 448);
    v49 = *(v0 + 416);
    v50 = *(v0 + 424);
    v51 = *(v0 + 408);
    v52 = *(v0 + 384);
    v53 = *(v0 + 392);
    v55 = *(v0 + 352);
    v54 = *(v0 + 360);
    v56 = *(v0 + 344);

    (*(v55 + 8))(v54, v56);
    (*(v53 + 8))(v51, v52);
    (*(v50 + 8))(v48, v49);
    sub_1000032A8(v105, &unk_1007809F0);
    sub_1000032A8(v108, &qword_10077F340);
    sub_1000032A8(v111, &qword_10077F348);
    sub_1000032A8(v114, &qword_10077F130);
    sub_1000032A8(v117, &qword_10077F350);
    sub_1000032A8(v120, &qword_10077F130);
    sub_100271224(v123, type metadata accessor for EnterpriseApp);
    (*(v126 + 8))(v132, v129);
    v42 = v136;
  }

  v57 = *(v0 + 376);
  v58 = *(v0 + 272);
  *(v57 + 40) = v42;
  sub_1002711BC(v57, v58, type metadata accessor for DDMDeclaration);

  v59 = *(v0 + 8);

  return v59();
}

uint64_t sub_100246E68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a6;
  *(v7 + 80) = a7;
  *(v7 + 401) = a5;
  *(v7 + 400) = a4;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  updated = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum();
  *(v7 + 88) = updated;
  *(v7 + 96) = *(updated - 8);
  *(v7 + 104) = swift_task_alloc();
  v9 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy();
  *(v7 + 112) = v9;
  *(v7 + 120) = *(v9 - 8);
  *(v7 + 128) = swift_task_alloc();
  v10 = type metadata accessor for DDMPurchaseMethod();
  *(v7 + 136) = v10;
  *(v7 + 144) = *(v10 - 8);
  *(v7 + 152) = swift_task_alloc();
  *(v7 + 160) = swift_task_alloc();
  v11 = type metadata accessor for Platform();
  *(v7 + 168) = v11;
  *(v7 + 176) = *(v11 - 8);
  *(v7 + 184) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v7 + 192) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  *(v7 + 200) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F348);
  *(v7 + 208) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F130);
  *(v7 + 216) = swift_task_alloc();
  v12 = type metadata accessor for ManagedAppDeclaration.BackupBehavior();
  *(v7 + 224) = v12;
  *(v7 + 232) = *(v12 - 8);
  *(v7 + 240) = swift_task_alloc();
  v13 = type metadata accessor for ManagedAppDeclaration.UpdateBehavior();
  *(v7 + 248) = v13;
  *(v7 + 256) = *(v13 - 8);
  *(v7 + 264) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F350);
  *(v7 + 272) = swift_task_alloc();
  *(v7 + 280) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F358);
  *(v7 + 288) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v7 + 296) = v14;
  *(v7 + 304) = *(v14 - 8);
  *(v7 + 312) = swift_task_alloc();
  v15 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum();
  *(v7 + 320) = v15;
  *(v7 + 328) = *(v15 - 8);
  *(v7 + 336) = swift_task_alloc();
  v16 = type metadata accessor for ManagedAppDeclaration.InstallBehavior();
  *(v7 + 344) = v16;
  *(v7 + 352) = *(v16 - 8);
  *(v7 + 360) = swift_task_alloc();
  *(v7 + 368) = swift_task_alloc();
  v17 = type metadata accessor for ComposedIdentifier();
  *(v7 + 376) = v17;
  *(v7 + 384) = *(v17 - 8);
  *(v7 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_1002473E8, 0, 0);
}

uint64_t sub_1002473E8()
{
  v155 = v0;
  v1 = *(v0 + 368);
  v2 = *(v0 + 344);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);
  ManagedAppDeclaration.installBehavior.getter();
  ManagedAppDeclaration.InstallBehavior.purchaseMethod.getter();
  v7 = *(v3 + 8);
  v7(v1, v2);
  if ((*(v5 + 88))(v4, v6) == enum case for ManagedAppDeclaration.InstallBehavior.PurchaseMethodEnum.other(_:))
  {
    v120 = v7;
    v9 = *(v0 + 384);
    v8 = *(v0 + 392);
    v10 = *(v0 + 376);
    v11 = *(v0 + 336);
    (*(*(v0 + 328) + 96))(v11, *(v0 + 320));
    (*(v9 + 32))(v8, v11, v10);
    v12 = ComposedIdentifier.bundleID.getter();
    v14 = v13;
    *(v0 + 16) = v12;
    *(v0 + 24) = v13;
    *(v0 + 32) = 46;
    *(v0 + 40) = 0xE100000000000000;
    sub_100005E50();
    v15 = (StringProtocol.components<A>(separatedBy:)() + 16);
    v125 = v12;
    if (*v15)
    {
      v16 = &v15[2 * *v15];
      v17 = v16[1];
      v126 = *v16;
    }

    else
    {

      v126 = v12;
      v17 = v14;
    }

    v19 = *(v0 + 64);
    static Logger.ddm.getter();

    v20 = v19;

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();

    v23 = os_log_type_enabled(v21, v22);
    v25 = *(v0 + 304);
    v24 = *(v0 + 312);
    v26 = *(v0 + 296);
    v123 = v14;
    v124 = v17;
    if (v23)
    {
      v27 = *(v0 + 64);
      v149 = *(v0 + 312);
      v28 = v14;
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v154[0] = swift_slowAlloc();
      *v29 = 138412802;
      *(v29 + 4) = v27;
      *v30 = v27;
      *(v29 + 12) = 2082;
      v31 = v27;
      *(v29 + 14) = sub_1002346CC(v126, v17, v154);
      *(v29 + 22) = 2082;
      *(v29 + 24) = sub_1002346CC(v125, v28, v154);
      _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Found pre-installed app for '%{public}s' (%{public}s)", v29, 0x20u);
      sub_1000032A8(v30, &qword_10077F920);

      swift_arrayDestroy();

      (*(v25 + 8))(v149, v26);
    }

    else
    {

      (*(v25 + 8))(v24, v26);
    }

    v32 = *(v0 + 288);
    ManagedAppDeclaration.attributes.getter();
    v33 = type metadata accessor for ManagedAppDeclaration.Attributes();
    v34 = *(v33 - 8);
    v35 = (*(v34 + 48))(v32, 1, v33);
    v36 = *(v0 + 288);
    if (v35 == 1)
    {
      sub_1000032A8(*(v0 + 288), &qword_10077F358);
      v110 = 0xF000000000000000;
      v111 = 0;
    }

    else
    {
      v37 = ManagedAppDeclaration.Attributes.rawValue.getter();
      v110 = v38;
      v111 = v37;
      (*(v34 + 8))(v36, v33);
    }

    v105 = *(v0 + 392);
    v150 = *(v0 + 384);
    v127 = *(v0 + 376);
    v96 = *(v0 + 360);
    v98 = *(v0 + 344);
    v39 = *(v0 + 280);
    v119 = *(v0 + 272);
    v40 = *(v0 + 256);
    v41 = *(v0 + 264);
    v42 = *(v0 + 240);
    v107 = *(v0 + 248);
    v43 = *(v0 + 232);
    v103 = *(v0 + 224);
    v129 = *(v0 + 208);
    v130 = *(v0 + 216);
    v132 = *(v0 + 200);
    v134 = *(v0 + 192);
    v137 = *(v0 + 184);
    v117 = *(v0 + 176);
    v118 = *(v0 + 168);
    v140 = *(v0 + 144);
    v143 = *(v0 + 136);
    v146 = *(v0 + 160);
    v44 = *(v0 + 112);
    v45 = *(v0 + 120);
    v115 = v44;
    v116 = v45;
    v112 = *(v0 + 72);
    v113 = *(v0 + 80);
    v108 = *(v0 + 400);
    v109 = *(v0 + 401);
    v46 = *(v0 + 48);
    ManagedAppDeclaration.updateBehavior.getter();
    v114 = v39;
    ManagedAppDeclaration.UpdateBehavior.automaticUpdatePolicy.getter();
    (*(v40 + 8))(v41, v107);
    (*(v45 + 56))(v39, 0, 1, v44);
    ManagedAppDeclaration.backupBehavior.getter();
    LOBYTE(v107) = ManagedAppDeclaration.BackupBehavior.backupAppData.getter();
    (*(v43 + 8))(v42, v103);
    v94 = type metadata accessor for DDMCachedMetadata(0);
    v93 = *(*(v94 - 8) + 56);
    v93(v130, 1, 1, v94);
    (*(v150 + 16))(v129, v105, v127);
    v92 = *(v150 + 56);
    v92(v129, 0, 1, v127);
    v47 = ManagedAppDeclaration.declarationIdentifier.getter();
    v104 = v48;
    v106 = v47;
    v49 = ManagedAppDeclaration.declarationKey.getter();
    v101 = v50;
    v102 = v49;
    ManagedAppDeclaration.installBehavior.getter();
    v100 = ManagedAppDeclaration.InstallBehavior.isAccountPromptAllowed.getter();
    v120(v96, v98);
    v51 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
    v91 = *(*(v51 - 8) + 56);
    v91(v132, 1, 1, v51);
    v122 = ManagedAppDeclaration.managementScope.getter();
    v52 = type metadata accessor for URL();
    v53 = *(*(v52 - 8) + 56);
    v53(v134, 1, 1, v52);
    ManagedAppDeclaration.platform.getter();
    v90 = *(v140 + 104);
    v90(v146, enum case for DDMPurchaseMethod.other(_:), v143);
    *(v46 + 24) = xmmword_10069E8A0;
    v54 = type metadata accessor for DDMDeclaration(0);
    v55 = v54[10];
    v93(v46 + v55, 1, 1, v94);
    v56 = v54[12];
    v95 = v54[11];
    v92(v46 + v56, 1, 1, v127);
    v121 = v54[16];
    v97 = v54[15];
    v99 = v54[17];
    v128 = v54[18];
    v91(v46 + v128, 1, 1, v51);
    v57 = v54[20];
    v151 = v54[19];
    v53(v46 + v57, 1, 1, v52);
    v58 = (v46 + v54[22]);
    v59 = v46 + v54[23];
    v60 = v54[24];
    static Platform.current.getter();
    v61 = (v46 + v54[26]);
    *v46 = 0;
    *(v46 + 8) = 0;
    *(v46 + 16) = 1;
    sub_1001CEE68(*(v46 + 24), *(v46 + 32));
    *(v46 + 24) = v111;
    *(v46 + 32) = v110;
    *(v46 + 41) = v107 & 1;
    *(v46 + 48) = v125;
    *(v46 + 56) = v123;
    sub_10026E634(v130, v46 + v55, &qword_10077F130);
    *(v46 + v95) = v108;
    sub_10026E634(v129, v46 + v56, &qword_10077F348);
    v62 = (v46 + v54[13]);
    *v62 = v106;
    v62[1] = v104;
    v63 = (v46 + v54[14]);
    *v63 = v102;
    v63[1] = v101;
    *(v46 + v97) = v109 & 1;
    *(v46 + v121) = v100 & 1;
    *(v46 + v99) = 0;
    sub_10026E634(v132, v46 + v128, &qword_10077F340);
    *(v46 + v151) = v122 & 1;
    sub_10026E634(v134, v46 + v57, &unk_1007809F0);
    v64 = (v46 + v54[21]);
    *v64 = v126;
    v64[1] = v124;
    *v58 = v112;
    v58[1] = v113;
    *v59 = 0;
    *(v59 + 8) = 1;
    sub_10026E620(v112, v113);
    (*(v117 + 24))(v46 + v60, v137, v118);
    (*(v140 + 16))(v46 + v54[25], v146, v143);
    *v61 = 0;
    v61[1] = 0;
    sub_100005934(v114, v119, &qword_10077F350);
    if ((*(v116 + 48))(v119, 1, v115) == 1)
    {
      v65 = *(v0 + 384);
      v147 = *(v0 + 376);
      v152 = *(v0 + 392);
      v141 = *(v0 + 216);
      v144 = *(v0 + 280);
      v138 = *(v0 + 208);
      v131 = *(v0 + 192);
      v133 = *(v0 + 200);
      v66 = *(v0 + 176);
      v67 = *(v0 + 184);
      v68 = *(v0 + 160);
      v69 = *(v0 + 168);
      v71 = *(v0 + 144);
      v70 = *(v0 + 152);
      v72 = *(v0 + 136);
      sub_1000032A8(*(v0 + 272), &qword_10077F350);
      v90(v70, enum case for DDMPurchaseMethod.manifest(_:), v72);
      v135 = static DDMPurchaseMethod.== infix(_:_:)();
      v73 = *(v71 + 8);
      v73(v70, v72);
      v73(v68, v72);
      (*(v66 + 8))(v67, v69);
      sub_1000032A8(v131, &unk_1007809F0);
      sub_1000032A8(v133, &qword_10077F340);
      sub_1000032A8(v138, &qword_10077F348);
      sub_1000032A8(v141, &qword_10077F130);
      sub_1000032A8(v144, &qword_10077F350);
      (*(v65 + 8))(v152, v147);
      if (v135)
      {
        v74 = 1;
      }

      else
      {
        v74 = 2;
      }
    }

    else
    {
      v75 = *(v0 + 104);
      v76 = *(v0 + 88);
      v77 = *(v0 + 96);
      (*(*(v0 + 120) + 32))(*(v0 + 128), *(v0 + 272), *(v0 + 112));
      ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicy.rawValue.getter();
      v78 = (*(v77 + 88))(v75, v76);
      if (v78 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.on(_:))
      {
        v153 = 0;
      }

      else
      {
        if (v78 == enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.off(_:))
        {
          v79 = 1;
        }

        else
        {
          if (v78 != enum case for ManagedAppDeclaration.UpdateBehavior.AutomaticUpdatePolicyEnum.storeSettings(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }

          v79 = 2;
        }

        v153 = v79;
      }

      v80 = *(v0 + 384);
      v145 = *(v0 + 376);
      v148 = *(v0 + 392);
      v139 = *(v0 + 216);
      v142 = *(v0 + 280);
      v136 = *(v0 + 208);
      v82 = *(v0 + 192);
      v81 = *(v0 + 200);
      v83 = *(v0 + 176);
      v84 = *(v0 + 184);
      v85 = *(v0 + 160);
      v86 = *(v0 + 168);
      v87 = *(v0 + 136);
      v88 = *(v0 + 144);
      (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
      (*(v88 + 8))(v85, v87);
      (*(v83 + 8))(v84, v86);
      sub_1000032A8(v82, &unk_1007809F0);
      sub_1000032A8(v81, &qword_10077F340);
      sub_1000032A8(v136, &qword_10077F348);
      sub_1000032A8(v139, &qword_10077F130);
      sub_1000032A8(v142, &qword_10077F350);
      (*(v80 + 8))(v148, v145);
      v74 = v153;
    }

    *(*(v0 + 48) + 40) = v74;

    v18 = *(v0 + 8);
  }

  else
  {
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    type metadata accessor for InternalError();
    sub_100262B9C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v18 = *(v0 + 8);
  }

  return v18();
}

uint64_t sub_100248324(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  v9 = a3[6];
  v10 = sub_100006D8C(a3, v6);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_10026FABC(a1, a2, v10, v13, v6, v7, v8, v9);
}

uint64_t sub_100248420(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 408) = a6;
  *(v7 + 416) = v6;
  *(v7 + 392) = a4;
  *(v7 + 400) = a5;
  *(v7 + 753) = a2;
  *(v7 + 376) = a1;
  *(v7 + 384) = a3;
  sub_1001F0C48(&qword_10077F380);
  *(v7 + 424) = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_10077F388);
  *(v7 + 432) = v8;
  *(v7 + 440) = *(v8 - 8);
  *(v7 + 448) = swift_task_alloc();
  v9 = type metadata accessor for DMCAppsScope();
  *(v7 + 456) = v9;
  *(v7 + 464) = *(v9 - 8);
  *(v7 + 472) = swift_task_alloc();
  *(v7 + 480) = swift_task_alloc();
  v10 = type metadata accessor for DMCAppsClient();
  *(v7 + 488) = v10;
  *(v7 + 496) = *(v10 - 8);
  *(v7 + 504) = swift_task_alloc();
  v11 = type metadata accessor for ManagedAppStatus.Reason();
  *(v7 + 512) = v11;
  *(v7 + 520) = *(v11 - 8);
  *(v7 + 528) = swift_task_alloc();
  v12 = type metadata accessor for DDMDeclaration(0);
  *(v7 + 536) = v12;
  v13 = *(v12 - 8);
  *(v7 + 544) = v13;
  *(v7 + 552) = *(v13 + 64);
  *(v7 + 560) = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  *(v7 + 568) = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  *(v7 + 576) = v14;
  *(v7 + 584) = *(v14 - 8);
  *(v7 + 592) = swift_task_alloc();
  *(v7 + 600) = swift_task_alloc();
  *(v7 + 608) = swift_task_alloc();

  return _swift_task_switch(sub_100248760, v6, 0);
}