uint64_t sub_1002E4530()
{

  return _swift_task_switch(sub_1002E4664, 0, 0);
}

uint64_t sub_1002E4664()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[32];
  (*(v0[21] + 104))(v0[22], enum case for PerformActionResponse.Response.ignored(_:), v0[20]);
  PerformActionResponse.init(response:)();
  v2(v1, v3);
  (*(v0[27] + 32))(v0[9], v0[28], v0[26]);
  sub_10000710C((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E47A0()
{
  (*(v0 + 288))(*(v0 + 280), *(v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E48AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_1007588F0);
  sub_1002FC188(&unk_100758910);
  v20 = swift_allocObject();
  v20[2] = a1;
  v20[3] = a2;
  v53 = v20;
  v20[4] = v4;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Perform private action";
  *(v36 + 40) = 22;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0D10;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0D20, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002E4DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v16;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a1;
  v8[22] = a3;
  v9 = type metadata accessor for PerformPrivateActionResponse.Response();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  v8[32] = v10;
  v8[33] = *(v10 - 8);
  v8[34] = swift_task_alloc();
  v11 = type metadata accessor for PerformPrivateActionRequest.Request();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[38] = v12;
  v8[39] = *(v12 - 8);
  v8[40] = swift_task_alloc();
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v13 = type metadata accessor for PerformPrivateActionRequest();
  v8[43] = v13;
  v8[44] = *(v13 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();

  return _swift_task_switch(sub_1002E5028, 0, 0);
}

uint64_t sub_1002E5028()
{
  v36 = v0;
  sub_100302E04(&qword_10077FB30, &type metadata accessor for PerformPrivateActionRequest);
  sub_100302E04(&qword_10077FB38, &type metadata accessor for PerformPrivateActionRequest);
  decodeXPCValues<A>(from:)();
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[43];
  v4 = v0[44];
  static Logger.daemon.getter();
  v5 = *(v4 + 16);
  v0[48] = v5;
  v0[49] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v2, v1, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[46];
  v10 = v0[43];
  v11 = v0[44];
  v12 = v0[42];
  v13 = v0[38];
  v14 = v0[39];
  if (v8)
  {
    v31 = v0[24];
    v32 = v0[25];
    v28 = v0[22];
    v29 = v0[23];
    v34 = v0[38];
    v15 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    *v15 = 136446466;
    v16 = PerformPrivateActionRequest.stringValue.getter();
    v33 = v12;
    v18 = v17;
    v30 = v7;
    v19 = *(v11 + 8);
    v19(v9, v10);
    v20 = sub_1002346CC(v16, v18, v35);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v21 = audit_token_t.signingIdentifier.getter(v28, v29, v31, v32);
    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v21 = 0x6E776F6E6B6E55;
      v23 = 0xE700000000000000;
    }

    v24 = sub_1002346CC(v21, v23, v35);

    *(v15 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v6, v30, "Perform private action request %{public}s called by %{public}s", v15, 0x16u);
    swift_arrayDestroy();

    v25 = *(v14 + 8);
    v25(v33, v34);
  }

  else
  {

    v19 = *(v11 + 8);
    v19(v9, v10);
    v25 = *(v14 + 8);
    v25(v12, v13);
  }

  v0[50] = v25;
  v0[51] = v19;
  v26 = swift_task_alloc();
  v0[52] = v26;
  *v26 = v0;
  v26[1] = sub_1002E5420;

  return sub_100324690((v0 + 14));
}

uint64_t sub_1002E5420()
{

  return _swift_task_switch(sub_1002E551C, 0, 0);
}

uint64_t sub_1002E551C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = sub_100006D8C(v0 + 14, v2);
  v4 = swift_task_alloc();
  v0[53] = v4;
  *v4 = v0;
  v4[1] = sub_1002E55E4;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002E55E4(char a1)
{
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_1002E56E4, 0, 0);
}

uint64_t sub_1002E56E4()
{
  v142 = v0;
  if (*(v0 + 504) == 1 && (v1 = audit_token_t.signingIdentifier.getter(*(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200)), (*(v0 + 432) = v2) != 0))
  {
    v3 = v1;
    v4 = v2;
    v6 = *(v0 + 288);
    v5 = *(v0 + 296);
    v7 = *(v0 + 280);
    v8 = *(v0 + 224) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    PerformPrivateActionRequest.request.getter();
    v9 = (*(v6 + 88))(v5, v7);
    if (v9 == enum case for PerformPrivateActionRequest.Request.repairLicense(_:))
    {
      v133 = v3;
      v10 = *(v0 + 296);
      v11 = *(v0 + 272);
      v12 = *(v0 + 256);
      v13 = *(v0 + 264);
      (*(*(v0 + 288) + 96))(v10, *(v0 + 280));
      v15 = *v10;
      v14 = *(v10 + 8);
      *(v0 + 440) = v14;
      v129 = *(v10 + 16);
      (*(v13 + 104))(v11, enum case for LogKey.Prefix.license(_:), v12);
      v16 = objc_allocWithZone(type metadata accessor for LogKey());
      v17 = LogKey.init(prefix:)();
      sub_10062611C();

      static Logger.ald.getter();

      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 400);
      v22 = *(v0 + 328);
      v23 = *(v0 + 304);
      if (v20)
      {
        v120 = v15;
        v24 = swift_slowAlloc();
        v125 = v22;
        v25 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v24 = 138413058;
        v26 = sub_100625FA0();
        *(v24 + 4) = v26;
        *v25 = v26;
        *(v24 + 12) = 2082;
        v27 = sub_1002346CC(v133, v4, &v139);
        v134 = v23;
        v28 = v27;

        *(v24 + 14) = v28;
        *(v24 + 22) = 2082;
        v29 = v120;
        *(v24 + 24) = sub_1002346CC(v120, v14, &v139);
        *(v24 + 32) = 1026;
        *(v24 + 34) = v129;
        _os_log_impl(&_mh_execute_header, v18, v19, "[%@] %{public}s requested license repair for %{public}s (%{public}d)", v24, 0x26u);
        sub_1000032A8(v25, &qword_10077F920);

        swift_arrayDestroy();

        v21(v125, v134);
      }

      else
      {

        v21(v22, v23);
        v29 = v15;
      }

      v63 = *(v8 + 24);
      v136 = *(v8 + 64);
      v64 = sub_100006D8C(v8, v63);
      *(v0 + 88) = v63;
      *(v0 + 96) = v136;
      v65 = sub_10020A748((v0 + 64));
      (*(*(v63 - 8) + 16))(v65, v64, v63);
      v66 = swift_task_alloc();
      *(v0 + 448) = v66;
      *v66 = v0;
      v66[1] = sub_1002E6568;

      return sub_100588148(v29, v14, v0 + 64);
    }

    else if (v9 == enum case for PerformPrivateActionRequest.Request.repairLicenseByBundleID(_:))
    {
      v132 = v8;
      v126 = *(v0 + 376);
      v130 = *(v0 + 384);
      v37 = *(v0 + 360);
      v121 = *(v0 + 344);
      v39 = *(v0 + 288);
      v38 = *(v0 + 296);
      v41 = *(v0 + 272);
      v40 = *(v0 + 280);
      v43 = *(v0 + 256);
      v42 = *(v0 + 264);

      (*(v39 + 96))(v38, v40);
      v45 = *v38;
      v44 = *(v38 + 8);
      *(v0 + 464) = v44;
      v123 = *(v38 + 16);
      (*(v42 + 104))(v41, enum case for LogKey.Prefix.license(_:), v43);
      v46 = objc_allocWithZone(type metadata accessor for LogKey());
      v47 = v44;
      v48 = LogKey.init(prefix:)();
      sub_10062611C();

      static Logger.ald.getter();
      v130(v37, v126, v121);

      v49 = Logger.logObject.getter();
      LOBYTE(v48) = static os_log_type_t.default.getter();

      v122 = v48;
      v50 = os_log_type_enabled(v49, v48);
      v51 = *(v0 + 400);
      v52 = *(v0 + 360);
      v53 = *(v0 + 344);
      v54 = *(v0 + 320);
      v127 = *(v0 + 408);
      v135 = *(v0 + 304);
      if (v50)
      {
        v119 = *(v0 + 320);
        v55 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        *v55 = 138412802;
        v56 = sub_100625FA0();
        *(v55 + 4) = v56;
        *v118 = v56;
        log = v49;
        v57 = v45;
        *(v55 + 12) = 2082;
        *(v55 + 14) = sub_1002346CC(v45, v44, &v139);
        *(v55 + 22) = 2082;
        v58 = PerformPrivateActionRequest.stringValue.getter();
        v60 = v59;
        v127(v52, v53);
        v61 = v58;
        v47 = v44;
        v62 = sub_1002346CC(v61, v60, &v139);
        v45 = v57;

        *(v55 + 24) = v62;
        _os_log_impl(&_mh_execute_header, log, v122, "[%@] %{public}s received %{public}s", v55, 0x20u);
        sub_1000032A8(v118, &qword_10077F920);

        swift_arrayDestroy();

        v51(v119, v135);
      }

      else
      {

        v127(v52, v53);
        v51(v54, v135);
      }

      v86 = *(v132 + 24);
      v138 = *(v132 + 64);
      v87 = sub_100006D8C(v132, v86);
      *(v0 + 40) = v86;
      *(v0 + 48) = v138;
      v88 = sub_10020A748((v0 + 16));
      (*(*(v86 - 8) + 16))(v88, v87, v86);
      v89 = swift_task_alloc();
      *(v0 + 472) = v89;
      *v89 = v0;
      v89[1] = sub_1002E68E0;

      return sub_1005890D4(v45, v47, v123, v0 + 16);
    }

    else if (v9 == enum case for PerformPrivateActionRequest.Request.renewLicenses(_:))
    {
      v67 = *(v0 + 296);
      v68 = *(v0 + 272);
      v69 = *(v0 + 256);
      v70 = *(v0 + 264);
      (*(*(v0 + 288) + 96))(v67, *(v0 + 280));
      v71 = *v67;
      (*(v70 + 104))(v68, enum case for LogKey.Prefix.license(_:), v69);
      v72 = objc_allocWithZone(type metadata accessor for LogKey());
      v73 = LogKey.init(prefix:)();
      sub_10062611C();

      v139 = v3;
      v140 = v4;

      v74._countAndFlagsBits = 58;
      v74._object = 0xE100000000000000;
      String.append(_:)(v74);
      v75 = *(v71 + 16);
      v76 = _swiftEmptyArrayStorage;
      v137 = v3;
      v128 = v71;
      v131 = v75;
      if (v75)
      {
        v141 = _swiftEmptyArrayStorage;
        v77 = v75;
        sub_100526304(0, v75, 0);
        v76 = _swiftEmptyArrayStorage;
        v78 = (v71 + 32);
        do
        {
          v79 = *v78++;
          *(v0 + 152) = v79;
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          v141 = v76;
          v83 = v76[2];
          v82 = v76[3];
          if (v83 >= v82 >> 1)
          {
            v124 = v80;
            v85 = v81;
            sub_100526304((v82 > 1), v83 + 1, 1);
            v81 = v85;
            v80 = v124;
            v76 = v141;
          }

          v76[2] = v83 + 1;
          v84 = &v76[2 * v83];
          v84[4] = v80;
          v84[5] = v81;
          --v77;
        }

        while (v77);
        v71 = v128;
      }

      *(v0 + 160) = v76;
      sub_1001F0C48(&unk_10077FB40);
      sub_100213FA0(&qword_1007803B0, &unk_10077FB40);
      v90 = BidirectionalCollection<>.joined(separator:)();
      v92 = v91;

      v93._countAndFlagsBits = v90;
      v93._object = v92;
      String.append(_:)(v93);

      v94 = v139;
      v95 = v140;
      sub_1006258D8();
      if (qword_10077E5A0 != -1)
      {
        swift_once();
      }

      v96 = v8;
      sub_1002710CC(*(v0 + 304), qword_1007B88E8);

      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v139 = v100;
        *v99 = 136446210;

        *(v99 + 4) = sub_1002346CC(v94, v95, &v139);
        _os_log_impl(&_mh_execute_header, v97, v98, "Activity associated with %{public}s", v99, 0xCu);
        sub_10000710C(v100);
        v71 = v128;
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      if (v131)
      {
        v139 = _swiftEmptyArrayStorage;
        sub_1005266DC(0, v131, 0);
        v101 = v131;
        v102 = 0;
        v103 = v139;
        v104 = v71 + 32;
        v105 = v139[2];
        v106 = 3 * v105;
        do
        {
          v107 = *(v104 + 8 * v102);
          v139 = v103;
          v108 = v103[3];
          v109 = v105 + v102 + 1;
          if (v105 + v102 >= v108 >> 1)
          {
            sub_1005266DC((v108 > 1), v105 + v102 + 1, 1);
            v101 = v131;
            v103 = v139;
          }

          ++v102;
          v103[2] = v109;
          v110 = &v103[v106];
          v110[4] = v107;
          v110[5] = 0;
          *(v110 + 48) = 0;
          v106 += 3;
        }

        while (v101 != v102);
      }

      else
      {

        v103 = _swiftEmptyArrayStorage;
      }

      *(v0 + 488) = v103;
      v111 = v96;
      v112 = v96[3];
      v113 = v96[8];
      v114 = v96[9];
      v115 = sub_100006D8C(v111, v112);
      v116 = swift_task_alloc();
      *(v0 + 496) = v116;
      *v116 = v0;
      v116[1] = sub_1002E6B14;

      return (sub_1005794DC)(v103, v115, 0, v137, v4, v112, v113, v114);
    }

    else
    {
      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  else
  {
    v30 = *(v0 + 408);
    v31 = *(v0 + 376);
    v32 = *(v0 + 344);
    v33 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for MarketplaceKitError.featureUnavailable(_:), v33);
    swift_willThrow();
    v30(v31, v32);
    sub_10000710C(v0 + 112);

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_1002E6568()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = sub_1002E67D8;
  }

  else
  {
    sub_10000710C(v2 + 64);
    v3 = sub_1002E6694;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E6694()
{
  v1 = v0[51];
  v2 = v0[47];
  v3 = v0[43];
  (*(v0[30] + 104))(v0[31], enum case for PerformPrivateActionResponse.Response.ignored(_:), v0[29]);
  PerformPrivateActionResponse.init(response:)();
  v1(v2, v3);
  sub_10000710C((v0 + 14));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E67D8()
{
  (*(v0 + 408))(*(v0 + 376), *(v0 + 344));
  sub_10000710C(v0 + 112);
  sub_10000710C(v0 + 64);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E68E0()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  if (v0)
  {
    v3 = sub_1002E6A0C;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_100302F64;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002E6A0C()
{
  (*(v0 + 408))(*(v0 + 376), *(v0 + 344));
  sub_10000710C(v0 + 112);
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E6B14()
{

  return _swift_task_switch(sub_1002E6694, 0, 0);
}

uint64_t sub_1002E6C7C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  ObjectType = swift_getObjectType();
  v6 = sub_1001F0C48(&unk_100780380);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v43 - v10;
  v12 = sub_1001F0C48(&qword_10077F8D0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12 - 8);
  __chkstk_darwin(v15);
  v17 = &v43 - v16;
  v18 = type metadata accessor for LogKey.Prefix();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  v51 = v19;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v11, 1, 1, v20);
  v21 = objc_opt_self();
  sub_10020ABFC(a1, a2);
  v22 = [v21 currentConnection];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v25 = swift_dynamicCast();
    v26 = v57;
    if (!v25)
    {
      v26 = 0;
    }

    v50 = v26;
    [v23 auditToken];
    v45 = v56;
    v47 = v55;
  }

  else
  {
    v50 = 0;
    v47 = 0u;
    v45 = 0u;
  }

  v58 = v23 == 0;
  sub_100005934(v11, v9, &unk_100780380);
  sub_100005934(v17, &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v27 = *(v13 + 80);
  v46 = v9;
  v28 = (v27 + 49) & ~v27;
  v29 = v28 + v14;
  v30 = (v28 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v11;
  v49 = v17;
  v31 = (v30 + 75) & 0xFFFFFFFFFFFFFFF8;
  v44 = v23;
  v32 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  *(v34 + 32) = "Fetch transaction reporting token";
  *(v34 + 40) = 33;
  *(v34 + 48) = 2;
  sub_10020A668(v32, v34 + v28, &qword_10077F8D0);
  *(v34 + v29) = 1;
  *(v34 + v30 + 8) = v50;
  v35 = v34 + ((v30 + 19) & 0xFFFFFFFFFFFFFFF8);
  v36 = v45;
  *v35 = v47;
  *(v35 + 16) = v36;
  *(v35 + 32) = v58;
  v37 = v34 + ((v30 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v37 = &_swiftEmptySetSingleton;
  *(v37 + 8) = 1;
  v38 = (v34 + v31);
  v39 = v51;
  *v38 = &unk_1006A0CC8;
  v38[1] = v39;
  v40 = (v34 + v33);
  v41 = v54;
  *v40 = v53;
  v40[1] = v41;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0CD8, v34);

  swift_unknownObjectRelease();

  sub_1000032A8(v48, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_1002E7158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a7;
  v8[8] = a8;
  v8[5] = a5;
  v8[6] = a6;
  v8[3] = a3;
  v8[4] = a4;
  v8[2] = a1;
  v9 = type metadata accessor for Logger();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v8[12] = swift_task_alloc();
  v10 = type metadata accessor for SKTransactionReportTokenRequest();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();

  return _swift_task_switch(sub_1002E7298, 0, 0);
}

uint64_t sub_1002E7298()
{
  v57 = v0;
  sub_100302E04(&qword_10077FAF0, &type metadata accessor for SKTransactionReportTokenRequest);
  sub_100302E04(&qword_10077FAF8, &type metadata accessor for SKTransactionReportTokenRequest);
  decodeXPCValues<A>(from:)();
  if (os_variant_has_internal_content())
  {
    SKTransactionReportTokenRequest.bundleIDOverride.getter();
    if (v4)
    {
      v5 = v0[15];
      v6 = v0[16];
      v7 = v0[13];
      v8 = v0[14];

      static Logger.daemon.getter();
      (*(v8 + 16))(v5, v6, v7);
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.debug.getter();
      v11 = os_log_type_enabled(v9, v10);
      v13 = v0[14];
      v12 = v0[15];
      v14 = v0[12];
      v15 = v0[13];
      v17 = v0[9];
      v16 = v0[10];
      if (v11)
      {
        v54 = v0[9];
        v18 = swift_slowAlloc();
        v51 = v10;
        v19 = swift_slowAlloc();
        v56[0] = v19;
        *v18 = 136315138;
        v20 = SKTransactionReportTokenRequest.bundleIDOverride.getter();
        if (v21)
        {
          v22 = v20;
        }

        else
        {
          v22 = 0x6E776F6E6B6E7528;
        }

        v52 = v14;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = 0xE900000000000029;
        }

        (*(v13 + 8))(v12, v15);
        v24 = sub_1002346CC(v22, v23, v56);

        *(v18 + 4) = v24;
        _os_log_impl(&_mh_execute_header, v9, v51, "Transaction reporting token request called by internal build using bundleID override:%s", v18, 0xCu);
        sub_10000710C(v19);

        (*(v16 + 8))(v52, v54);
      }

      else
      {

        (*(v13 + 8))(v12, v15);
        (*(v16 + 8))(v14, v17);
      }

      v41 = SKTransactionReportTokenRequest.bundleIDOverride.getter();
      if (!v42)
      {
        v45 = 0;
        v42 = 0xE000000000000000;
        goto LABEL_26;
      }

LABEL_25:
      v45 = v41;
LABEL_26:
      v0[17] = v42;
      v46 = v42;
      v47 = SKTransactionReportTokenRequest.tokenType.getter();
      v49 = v48;
      v0[18] = v48;
      v50 = swift_task_alloc();
      v0[19] = v50;
      *v50 = v0;
      v50[1] = sub_1002E7854;

      return sub_100302FDC(v45, v46, v47, v49);
    }
  }

  static Logger.daemon.getter();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v29 = v0[10];
  v28 = v0[11];
  v30 = v0[9];
  if (v27)
  {
    v32 = v0[5];
    v31 = v0[6];
    v34 = v0[3];
    v33 = v0[4];
    v55 = v0[9];
    v35 = swift_slowAlloc();
    v53 = v28;
    v36 = swift_slowAlloc();
    v56[0] = v36;
    *v35 = 136315138;
    v37 = audit_token_t.signingIdentifier.getter(v34, v33, v32, v31);
    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v37 = 0x6E776F6E6B6E7528;
      v39 = 0xE900000000000029;
    }

    v40 = sub_1002346CC(v37, v39, v56);

    *(v35 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v25, v26, "Transaction reporting token request called using bundleID:%s", v35, 0xCu);
    sub_10000710C(v36);

    (*(v29 + 8))(v53, v55);
  }

  else
  {

    (*(v29 + 8))(v28, v30);
  }

  v41 = audit_token_t.signingIdentifier.getter(v0[3], v0[4], v0[5], v0[6]);
  if (v42)
  {
    goto LABEL_25;
  }

  v43 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v43 - 8) + 104))(v44, enum case for MarketplaceKitError.featureUnavailable(_:), v43);
  swift_willThrow();
  (*(v0[14] + 8))(v0[16], v0[13]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002E7854(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 160) = v2;

  if (v2)
  {
    v7 = sub_1002E7A54;
  }

  else
  {

    *(v6 + 168) = a2;
    *(v6 + 176) = a1;
    v7 = sub_1002E7998;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1002E7998()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  SKTransactionReportTokenResponse.init(token:)();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002E7A54()
{

  v1 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v1 - 8) + 104))(v2, enum case for MarketplaceKitError.unknown(_:), v1);
  swift_willThrow();

  (*(v0[14] + 8))(v0[16], v0[13]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002E7BE8(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v54 = a2;
  ObjectType = swift_getObjectType();
  v3 = sub_1001F0C48(&unk_100780380);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v41 - v7;
  v9 = sub_1001F0C48(&qword_10077F8D0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9 - 8);
  __chkstk_darwin(v12);
  v14 = &v41 - v13;
  v15 = type metadata accessor for LogKey.Prefix();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v51 = sub_1001F6740(&off_100758930);
  sub_1002FC188(&unk_100758950);
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1006A0CA8;
  *(v17 + 24) = v16;
  v49 = v17;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
  v19 = objc_opt_self();
  v20 = v2;
  v50 = v16;

  v21 = [v19 currentConnection];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v24 = swift_dynamicCast();
    v25 = v57;
    if (!v24)
    {
      v25 = 0;
    }

    v48 = v25;
    [v22 auditToken];
    v43 = v56;
    v45 = v55;
  }

  else
  {
    v48 = 0;
    v45 = 0u;
    v43 = 0u;
  }

  v58 = v22 == 0;
  sub_100005934(v8, v6, &unk_100780380);
  sub_100005934(v14, &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v26 = (*(v10 + 80) + 49) & ~*(v10 + 80);
  v46 = v8;
  v47 = v14;
  v27 = v26 + v11;
  v28 = (v26 + v11) & 0xFFFFFFFFFFFFFFF8;
  v44 = v22;
  v29 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = (v28 + 75) & 0xFFFFFFFFFFFFFFF8;
  v31 = (v30 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = v6;
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *(v32 + 32) = "Handle Emergency Reset";
  *(v32 + 40) = 22;
  *(v32 + 48) = 2;
  sub_10020A668(v29, v32 + v26, &qword_10077F8D0);
  *(v32 + v27) = 1;
  *(v32 + v28 + 8) = v48;
  v33 = v32 + ((v28 + 19) & 0xFFFFFFFFFFFFFFF8);
  v34 = v43;
  *v33 = v45;
  *(v33 + 16) = v34;
  *(v33 + 32) = v58;
  v35 = v32 + ((v28 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v35 = v51;
  *(v35 + 8) = 1;
  v36 = (v32 + v30);
  v37 = v49;
  *v36 = &unk_1006A0CB0;
  v36[1] = v37;
  v38 = (v32 + v31);
  v39 = v54;
  *v38 = v53;
  v38[1] = v39;
  *(v32 + ((v31 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v42, &unk_1006A0CB8, v32);

  swift_unknownObjectRelease();

  sub_1000032A8(v46, &unk_100780380);
  return sub_1000032A8(v47, &qword_10077F8D0);
}

uint64_t sub_1002E8124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a6;
  v7 = type metadata accessor for Logger();
  v6[3] = v7;
  v6[4] = *(v7 - 8);
  v6[5] = swift_task_alloc();

  return _swift_task_switch(sub_1002E81E4, 0, 0);
}

uint64_t sub_1002E81E4()
{
  static Logger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Asked to handle emergency reset", v3, 2u);
  }

  v5 = v0[4];
  v4 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  (*(v5 + 8))(v4, v6);
  sub_100006D8C((v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies), *(v7 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies + 24));

  sub_100650060();

  v8 = v0[1];

  return v8();
}

uint64_t sub_1002E8370(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1002E8404(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v54 = *(v13 - 8);
  v14 = *(v54 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = enum case for LogKey.Prefix.madctl(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A0C88;
  *(v22 + 24) = v21;
  v55 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v57 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v63;
    if (!v29)
    {
      v30 = 0;
    }

    v53 = v30;
    [v27 auditToken];
    v49 = v62;
    v50 = v61;
  }

  else
  {
    v53 = 0;
    v50 = 0u;
    v49 = 0u;
  }

  v64 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v51 = v27;
  v31 = v56;
  sub_100005934(v17, v56, &qword_10077F8D0);
  v32 = v54[80];
  v52 = v12;
  v33 = (v32 + 49) & ~v32;
  v34 = v33 + v14;
  v35 = (v33 + v14) & 0xFFFFFFFFFFFFFFF8;
  v54 = v17;
  v48 = v10;
  v36 = (v35 + 75) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = "Manifest validation";
  *(v38 + 40) = 19;
  *(v38 + 48) = 2;
  sub_10020A668(v31, v38 + v33, &qword_10077F8D0);
  *(v38 + v34) = 1;
  *(v38 + v35 + 8) = v53;
  v39 = v38 + ((v35 + 19) & 0xFFFFFFFFFFFFFFF8);
  v40 = v49;
  *v39 = v50;
  *(v39 + 16) = v40;
  *(v39 + 32) = v64;
  v41 = v38 + ((v35 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v41 = &_swiftEmptySetSingleton;
  *(v41 + 8) = 1;
  v42 = (v38 + v36);
  v43 = v55;
  *v42 = &unk_1006A0C90;
  v42[1] = v43;
  v44 = (v38 + v37);
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A0C98, v38);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v54, &qword_10077F8D0);
}

uint64_t sub_1002E8974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a4;
  v8[30] = a5;
  v8[27] = a2;
  v8[28] = a3;
  v8[26] = a1;
  v8[33] = type metadata accessor for ManifestValidationTask();
  v8[34] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v10 = type metadata accessor for ManifestValidationRequest();
  v8[39] = v10;
  v8[40] = *(v10 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v11 = type metadata accessor for Logger();
  v8[43] = v11;
  v8[44] = *(v11 - 8);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[47] = v12;
  *v12 = v8;
  v12[1] = sub_1002E8B90;

  return sub_100324690((v8 + 21));
}

uint64_t sub_1002E8B90()
{

  return _swift_task_switch(sub_1002E8C8C, 0, 0);
}

uint64_t sub_1002E8C8C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = sub_100006D8C(v0 + 21, v2);
  v4 = swift_task_alloc();
  v0[48] = v4;
  *v4 = v0;
  v4[1] = sub_1002E8D54;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002E8D54(char a1)
{
  *(*v1 + 127) = a1;

  return _swift_task_switch(sub_1002E8E54, 0, 0);
}

uint64_t sub_1002E8E54()
{
  if (*(v0 + 127) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 392) = v1;
    *v1 = v0;
    v1[1] = sub_1002E9058;
    v2 = *(v0 + 232);
    v3 = *(v0 + 240);
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);

    return sub_100323C0C(v5, v4, v2, v3);
  }

  else
  {
    v7 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for MarketplaceKitError.featureUnavailable(_:), v7);
    swift_willThrow();
    sub_10000710C(v0 + 168);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1002E9058()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_1002E9790;
  }

  else
  {
    v2 = sub_1002E916C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E916C()
{
  v63 = v0;
  static Logger.daemon.getter();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Manifest validation requested", v3, 2u);
  }

  v4 = *(v0 + 400);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);

  v60 = *(v7 + 8);
  v60(v5, v6);
  sub_100302E04(&qword_10077FAB0, &type metadata accessor for ManifestValidationRequest);
  sub_100302E04(&qword_10077FAB8, &type metadata accessor for ManifestValidationRequest);
  decodeXPCValues<A>(from:)();
  if (v4)
  {
    sub_10000710C(v0 + 168);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v11 = *(v0 + 328);
    v10 = *(v0 + 336);
    v12 = *(v0 + 312);
    v13 = *(v0 + 320);
    ManifestValidationRequest.url.getter();
    static Logger.daemon.getter();
    (*(v13 + 16))(v11, v10, v12);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 360);
    v18 = *(v0 + 344);
    v19 = *(v0 + 320);
    v20 = *(v0 + 328);
    v21 = *(v0 + 312);
    if (v16)
    {
      v58 = v15;
      v56 = *(v0 + 312);
      v23 = *(v0 + 288);
      v22 = *(v0 + 296);
      v24 = *(v0 + 280);
      v25 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v62._countAndFlagsBits = v55;
      *v25 = 136446210;
      v59 = v17;
      ManifestValidationRequest.url.getter();
      sub_100302E04(&qword_10077EE18, &type metadata accessor for URL);
      v26 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v18;
      v28 = v27;
      (*(v23 + 8))(v22, v24);
      v29 = *(v19 + 8);
      v29(v20, v56);
      v30 = sub_1002346CC(v26, v28, &v62._countAndFlagsBits);

      *(v25 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v14, v58, "Manifest is located at URL: %{public}s", v25, 0xCu);
      sub_10000710C(v55);

      v31 = v59;
      v32 = v57;
    }

    else
    {

      v29 = *(v19 + 8);
      v29(v20, v21);
      v31 = v17;
      v32 = v18;
    }

    v60(v31, v32);
    *(v0 + 408) = v29;
    v61 = *(v0 + 304);
    v33 = *(v0 + 280);
    v34 = *(v0 + 288);
    v35 = *(v0 + 264);
    v36 = *(v0 + 272);
    v37 = *(v0 + 208);
    sub_100233254(v0 + 16);
    swift_getObjectType();
    v62._countAndFlagsBits = 0;
    v62._object = 0xE000000000000000;
    _StringGuts.grow(_:)(107);
    v38._countAndFlagsBits = 0xD000000000000038;
    v38._object = 0x80000001006C53F0;
    String.append(_:)(v38);
    v39 = *(v0 + 16);
    v40 = *(v0 + 24);

    v41._countAndFlagsBits = v39;
    v41._object = v40;
    String.append(_:)(v41);

    v42._object = 0x80000001006C5430;
    v42._countAndFlagsBits = 0xD00000000000001FLL;
    String.append(_:)(v42);
    v43._countAndFlagsBits = Array.description.getter();
    String.append(_:)(v43);

    v44._countAndFlagsBits = 0x72655620534F090ALL;
    v44._object = 0xEE00203A6E6F6973;
    String.append(_:)(v44);
    v45 = *(v0 + 88);
    *(v0 + 160) = *(v0 + 104);
    *(v0 + 128) = *(v0 + 72);
    *(v0 + 144) = v45;
    v46 = *(v0 + 152);
    v47 = *(v0 + 160);

    v48._countAndFlagsBits = v46;
    v48._object = v47;
    String.append(_:)(v48);
    sub_100222DA4(v0 + 128);
    XPCClientProtocol.logMessage(_:)(v62);

    (*(v34 + 16))(v36 + *(v35 + 24), v61, v33);
    *v36 = v37;
    v50 = *(v0 + 32);
    v49 = *(v0 + 48);
    *(v36 + 8) = *(v0 + 16);
    *(v36 + 24) = v50;
    *(v36 + 40) = v49;
    v52 = *(v0 + 80);
    v51 = *(v0 + 96);
    v53 = *(v0 + 111);
    *(v36 + 56) = *(v0 + 64);
    *(v36 + 103) = v53;
    *(v36 + 88) = v51;
    *(v36 + 72) = v52;
    swift_unknownObjectRetain();
    v54 = swift_task_alloc();
    *(v0 + 416) = v54;
    *v54 = v0;
    v54[1] = sub_1002E9854;

    return sub_10043DA44();
  }
}

uint64_t sub_1002E9790()
{
  sub_10000710C(v0 + 168);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002E9854()
{
  *(*v1 + 424) = v0;

  if (v0)
  {
    v2 = sub_1002E9A8C;
  }

  else
  {
    v2 = sub_1002E9968;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002E9968()
{
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[40];
  v4 = v0[38];
  v6 = v0[35];
  v5 = v0[36];
  sub_1003017A4(v0[34], type metadata accessor for ManifestValidationTask);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  sub_10000710C((v0 + 21));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E9A8C()
{
  v1 = v0[51];
  v2 = v0[42];
  v3 = v0[39];
  v4 = v0[38];
  v5 = v0[35];
  v6 = v0[36];
  sub_1003017A4(v0[34], type metadata accessor for ManifestValidationTask);
  (*(v6 + 8))(v4, v5);
  v1(v2, v3);
  sub_10000710C((v0 + 21));

  v7 = v0[1];

  return v7();
}

uint64_t sub_1002E9BE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0C68;
  *(v21 + 24) = v20;
  v52 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v53 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v50 = v29;
    [v26 auditToken];
    v46 = v58;
    v48 = v57;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v46 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v51[80] + 49) & ~v51[80];
  v31 = v30 + v14;
  v51 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = v18;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "OAuth authorize";
  *(v35 + 40) = 15;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v50;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v46;
  *v36 = v48;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v52;
  *v39 = &unk_1006A0C70;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0C78, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_1002EA10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[20] = a3;
  v8[21] = a4;
  v8[19] = a2;
  v9 = type metadata accessor for URL();
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v11 = type metadata accessor for LogKey.Prefix();
  v8[32] = v11;
  v8[33] = *(v11 - 8);
  v8[34] = swift_task_alloc();
  v12 = type metadata accessor for OAuthAuthorizeRequest();
  v8[35] = v12;
  v8[36] = *(v12 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[39] = v13;
  *v13 = v8;
  v13[1] = sub_1002EA33C;

  return sub_100324690((v8 + 14));
}

uint64_t sub_1002EA33C()
{

  return _swift_task_switch(sub_1002EA438, 0, 0);
}

uint64_t sub_1002EA438()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = sub_100006D8C(v0 + 14, v2);
  v4 = swift_task_alloc();
  v0[40] = v4;
  *v4 = v0;
  v4[1] = sub_1002EA500;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002EA500(char a1)
{
  *(*v1 + 368) = a1;

  return _swift_task_switch(sub_1002EA600, 0, 0);
}

uint64_t sub_1002EA600()
{
  if (*(v0 + 368) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 328) = v1;
    *v1 = v0;
    v1[1] = sub_1002EA7DC;
    v2 = *(v0 + 168);
    v3 = *(v0 + 176);
    v5 = *(v0 + 152);
    v4 = *(v0 + 160);

    return sub_100323C0C(v5, v4, v2, v3);
  }

  else
  {
    v7 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for MarketplaceKitError.featureUnavailable(_:), v7);
    swift_willThrow();
    sub_10000710C(v0 + 112);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1002EA7DC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1002EAEBC;
  }

  else
  {
    v2 = sub_1002EA8F0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EA8F0()
{
  v54 = v0;
  v1 = *(v0 + 336);
  sub_100302E04(&qword_10077FAA0, &type metadata accessor for OAuthAuthorizeRequest);
  sub_100302E04(&qword_10077FAA8, &type metadata accessor for OAuthAuthorizeRequest);
  decodeXPCValues<A>(from:)();
  if (v1)
  {
    sub_10000710C(v0 + 112);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v5 = *(v0 + 296);
    v4 = *(v0 + 304);
    v6 = *(v0 + 280);
    v7 = *(v0 + 288);
    (*(*(v0 + 264) + 104))(*(v0 + 272), enum case for LogKey.Prefix.madctl(_:), *(v0 + 256));
    v8 = objc_allocWithZone(type metadata accessor for LogKey());
    v9 = LogKey.init(prefix:)();
    *(v0 + 344) = v9;
    static Logger.xpc.getter();
    (*(v7 + 16))(v5, v4, v6);
    v10 = v9;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 288);
    v15 = *(v0 + 296);
    v16 = *(v0 + 280);
    v18 = *(v0 + 240);
    v17 = *(v0 + 248);
    v19 = *(v0 + 232);
    v52 = v10;
    if (v13)
    {
      v51 = *(v0 + 232);
      v49 = v12;
      v21 = *(v0 + 216);
      v20 = *(v0 + 224);
      v46 = *(v0 + 208);
      v45 = *(v0 + 280);
      v22 = swift_slowAlloc();
      log = v11;
      v23 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v53 = v48;
      *v22 = 138412546;
      *(v22 + 4) = v10;
      *v23 = v10;
      *(v22 + 12) = 2082;
      v24 = v10;
      v50 = v17;
      OAuthAuthorizeRequest.endpointURL.getter();
      v25 = URL.absoluteString.getter();
      v27 = v26;
      (*(v21 + 8))(v20, v46);
      (*(v14 + 8))(v15, v45);
      v28 = sub_1002346CC(v25, v27, &v53);

      *(v22 + 14) = v28;
      _os_log_impl(&_mh_execute_header, log, v49, "[%@] Requesting authentication at %{public}s", v22, 0x16u);
      sub_1000032A8(v23, &qword_10077F920);

      sub_10000710C(v48);

      (*(v18 + 8))(v50, v51);
    }

    else
    {

      (*(v14 + 8))(v15, v16);
      (*(v18 + 8))(v17, v19);
    }

    v30 = *(v0 + 216);
    v29 = *(v0 + 224);
    v31 = *(v0 + 208);
    OAuthAuthorizeRequest.endpointURL.getter();
    v32 = URL.host(percentEncoded:)(1);
    result = (*(v30 + 8))(v29, v31);
    if (v32.value._object)
    {
      v33 = (*(v0 + 184) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
      v34 = OAuthAuthorizeRequest.isUpdate.getter();
      v35 = OAuthAuthorizeRequest.isMarketplace.getter();
      v36 = [objc_opt_self() ephemeralSessionConfiguration];
      [v36 setHTTPShouldSetCookies:0];
      [v36 setHTTPCookieAcceptPolicy:1];
      [v36 setRequestCachePolicy:1];
      sub_10043D15C(1);
      v37 = [objc_opt_self() sessionWithConfiguration:v36];

      type metadata accessor for PlainHTTP();
      v38 = swift_allocObject();
      *(v38 + 24) = 0;
      *(v38 + 16) = v37;
      v39 = v33[3];
      v40 = v33[9];
      v41 = sub_100006D8C(v33, v39);
      *(v0 + 96) = v39;
      *(v0 + 104) = v40;
      v42 = sub_10020A748((v0 + 72));
      (*(*(v39 - 8) + 16))(v42, v41, v39);
      *(v0 + 16) = 0x3172657375;
      *(v0 + 24) = 0xE500000000000000;
      *(v0 + 32) = v32;
      *(v0 + 48) = v38;
      *(v0 + 56) = v52;
      *(v0 + 64) = v34 & 1;
      *(v0 + 65) = v35 & 1;
      v43 = v52;
      v44 = swift_task_alloc();
      *(v0 + 352) = v44;
      *v44 = v0;
      v44[1] = sub_1002EAF64;

      return sub_1005CD74C();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1002EAEBC()
{
  sub_10000710C(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EAF64()
{
  v2 = *v1;
  *(v2 + 360) = v0;

  sub_1002FE258(v2 + 16);
  if (v0)
  {
    v3 = sub_1002EB158;
  }

  else
  {
    v3 = sub_1002EB080;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EB080()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  (*(v3 + 8))(v1, v2);
  sub_10000710C(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002EB158()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 280);
  v3 = *(v0 + 288);

  (*(v3 + 8))(v1, v2);
  sub_10000710C(v0 + 112);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002EB25C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0C48;
  *(v21 + 24) = v20;
  v52 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v53 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v50 = v29;
    [v26 auditToken];
    v46 = v58;
    v48 = v57;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v46 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v51[80] + 49) & ~v51[80];
  v31 = v30 + v14;
  v51 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = v18;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "OAuth invalidate";
  *(v35 + 40) = 16;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v50;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v46;
  *v36 = v48;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v52;
  *v39 = &unk_1006A0C50;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0C58, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_1002EB784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a4;
  v8[10] = a5;
  v8[7] = a2;
  v8[8] = a3;
  v9 = type metadata accessor for Logger();
  v8[13] = v9;
  v8[14] = *(v9 - 8);
  v8[15] = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  v8[16] = v10;
  v8[17] = *(v10 - 8);
  v8[18] = swift_task_alloc();
  v11 = type metadata accessor for OAuthInvalidateRequest();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[24] = v12;
  *v12 = v8;
  v12[1] = sub_1002EB960;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002EB960()
{

  return _swift_task_switch(sub_1002EBA5C, 0, 0);
}

uint64_t sub_1002EBA5C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *v4 = v0;
  v4[1] = sub_1002EBB24;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002EBB24(char a1)
{
  *(*v1 + 224) = a1;

  return _swift_task_switch(sub_1002EBC24, 0, 0);
}

uint64_t sub_1002EBC24()
{
  if (*(v0 + 224) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 208) = v1;
    *v1 = v0;
    v1[1] = sub_1002EBE10;
    v2 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 56);
    v4 = *(v0 + 64);

    return sub_100323C0C(v5, v4, v2, v3);
  }

  else
  {
    v7 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for MarketplaceKitError.featureUnavailable(_:), v7);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1002EBE10()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1002EC3EC;
  }

  else
  {
    v2 = sub_1002EBF24;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EBF24()
{
  v51 = v0;
  v1 = v0[27];
  sub_100302E04(&qword_10077FA90, &type metadata accessor for OAuthInvalidateRequest);
  sub_100302E04(&qword_10077FA98, &type metadata accessor for OAuthInvalidateRequest);
  decodeXPCValues<A>(from:)();
  v2 = v1;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  if (v2)
  {
    sub_10000710C((v0 + 2));

    v6 = v0[1];
  }

  else
  {
    v7 = v0[19];
    v8 = v0[20];
    (*(v0[17] + 104))(v0[18], enum case for LogKey.Prefix.madctl(_:), v0[16]);
    v9 = objc_allocWithZone(type metadata accessor for LogKey());
    v10 = LogKey.init(prefix:)();
    static Logger.xpc.getter();
    v11 = *(v8 + 16);
    v11(v4, v3, v7);
    v11(v5, v3, v7);
    v12 = v10;
    v13 = Logger.logObject.getter();
    LOBYTE(v10) = static os_log_type_t.default.getter();

    v47 = v10;
    v14 = os_log_type_enabled(v13, v10);
    v16 = v0[21];
    v15 = v0[22];
    v18 = v0[19];
    v17 = v0[20];
    v19 = v0[14];
    v20 = v0[15];
    v21 = v0[13];
    v48 = v12;
    if (v14)
    {
      v46 = v0[15];
      v22 = swift_slowAlloc();
      v44 = v19;
      v23 = swift_slowAlloc();
      v50[0] = swift_slowAlloc();
      *v22 = 138412802;
      *(v22 + 4) = v12;
      *v23 = v12;
      *(v22 + 12) = 2080;
      v24 = v12;
      v45 = v21;
      v25 = OAuthInvalidateRequest.accountID.getter();
      v27 = v26;
      log = v13;
      v28 = *(v17 + 8);
      v28(v15, v18);
      v29 = sub_1002346CC(v25, v27, v50);

      *(v22 + 14) = v29;
      *(v22 + 22) = 2082;
      v30 = OAuthInvalidateRequest.server.getter();
      v32 = v31;
      v49 = v28;
      v28(v16, v18);
      v33 = sub_1002346CC(v30, v32, v50);

      *(v22 + 24) = v33;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@] Requesting OAuth invalidation for accountID: %s server: %{public}s", v22, 0x20u);
      sub_1000032A8(v23, &qword_10077F920);

      swift_arrayDestroy();

      (*(v44 + 8))(v46, v45);
    }

    else
    {

      v34 = *(v17 + 8);
      v34(v16, v18);
      v49 = v34;
      v34(v15, v18);
      (*(v19 + 8))(v20, v21);
    }

    v35 = v0[23];
    v36 = v0[19];
    v37 = OAuthInvalidateRequest.accountID.getter();
    v39 = v38;
    v40 = OAuthInvalidateRequest.server.getter();
    sub_10048B144(v37, v39, v40, v41);

    v49(v35, v36);
    sub_10000710C((v0 + 2));

    v6 = v0[1];
  }

  return v6();
}

uint64_t sub_1002EC3EC()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EC4CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a3;
  v56 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v44 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v51 = *(v13 - 8);
  v14 = *(v51 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v16 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v44 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1006A0C28;
  *(v21 + 24) = v20;
  v52 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v4;
  v53 = v20;

  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v59;
    if (!v28)
    {
      v29 = 0;
    }

    v50 = v29;
    [v26 auditToken];
    v46 = v58;
    v48 = v57;
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v46 = 0u;
  }

  v60 = v26 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, v16, &qword_10077F8D0);
  v30 = (v51[80] + 49) & ~v51[80];
  v31 = v30 + v14;
  v51 = v12;
  v32 = (v30 + v14) & 0xFFFFFFFFFFFFFFF8;
  v45 = v10;
  v47 = v26;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = v18;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "App Launch Request";
  *(v35 + 40) = 18;
  *(v35 + 48) = 2;
  sub_10020A668(v16, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v50;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v46;
  *v36 = v48;
  *(v36 + 16) = v37;
  *(v36 + 32) = v60;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v52;
  *v39 = &unk_1006A0C30;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v56;
  *v41 = v55;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0C38, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v49, &qword_10077F8D0);
}

uint64_t sub_1002EC9F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v9 = type metadata accessor for Logger();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[18] = v10;
  *v10 = v8;
  v10[1] = sub_1002ECB00;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002ECB00()
{

  return _swift_task_switch(sub_1002ECBFC, 0, 0);
}

uint64_t sub_1002ECBFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[19] = v4;
  *v4 = v0;
  v4[1] = sub_1002ECCC4;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002ECCC4(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1002ECDC4, 0, 0);
}

uint64_t sub_1002ECDC4()
{
  if (*(v0 + 216) == 1)
  {
    v1 = sub_1001F6740(&off_1007581B0);
    *(v0 + 160) = v1;
    swift_arrayDestroy();
    v2 = swift_task_alloc();
    *(v0 + 168) = v2;
    *v2 = v0;
    v2[1] = sub_1002ECF98;
    v3 = *(v0 + 88);
    v4 = *(v0 + 96);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);

    return sub_100322914(v1, 0, v5, v6, v3, v4);
  }

  else
  {
    v8 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for MarketplaceKitError.featureUnavailable(_:), v8);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1002ECF98(char a1)
{
  v4 = *v2;
  *(*v2 + 176) = v1;

  if (v1)
  {
    v5 = sub_1002ED480;
  }

  else
  {

    *(v4 + 217) = a1 & 1;
    v5 = sub_1002ED0CC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002ED0CC()
{
  v22 = v0;
  if (*(v0 + 217) != 1)
  {
LABEL_15:
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    goto LABEL_16;
  }

  v1 = *(v0 + 176);
  decodeXPCValues<A>(from:)();
  if (!v1)
  {
    v3 = *(v0 + 56);
    v2 = *(v0 + 64);
    *(v0 + 184) = v2;
    sub_1006258D8();
    if (qword_10077E5A0 != -1)
    {
      swift_once();
    }

    sub_1002710CC(*(v0 + 120), qword_1007B88E8);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136446210;

      *(v6 + 4) = sub_1002346CC(v3, v2, &v21);
      _os_log_impl(&_mh_execute_header, v4, v5, "Activity associated with %{public}s", v6, 0xCu);
      sub_10000710C(v7);
    }

    else
    {
    }

    v8 = audit_token_t.signingIdentifier.getter(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));
    *(v0 + 192) = v9;
    if (v9)
    {
      v10 = v8;
      v11 = v9;
      v12 = swift_task_alloc();
      *(v0 + 200) = v12;
      *v12 = v0;
      v12[1] = sub_1002ED4F4;

      return sub_10036FECC(v3, v2, v10, v11);
    }

    static Logger.xpc.getter();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to launch app, no signing identifier", v16, 2u);
    }

    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v19 = *(v0 + 120);

    (*(v18 + 8))(v17, v19);
    goto LABEL_15;
  }

LABEL_16:
  sub_10000710C(v0 + 16);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1002ED480()
{

  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ED4F4()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1002ED6B4;
  }

  else
  {
    v2 = sub_1002ED644;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002ED644()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ED6B4()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002ED754(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v54 = *(v13 - 8);
  v14 = *(v54 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = enum case for LogKey.Prefix.adp(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A0C00;
  *(v22 + 24) = v21;
  v55 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v57 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v63;
    if (!v29)
    {
      v30 = 0;
    }

    v53 = v30;
    [v27 auditToken];
    v49 = v62;
    v50 = v61;
  }

  else
  {
    v53 = 0;
    v50 = 0u;
    v49 = 0u;
  }

  v64 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v51 = v27;
  v31 = v56;
  sub_100005934(v17, v56, &qword_10077F8D0);
  v32 = v54[80];
  v52 = v12;
  v33 = (v32 + 49) & ~v32;
  v34 = v33 + v14;
  v35 = (v33 + v14) & 0xFFFFFFFFFFFFFFF8;
  v54 = v17;
  v48 = v10;
  v36 = (v35 + 75) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = "ADP Installation Request";
  *(v38 + 40) = 24;
  *(v38 + 48) = 2;
  sub_10020A668(v31, v38 + v33, &qword_10077F8D0);
  *(v38 + v34) = 1;
  *(v38 + v35 + 8) = v53;
  v39 = v38 + ((v35 + 19) & 0xFFFFFFFFFFFFFFF8);
  v40 = v49;
  *v39 = v50;
  *(v39 + 16) = v40;
  *(v39 + 32) = v64;
  v41 = v38 + ((v35 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v41 = &_swiftEmptySetSingleton;
  *(v41 + 8) = 1;
  v42 = (v38 + v36);
  v43 = v55;
  *v42 = &unk_1006A0C08;
  v42[1] = v43;
  v44 = (v38 + v37);
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A0C10, v38);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v54, &qword_10077F8D0);
}

uint64_t sub_1002EDCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[41] = a7;
  v8[42] = a8;
  v8[39] = a5;
  v8[40] = a6;
  v8[37] = a3;
  v8[38] = a4;
  v8[36] = a2;
  sub_1001F0C48(&unk_1007809F0);
  v8[43] = swift_task_alloc();
  v8[44] = swift_task_alloc();
  type metadata accessor for AppInstallRequestType();
  v8[45] = swift_task_alloc();
  type metadata accessor for UUID();
  v8[46] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[47] = v9;
  v8[48] = *(v9 - 8);
  v8[49] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[50] = v10;
  v8[51] = *(v10 - 8);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v11 = type metadata accessor for AppInstallRequest();
  v8[54] = v11;
  v8[55] = *(v11 - 8);
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v8[58] = swift_task_alloc();
  v8[59] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[60] = v12;
  *v12 = v8;
  v12[1] = sub_1002EDF58;

  return sub_100324268((v8 + 14));
}

uint64_t sub_1002EDF58()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1002EF2E4;
  }

  else
  {
    v2 = sub_1002EE06C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002EE06C()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[62] = v2;
  sub_100006D8C(v0 + 14, v2);
  v3 = *(v2 - 8);
  v0[63] = v3;
  v4 = swift_task_alloc();
  v0[64] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_1002EE1B4;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002EE1B4(char a1)
{
  *(*v1 + 633) = a1;

  return _swift_task_switch(sub_1002EE2B4, 0, 0);
}

uint64_t sub_1002EE2B4()
{
  v86 = v0;
  v2 = *(v0 + 504);
  v1 = *(v0 + 512);
  v3 = *(v0 + 496);
  if (*(v0 + 633) == 1)
  {
    v4 = *(v0 + 488);
    (*(v2 + 8))(*(v0 + 512), *(v0 + 496));

    sub_100302E04(&qword_10077FA70, &type metadata accessor for AppInstallRequest);
    sub_100302E04(&qword_10077FA78, &type metadata accessor for AppInstallRequest);
    decodeXPCValues<A>(from:)();
    if (!v4)
    {
      v5 = *(v0 + 464);
      v6 = *(v0 + 472);
      v7 = *(v0 + 456);
      v8 = *(v0 + 432);
      v9 = *(v0 + 440);
      static Logger.install.getter();
      v10 = *(v9 + 16);
      v10(v5, v6, v8);
      v10(v7, v6, v8);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();
      v13 = os_log_type_enabled(v11, v12);
      v14 = *(v0 + 464);
      v15 = *(v0 + 432);
      v16 = *(v0 + 440);
      v17 = *(v0 + 424);
      v18 = *(v0 + 408);
      v82 = *(v0 + 456);
      v83 = *(v0 + 400);
      if (v13)
      {
        v71 = *(v0 + 392);
        v74 = *(v0 + 384);
        v72 = *(v0 + 376);
        v69 = *(v0 + 304);
        log = *(v0 + 312);
        v67 = *(v0 + 288);
        v68 = *(v0 + 296);
        v75 = v12;
        v19 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v85[0] = swift_slowAlloc();
        *v19 = 138413058;
        v20 = sub_100625FA0();
        *(v19 + 4) = v20;
        *v73 = v20;
        *(v19 + 12) = 2080;
        v21 = AppInstallRequest.isMarketplaceInstall.getter();
        v77 = v17;
        v79 = v10;
        if (v21)
        {
          v22 = 0x6C7074656B72614DLL;
        }

        else
        {
          v22 = 0x65766974614ELL;
        }

        if (v21)
        {
          v23 = 0xEB00000000656361;
        }

        else
        {
          v23 = 0xE600000000000000;
        }

        v24 = *(v16 + 8);
        v24(v14, v15);
        v25 = sub_1002346CC(v22, v23, v85);

        *(v19 + 14) = v25;
        *(v19 + 22) = 2082;
        *(v0 + 272) = audit_token_t.signingIdentifier.getter(v67, v68, v69, log);
        *(v0 + 280) = v26;
        sub_1001F0C48(&unk_10077FA80);
        v27 = String.init<A>(describing:)();
        v29 = sub_1002346CC(v27, v28, v85);

        *(v19 + 24) = v29;
        *(v19 + 32) = 2082;
        v10 = v79;
        AppInstallRequest.adp.getter();
        sub_100302E04(&qword_10077EE18, &type metadata accessor for URL);
        v30 = dispatch thunk of CustomStringConvertible.description.getter();
        v32 = v31;
        (*(v74 + 8))(v71, v72);
        v24(v82, v15);
        v33 = sub_1002346CC(v30, v32, v85);

        *(v19 + 34) = v33;
        _os_log_impl(&_mh_execute_header, v11, v75, "[%@] Handling ADP installation request of type: %s from: %{public}s. ADP: %{public}s", v19, 0x2Au);
        sub_1000032A8(v73, &qword_10077F920);

        swift_arrayDestroy();

        v34 = v24;

        v35 = v83;
        v84 = *(v18 + 8);
        v84(v77, v35);
      }

      else
      {

        v34 = *(v16 + 8);
        v34(v82, v15);
        v34(v14, v15);
        v40 = v83;
        v84 = *(v18 + 8);
        v84(v17, v40);
      }

      *(v0 + 528) = v34;
      v41 = *(v0 + 472);
      v42 = *(v0 + 448);
      v43 = *(v0 + 432);
      static Logger.install.getter();
      v10(v42, v41, v43);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.debug.getter();
      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 448);
      v48 = *(v0 + 432);
      v49 = *(v0 + 416);
      v50 = *(v0 + 400);
      if (v46)
      {
        v81 = v34;
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v85[0] = v78;
        *v51 = 138412546;
        v53 = sub_100625FA0();
        *(v51 + 4) = v53;
        *v52 = v53;
        *(v51 + 12) = 2080;
        v54 = AppInstallRequest.oAuthToken.getter();
        v80 = v49;
        if (v55)
        {
          v56 = v54;
        }

        else
        {
          v56 = 0x6E656B6F54206F4ELL;
        }

        v76 = v50;
        if (v55)
        {
          v57 = v55;
        }

        else
        {
          v57 = 0xE800000000000000;
        }

        v81(v47, v48);
        v58 = sub_1002346CC(v56, v57, v85);

        *(v51 + 14) = v58;
        _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Received OAuthToken: %s", v51, 0x16u);
        sub_1000032A8(v52, &qword_10077F920);

        sub_10000710C(v78);

        v59 = v80;
        v60 = v76;
      }

      else
      {

        v34(v47, v48);
        v59 = v49;
        v60 = v50;
      }

      v84(v59, v60);
      v61 = sub_100625FA0();
      *(v0 + 536) = v61;
      v62 = swift_task_alloc();
      *(v0 + 544) = v62;
      *v62 = v0;
      v62[1] = sub_1002EEB64;
      v63 = *(v0 + 304);
      v64 = *(v0 + 312);
      v65 = *(v0 + 288);
      v66 = *(v0 + 296);

      return sub_10042BEB0(v0 + 152, v65, v66, v63, v64, v61);
    }
  }

  else
  {
    v36 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, enum case for MarketplaceKitError.featureUnavailable(_:), v36);
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
  }

  sub_10000710C(v0 + 112);

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_1002EEB64()
{
  v2 = *v1;
  *(v2 + 552) = v0;

  if (v0)
  {
    v3 = sub_1002EF3D4;
  }

  else
  {
    *(v2 + 560) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    v3 = sub_1002EECA4;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EECA4()
{
  v31 = *(v0 + 392);
  v48 = *(v0 + 368);
  v45 = *(v0 + 360);
  v50 = *(v0 + 352);
  v30 = *(v0 + 344);
  v1 = *(v0 + 312);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v43 = v2;
  v44 = v1;
  v4 = *(v0 + 288);
  v41 = v4;
  v42 = v3;
  v5 = *(v0 + 320) + *(v0 + 560);
  v38 = type metadata accessor for ADPInstallConfiguration(0);
  AppInstallRequest.id.getter();
  v46 = sub_100625FA0();
  sub_10020A980(v0 + 152, v0 + 192);
  AppInstallRequest.type.getter();
  v6 = AppInstallRequest.oAuthToken.getter();
  v39 = v7;
  v40 = v6;
  v8 = AppInstallRequest.installVerificationToken.getter();
  v36 = v9;
  v37 = v8;
  v10 = AppInstallRequest.accountID.getter();
  v34 = v11;
  v35 = v10;
  v12 = audit_token_t.signingIdentifier.getter(v4, v3, v2, v1);
  v32 = v13;
  v33 = v12;
  AppInstallRequest.adp.getter();
  AppInstallRequest.referrer.getter();
  sub_10020A980(v0 + 112, v0 + 232);
  AppInstallRequest.appShareURL.getter();
  v14 = *(v5 + 24);
  v29 = *(v5 + 72);
  v15 = sub_100006D8C(v5, v14);
  v17 = *(v0 + 216);
  v16 = *(v0 + 224);
  v18 = sub_100231ED8(v0 + 192, v17);
  v19 = *(v17 - 8);
  v20 = swift_task_alloc();
  (*(v19 + 16))(v20, v18, v17);
  v21 = *(v14 - 8);
  v22 = swift_task_alloc();
  (*(v21 + 16))(v22, v15, v14);
  *(v0 + 568) = sub_10038B61C(v48, v46, v20, v45, v40, v39, v37, v36, v35, v34, v33, v32, v31, v50, v0 + 232, 0, 0xF000000000000000, 2u, 1u, 0, 1u, 0, 1u, v30, 0, v22, v38, v17, v14, v16, v29);

  sub_10000710C(v0 + 192);

  *(v0 + 600) = v41;
  *(v0 + 608) = v42;
  *(v0 + 616) = v43;
  *(v0 + 624) = v44;
  *(v0 + 632) = 0;
  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 576) = sub_100400560(v23, v0 + 600);
  v24 = *(v5 + 24);
  v51 = *(v5 + 56);
  v52 = *(v5 + 40);
  v47 = *(v5 + 88);
  v49 = *(v5 + 72);
  v25 = sub_100006D8C(v5, v24);
  *(v0 + 40) = v24;
  *(v0 + 48) = v52;
  *(v0 + 64) = v51;
  *(v0 + 80) = v49;
  *(v0 + 96) = v47;
  v26 = sub_10020A748((v0 + 16));
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  v27 = swift_task_alloc();
  *(v0 + 584) = v27;
  *v27 = v0;
  v27[1] = sub_1002EF090;

  return sub_1003FF6B0(v0 + 16);
}

uint64_t sub_1002EF090()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  if (v0)
  {
    v3 = sub_1002EF4E8;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002EF1AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002EF1AC()
{
  v1 = v0[59];
  v3 = v0[54];
  v2 = v0[55];

  sub_10000710C((v0 + 19));
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 14));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002EF2E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EF3D4()
{
  (*(v0 + 528))(*(v0 + 472), *(v0 + 432));
  sub_10000710C(v0 + 112);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002EF4E8()
{
  v1 = v0[59];
  v2 = v0[54];
  v3 = v0[55];

  sub_10000710C((v0 + 19));
  (*(v3 + 8))(v1, v2);
  sub_10000710C((v0 + 2));
  sub_10000710C((v0 + 14));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002EF658(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a3;
  v54 = a4;
  ObjectType = swift_getObjectType();
  v6 = sub_1001F0C48(&unk_100780380);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v44 - v10;
  v12 = sub_1001F0C48(&qword_10077F8D0);
  v50 = *(v12 - 8);
  v13 = *(v50 + 8);
  v14 = __chkstk_darwin(v12 - 8);
  v15 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v44 - v16;
  v18 = enum case for LogKey.Prefix.adp(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = swift_allocObject();
  *(v21 + 16) = a1;
  *(v21 + 24) = a2;
  v51 = v21;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v11, 1, 1, v22);
  v23 = objc_opt_self();
  sub_10020ABFC(a1, a2);
  v24 = [v23 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v57;
    if (!v27)
    {
      v28 = 0;
    }

    v49 = v28;
    [v25 auditToken];
    v44 = v56;
    v47 = v55;
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v44 = 0u;
  }

  v58 = v25 == 0;
  sub_100005934(v11, v9, &unk_100780380);
  sub_100005934(v17, v15, &qword_10077F8D0);
  v29 = v50[80];
  v45 = v9;
  v46 = v25;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v13;
  v32 = (v30 + v13) & 0xFFFFFFFFFFFFFFF8;
  v48 = v11;
  v50 = v17;
  v33 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v34 = (v33 + 23) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  *(v35 + 32) = "Check Device Capability for ADP Installation";
  *(v35 + 40) = 44;
  *(v35 + 48) = 2;
  sub_10020A668(v15, v35 + v30, &qword_10077F8D0);
  *(v35 + v31) = 1;
  *(v35 + v32 + 8) = v49;
  v36 = v35 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v37 = v44;
  *v36 = v47;
  *(v36 + 16) = v37;
  *(v36 + 32) = v58;
  v38 = v35 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v38 = &_swiftEmptySetSingleton;
  *(v38 + 8) = 1;
  v39 = (v35 + v33);
  v40 = v51;
  *v39 = &unk_1006A0BE8;
  v39[1] = v40;
  v41 = (v35 + v34);
  v42 = v54;
  *v41 = v53;
  v41[1] = v42;
  *(v35 + ((v34 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v45, &unk_1006A0BF0, v35);

  swift_unknownObjectRelease();

  sub_1000032A8(v48, &unk_100780380);
  return sub_1000032A8(v50, &qword_10077F8D0);
}

uint64_t sub_1002EFB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[7] = a1;
  v9 = type metadata accessor for InstallRequirements();
  v8[10] = v9;
  v8[11] = *(v9 - 8);
  v8[12] = swift_task_alloc();

  return _swift_task_switch(sub_1002EFC30, 0, 0);
}

uint64_t sub_1002EFC30()
{
  sub_100302E04(&qword_10077FA60, &type metadata accessor for InstallRequirements);
  sub_100302E04(&qword_10077FA68, &type metadata accessor for InstallRequirements);
  decodeXPCValues<A>(from:)();
  v1 = InstallRequirements.minimumSystemVersion.getter();
  if (!v2)
  {
    v4 = InstallRequirements.requiredDeviceCapabilities.getter();
    if (!v4)
    {
      v3 = 1;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_10051BCFC(v1, v2, (v0 + 16));
  v3 = sub_1005AE2EC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_100222DA4(v0 + 16);
  v4 = InstallRequirements.requiredDeviceCapabilities.getter();
  if (v4)
  {
    if ((v3 & 1) == 0)
    {
      v3 = 0;
LABEL_7:

      goto LABEL_8;
    }

LABEL_6:
    v3 = sub_1005AE6B4(v4);
    goto LABEL_7;
  }

LABEL_8:
  v5 = InstallRequirements.ageRatingRank.getter();
  v7 = v6 & v3;
  if (v6 & 1) == 0 && (v3)
  {
    v7 = sub_1005F5804() >= v5;
  }

  v8 = InstallRequirements.expectedInstallSize.getter();
  v10 = v9;
  v12 = *(v0 + 88);
  v11 = *(v0 + 96);
  v13 = *(v0 + 80);
  if (v10)
  {
    (*(v12 + 8))(v11, v13);
  }

  else if (v7)
  {
    v14 = *(v0 + 96);
    v15 = *(v0 + 80);
    v16 = v8;
    v17 = sub_1004FF1E8();
    (*(v12 + 8))(v14, v15);
    v7 = v17 >= 0 && v17 >= v16;
  }

  else
  {
    (*(v12 + 8))(v11, v13);
    v7 = 0;
  }

  **(v0 + 56) = v7 & 1;

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1002EFEA4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_100758D00);
  sub_1002FC188(&unk_100758D20);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v53 = v20;
  v20[4] = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Request update metadata";
  *(v36 + 40) = 23;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0B88;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0B98, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002F03AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a8;
  v8[27] = v16;
  v8[24] = a6;
  v8[25] = a7;
  v8[22] = a4;
  v8[23] = a5;
  v8[20] = a1;
  v8[21] = a3;
  v9 = type metadata accessor for MarketplaceUpdate();
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F9C0);
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FA38);
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();
  v8[40] = swift_task_alloc();
  v10 = type metadata accessor for OSEligibilityDomain();
  v8[41] = v10;
  v8[42] = *(v10 - 8);
  v8[43] = swift_task_alloc();
  updated = type metadata accessor for UpdateMetadataRequest();
  v8[44] = updated;
  v8[45] = *(updated - 8);
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[48] = v12;
  v8[49] = *(v12 - 8);
  v8[50] = swift_task_alloc();
  v8[51] = swift_task_alloc();
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v8[54] = swift_task_alloc();
  v8[55] = swift_task_alloc();
  v8[56] = swift_task_alloc();
  v8[57] = swift_task_alloc();
  v13 = type metadata accessor for LogKey.Prefix();
  v8[58] = v13;
  v8[59] = *(v13 - 8);
  v8[60] = swift_task_alloc();

  return _swift_task_switch(sub_1002F074C, 0, 0);
}

uint64_t sub_1002F074C()
{
  (*(v0[59] + 104))(v0[60], enum case for LogKey.Prefix.general(_:), v0[58]);
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v2 = LogKey.init(prefix:)();
  sub_10062611C();

  v3 = swift_task_alloc();
  v0[61] = v3;
  *v3 = v0;
  v3[1] = sub_1002F0874;

  return sub_100324268((v0 + 2));
}

uint64_t sub_1002F0874()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1002F3210;
  }

  else
  {
    v2 = sub_1002F09B4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F09B4()
{
  v2 = v0[5];
  v1 = v0[6];
  v0[63] = v2;
  sub_100006D8C(v0 + 2, v2);
  v3 = *(v2 - 8);
  v0[64] = v3;
  v4 = swift_task_alloc();
  v0[65] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[66] = v5;
  *v5 = v0;
  v5[1] = sub_1002F0B20;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002F0B20(char a1)
{
  *(*v1 + 738) = a1;

  return _swift_task_switch(sub_1002F0C4C, 0, 0);
}

uint64_t sub_1002F0C4C()
{
  v137 = v0;
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  if (*(v0 + 738) != 1)
  {
    v35 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for MarketplaceKitError.featureUnavailable(_:), v35);
    swift_willThrow();
    (*(v3 + 8))(v1, v2);

    goto LABEL_33;
  }

  v132 = v0 + 92;
  (*(v3 + 8))(v1, v2);

  static Logger.updates.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = sub_100625FA0();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Update metadata requested", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v134 = v0[62];
  v9 = v0[57];
  v10 = v0[48];
  v11 = v0[49];

  v12 = *(v11 + 8);
  v0[67] = v12;
  v0[68] = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  sub_100302E04(&qword_10077FA40, &type metadata accessor for UpdateMetadataRequest);
  sub_100302E04(&qword_10077FA48, &type metadata accessor for UpdateMetadataRequest);
  decodeXPCValues<A>(from:)();
  if (v134)
  {
    goto LABEL_33;
  }

  v130 = v12;
  v14 = v0[46];
  v13 = v0[47];
  v15 = v0[44];
  v16 = v0[45];
  static Logger.updates.getter();
  (*(v16 + 16))(v14, v13, v15);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  v19 = os_log_type_enabled(v17, v18);
  v20 = v0[56];
  v21 = v0[48];
  v23 = v0[45];
  v22 = v0[46];
  v129 = v0;
  v24 = v0[44];
  if (v19)
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v136[0] = v121;
    *v25 = 138412546;
    v27 = sub_100625FA0();
    *(v25 + 4) = v27;
    *v26 = v27;
    *(v25 + 12) = 2082;
    v125 = v20;
    updated = UpdateMetadataRequest.bundleID.getter();
    v123 = v21;
    v30 = v29;
    v31 = *(v23 + 8);
    v31(v22, v24);
    v32 = sub_1002346CC(updated, v30, v136);

    *(v25 + 14) = v32;
    _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Request is for %{public}s", v25, 0x16u);
    sub_1000032A8(v26, &qword_10077F920);

    sub_10000710C(v121);

    v33 = v125;
    v34 = v123;
  }

  else
  {

    v31 = *(v23 + 8);
    v31(v22, v24);
    v33 = v20;
    v34 = v21;
  }

  v130(v33, v34);
  v0 = v129;
  v129[69] = v31;
  v37 = UpdateMetadataRequest.bundleID.getter();
  v39 = v38;
  v40 = objc_allocWithZone(LSApplicationRecord);
  v41 = sub_10049E57C(v37, v39, 0);
  v129[70] = v41;
  v42 = v41;
  sub_10061A948((v129 + 7));
  if (!v129[10])
  {
    sub_1000032A8((v129 + 7), &unk_10077FA50);
    goto LABEL_14;
  }

  sub_1001F0C48(&qword_10077E970);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    static Logger.updates.getter();
    v54 = v42;
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v55, v56))
    {
      v127 = v31;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v136[0] = v59;
      *v57 = 138412546;
      v60 = sub_100625FA0();
      *(v57 + 4) = v60;
      *v58 = v60;
      *(v57 + 12) = 2082;
      sub_10061A948((v129 + 12));
      if (v129[15])
      {
        sub_100006D8C(v129 + 12, v129[15]);
        v61 = dispatch thunk of CustomStringConvertible.description.getter();
        v63 = v62;
        sub_10000710C((v129 + 12));
      }

      else
      {
        sub_1000032A8((v129 + 12), &unk_10077FA50);
        v63 = 0xE500000000000000;
        v61 = 0x3E6C696E3CLL;
      }

      v133 = v129[50];
      v100 = v129[48];
      v101 = sub_1002346CC(v61, v63, v136);

      *(v57 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v55, v56, "[%@] Ineligible distributor: %{public}s", v57, 0x16u);
      sub_1000032A8(v58, &qword_10077F920);

      sub_10000710C(v59);

      v130(v133, v100);
      v31 = v127;
    }

    else
    {
      v64 = v129[50];
      v65 = v129[48];

      v130(v64, v65);
    }

    v102 = v129[47];
    v103 = v129[44];
    v104 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v104 - 8) + 104))(v105, enum case for MarketplaceKitError.featureUnavailable(_:), v104);
    swift_willThrow();

    v31(v102, v103);
    goto LABEL_33;
  }

  v126 = v31;
  v43 = v129[42];
  v129[71] = v129[18];
  v44 = [v42 isManagedAppDistributor];
  v45 = (v43 + 104);
  v46 = (v43 + 8);
  v47 = v129[43];
  v48 = v129[41];
  v50 = v129[23];
  v49 = v129[24];
  v52 = v129[21];
  v51 = v129[22];
  if (v44)
  {
    *(v132 + 4) = v52;
    *(v132 + 12) = v51;
    *(v132 + 20) = v50;
    *(v132 + 28) = v49;
    *(v132 + 36) = 0;
    (*v45)(v47, enum case for OSEligibilityDomain.helium(_:), v48);
    v53 = v129 + 740;
  }

  else
  {
    v129[88] = v52;
    v129[89] = v51;
    v129[90] = v50;
    v129[91] = v49;
    *v132 = 0;
    (*v45)(v47, enum case for OSEligibilityDomain.potassium(_:), v48);
    v53 = (v129 + 88);
  }

  v66 = sub_10027B42C(v47, v53);
  (*v46)(v47, v48);
  if (v66)
  {
    v67 = [v42 iTunesMetadata];
    v68 = [v67 storeItemIdentifier];

    if (v68)
    {
      v69 = v129[40];
      v70 = v129[25];
      v71 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
      v129[72] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
      v72 = v70 + v71;
      v73 = [v42 iTunesMetadata];
      v74 = [v73 storeItemIdentifier];

      v129[19] = v74;
      v75 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v76;
      v129[73] = v75;
      v129[74] = v76;
      v78 = type metadata accessor for UpdateMetadata();
      v129[75] = v78;
      v79 = *(v78 - 8);
      v129[76] = v79;
      v80 = *(v79 + 56);
      v129[77] = v80;
      v129[78] = (v79 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
      v80(v69, 1, 1, v78);
      if (UpdateMetadataRequest.shouldCheckInWithServer.getter())
      {
        static Logger.updates.getter();
        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *v83 = 138412290;
          v85 = sub_100625FA0();
          *(v83 + 4) = v85;
          *v84 = v85;
          _os_log_impl(&_mh_execute_header, v81, v82, "[%@] Checking in with the server", v83, 0xCu);
          sub_1000032A8(v84, &qword_10077F920);
        }

        v86 = v129[55];
        v87 = v129[48];
        v124 = *(v129 + 23);
        v128 = *(v129 + 21);

        v130(v86, v87);
        v135 = *(v72 + 40);
        v131 = *(v72 + 56);
        v122 = *(v72 + 72);
        v89 = *(v72 + 88);
        v88 = *(v72 + 96);
        sub_100006D8C(v72, *(v72 + 24));
        *(v132 + 7) = v124;
        *(v132 + 5) = v128;
        *(v132 + 72) = 0;
        v90 = swift_task_alloc();
        v129[79] = v90;
        *v90 = v129;
        v90[1] = sub_1002F1D84;
        v142 = v89;
        v143 = v88;
        v141 = v122;
        v139 = v135;
        v140 = v131;

        JUMPOUT(0x1003C2028);
      }

      v117 = *(*sub_100006D8C(v72, *(v72 + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
      v129[84] = v117;
      v118 = swift_task_alloc();
      v129[85] = v118;
      *(v118 + 16) = v75;
      *(v118 + 24) = v77;

      v119 = swift_task_alloc();
      v129[86] = v119;
      *v119 = v129;
      v119[1] = sub_1002F2910;
      v120 = v129[35];

      return sub_10053019C(v120, sub_1002FD9E0, v118, v117);
    }

    static Logger.updates.getter();
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v108, v109))
    {
      v110 = swift_slowAlloc();
      v111 = swift_slowAlloc();
      *v110 = 138412290;
      v112 = sub_100625FA0();
      *(v110 + 4) = v112;
      *v111 = v112;
      _os_log_impl(&_mh_execute_header, v108, v109, "[%@] No item ID found", v110, 0xCu);
      sub_1000032A8(v111, &qword_10077F920);
    }

    v113 = v129[52];
    v97 = v129[47];
    v114 = v129[48];
    v99 = v129[44];

    v130(v113, v114);
  }

  else
  {

    static Logger.updates.getter();
    v91 = Logger.logObject.getter();
    v92 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      *v93 = 138412290;
      v95 = sub_100625FA0();
      *(v93 + 4) = v95;
      *v94 = v95;
      _os_log_impl(&_mh_execute_header, v91, v92, "[%@] Not eligible for updates", v93, 0xCu);
      sub_1000032A8(v94, &qword_10077F920);
    }

    v96 = v129[51];
    v97 = v129[47];
    v98 = v129[48];
    v99 = v129[44];

    v130(v96, v98);
  }

  v115 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  swift_allocError();
  (*(*(v115 - 8) + 104))(v116, enum case for MarketplaceKitError.featureUnavailable(_:), v115);
  swift_willThrow();

  v126(v97, v99);
LABEL_33:
  sub_10000710C((v0 + 2));

  v106 = v0[1];

  return v106();
}

uint64_t sub_1002F1D84()
{

  return _swift_task_switch(sub_1002F1EC8, 0, 0);
}

uint64_t sub_1002F1EC8()
{
  v1 = v0;
  v2 = v0[74];
  v3 = v1[73];
  v4 = (v1[25] + v1[72]);
  v5 = *(*sub_100006D8C(v4, v4[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
  v1[80] = v5;
  v6 = swift_task_alloc();
  v1[81] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;

  v7 = swift_task_alloc();
  v1[82] = v7;
  *v7 = v1;
  v7[1] = sub_1002F2014;
  v8 = v1[37];

  return sub_10053019C(v8, sub_100302F8C, v6, v5);
}

uint64_t sub_1002F2014()
{
  *(*v1 + 664) = v0;

  if (v0)
  {

    v2 = sub_1002F33C4;
  }

  else
  {

    v2 = sub_1002F21B0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F21B0()
{
  v50 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  sub_100005934(*(v0 + 296), v1, &qword_10077F9C0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 288);
    sub_1000032A8(*(v0 + 296), &qword_10077F9C0);

    sub_1000032A8(v4, &qword_10077F9C0);
  }

  else
  {
    v6 = *(v0 + 256);
    v5 = *(v0 + 264);
    sub_100301488(*(v0 + 288), v5, type metadata accessor for MarketplaceUpdate);
    static Logger.updates.getter();
    sub_10030173C(v5, v6, type metadata accessor for MarketplaceUpdate);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 536);
    v11 = *(v0 + 432);
    v12 = *(v0 + 384);
    v13 = *(v0 + 256);
    if (v9)
    {
      v48 = *(v0 + 536);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46 = v11;
      v16 = swift_slowAlloc();
      v49 = v16;
      *v14 = 138412546;
      v17 = sub_100625FA0();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2082;
      v18 = sub_10039E8B8();
      v20 = v19;
      sub_1003017A4(v13, type metadata accessor for MarketplaceUpdate);
      v21 = sub_1002346CC(v18, v20, &v49);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Remote update found %{public}s", v14, 0x16u);
      sub_1000032A8(v15, &qword_10077F920);

      sub_10000710C(v16);

      v48(v46, v12);
    }

    else
    {

      sub_1003017A4(v13, type metadata accessor for MarketplaceUpdate);
      v10(v11, v12);
    }

    v45 = *(v0 + 600);
    v47 = *(v0 + 616);
    v22 = *(v0 + 312);
    v44 = *(v0 + 320);
    v43 = *(v0 + 296);
    v23 = *(v0 + 264);
    UpdateMetadataRequest.bundleID.getter();

    UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)();
    sub_1003017A4(v23, type metadata accessor for MarketplaceUpdate);
    sub_1000032A8(v43, &qword_10077F9C0);
    sub_1000032A8(v44, &qword_10077FA38);
    v47(v22, 0, 1, v45);
    sub_10020A668(v22, v44, &qword_10077FA38);
  }

  if (!os_variant_has_internal_content())
  {
LABEL_12:
    v38 = *(v0 + 560);
    (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));

    goto LABEL_14;
  }

  v24 = *(v0 + 608);
  v25 = *(v0 + 600);
  v26 = *(v0 + 304);
  sub_100005934(*(v0 + 320), v26, &qword_10077FA38);
  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    sub_1000032A8(*(v0 + 304), &qword_10077FA38);
    *(v0 + 737) = 0;
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v27, v28, (v0 + 737));

    if (*(v0 + 737) && AppBooleanValue)
    {
      v30 = *(v0 + 616);
      v31 = *(v0 + 600);
      v32 = *(v0 + 560);
      v33 = *(v0 + 376);
      v34 = *(v0 + 352);
      v35 = *(v0 + 360);
      v37 = *(v0 + 312);
      v36 = *(v0 + 320);
      UpdateMetadataRequest.bundleID.getter();
      UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)();

      sub_1000032A8(v36, &qword_10077FA38);
      (*(v35 + 8))(v33, v34);
      v30(v37, 0, 1, v31);
      sub_10020A668(v37, v36, &qword_10077FA38);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v39 = *(v0 + 560);
  v40 = *(v0 + 304);
  (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));

  sub_1000032A8(v40, &qword_10077FA38);
LABEL_14:
  sub_10020A668(*(v0 + 320), *(v0 + 160), &qword_10077FA38);
  sub_10000710C(v0 + 16);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1002F2910()
{
  *(*v1 + 696) = v0;

  if (v0)
  {

    v2 = sub_1002F35C4;
  }

  else
  {

    v2 = sub_1002F2AB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F2AB0()
{
  v50 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  sub_100005934(*(v0 + 280), v1, &qword_10077F9C0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 272);
    sub_1000032A8(*(v0 + 280), &qword_10077F9C0);

    sub_1000032A8(v4, &qword_10077F9C0);
  }

  else
  {
    v6 = *(v0 + 240);
    v5 = *(v0 + 248);
    sub_100301488(*(v0 + 272), v5, type metadata accessor for MarketplaceUpdate);
    static Logger.updates.getter();
    sub_10030173C(v5, v6, type metadata accessor for MarketplaceUpdate);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 536);
    v11 = *(v0 + 424);
    v12 = *(v0 + 384);
    v13 = *(v0 + 240);
    if (v9)
    {
      v48 = *(v0 + 536);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v46 = v11;
      v16 = swift_slowAlloc();
      v49 = v16;
      *v14 = 138412546;
      v17 = sub_100625FA0();
      *(v14 + 4) = v17;
      *v15 = v17;
      *(v14 + 12) = 2082;
      v18 = sub_10039E8B8();
      v20 = v19;
      sub_1003017A4(v13, type metadata accessor for MarketplaceUpdate);
      v21 = sub_1002346CC(v18, v20, &v49);

      *(v14 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v7, v8, "[%@] Local update found %{public}s", v14, 0x16u);
      sub_1000032A8(v15, &qword_10077F920);

      sub_10000710C(v16);

      v48(v46, v12);
    }

    else
    {

      sub_1003017A4(v13, type metadata accessor for MarketplaceUpdate);
      v10(v11, v12);
    }

    v45 = *(v0 + 600);
    v47 = *(v0 + 616);
    v22 = *(v0 + 312);
    v44 = *(v0 + 320);
    v43 = *(v0 + 280);
    v23 = *(v0 + 248);
    UpdateMetadataRequest.bundleID.getter();

    UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)();
    sub_1003017A4(v23, type metadata accessor for MarketplaceUpdate);
    sub_1000032A8(v43, &qword_10077F9C0);
    sub_1000032A8(v44, &qword_10077FA38);
    v47(v22, 0, 1, v45);
    sub_10020A668(v22, v44, &qword_10077FA38);
  }

  if (!os_variant_has_internal_content())
  {
LABEL_12:
    v38 = *(v0 + 560);
    (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));

    goto LABEL_14;
  }

  v24 = *(v0 + 608);
  v25 = *(v0 + 600);
  v26 = *(v0 + 304);
  sub_100005934(*(v0 + 320), v26, &qword_10077FA38);
  if ((*(v24 + 48))(v26, 1, v25) == 1)
  {
    sub_1000032A8(*(v0 + 304), &qword_10077FA38);
    *(v0 + 737) = 0;
    v27 = String._bridgeToObjectiveC()();
    v28 = String._bridgeToObjectiveC()();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(v27, v28, (v0 + 737));

    if (*(v0 + 737) && AppBooleanValue)
    {
      v30 = *(v0 + 616);
      v31 = *(v0 + 600);
      v32 = *(v0 + 560);
      v33 = *(v0 + 376);
      v34 = *(v0 + 352);
      v35 = *(v0 + 360);
      v37 = *(v0 + 312);
      v36 = *(v0 + 320);
      UpdateMetadataRequest.bundleID.getter();
      UpdateMetadata.init(bundleID:bundleVersion:itemID:shortVersionString:)();

      sub_1000032A8(v36, &qword_10077FA38);
      (*(v35 + 8))(v33, v34);
      v30(v37, 0, 1, v31);
      sub_10020A668(v37, v36, &qword_10077FA38);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  v39 = *(v0 + 560);
  v40 = *(v0 + 304);
  (*(*(v0 + 360) + 8))(*(v0 + 376), *(v0 + 352));

  sub_1000032A8(v40, &qword_10077FA38);
LABEL_14:
  sub_10020A668(*(v0 + 320), *(v0 + 160), &qword_10077FA38);
  sub_10000710C(v0 + 16);

  v41 = *(v0 + 8);

  return v41();
}

uint64_t sub_1002F3210()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F33C4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 360);
  v4 = *(v0 + 320);

  sub_1000032A8(v4, &qword_10077FA38);
  (*(v3 + 8))(v1, v2);
  sub_10000710C(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002F35C4()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 376);
  v3 = *(v0 + 352);
  v4 = *(v0 + 320);

  sub_1000032A8(v4, &qword_10077FA38);
  v1(v2, v3);
  sub_10000710C(v0 + 16);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002F37C8@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *a1;
  v18 = sub_1001F0C48(&qword_10077F9E0);
  v19 = sub_100213FA0(&qword_10077F9E8, &qword_10077F9E0);
  LOWORD(v16) = 7;
  *(&v16 + 1) = a2;
  v17 = a3;
  sub_1001F0C48(&qword_10077F9F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v16, inited + 32);
  sub_1001F0C48(&qword_10077F9F8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10069E680;
  *(v10 + 32) = inited;

  v11 = sub_1005AEA0C(v10);
  swift_setDeallocating();
  sub_1000032A8(v10 + 32, &qword_10077FA00);
  v12 = sub_1003D3BE8(0, 0, v11, sub_1003D3B74, 0, v8);

  if (v12)
  {
    sub_1003A7ED0(v12, a4);
    if (!v4)
    {
      v13 = 0;
      goto LABEL_6;
    }
  }

  v13 = 1;
LABEL_6:
  v14 = type metadata accessor for MarketplaceUpdate();
  return (*(*(v14 - 8) + 56))(a4, v13, 1, v14);
}

uint64_t sub_1002F39F4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v58 = a3;
  v59 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v46 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v52 = *(v13 - 8);
  v14 = *(v52 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v54 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v46 - v16;
  v18 = enum case for LogKey.Prefix.update(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v56 = sub_1001F6740(&off_100758D40);
  sub_1002FC188(&unk_100758D60);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A0B48;
  *(v22 + 24) = v21;
  v53 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v55 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v62;
    if (!v29)
    {
      v30 = 0;
    }

    v51 = v30;
    [v27 auditToken];
    v46 = v61;
    v49 = v60;
  }

  else
  {
    v51 = 0;
    v49 = 0u;
    v46 = 0u;
  }

  v63 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v31 = v54;
  sub_100005934(v17, v54, &qword_10077F8D0);
  v32 = (v52[80] + 49) & ~v52[80];
  v33 = v32 + v14;
  v34 = (v32 + v14) & 0xFFFFFFFFFFFFFFF8;
  v48 = v10;
  v50 = v12;
  v52 = v17;
  v35 = (v34 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Request update";
  *(v37 + 40) = 14;
  *(v37 + 48) = 2;
  sub_10020A668(v31, v37 + v32, &qword_10077F8D0);
  *(v37 + v33) = 1;
  *(v37 + v34 + 8) = v51;
  v38 = v37 + ((v34 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v46;
  *v38 = v49;
  *(v38 + 16) = v39;
  *(v38 + 32) = v63;
  v40 = v37 + ((v34 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = v56;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v53;
  *v41 = &unk_1006A0B50;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v59;
  *v43 = v58;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A0B58, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_1002F3F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[31] = a7;
  v8[32] = a8;
  v8[29] = a5;
  v8[30] = a6;
  v8[27] = a3;
  v8[28] = a4;
  v8[26] = a2;
  sub_1001F0C48(&unk_1007809F0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v9 = type metadata accessor for URL();
  v8[35] = v9;
  v8[36] = *(v9 - 8);
  v8[37] = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  v8[38] = v10;
  v8[39] = *(v10 - 8);
  v8[40] = swift_task_alloc();
  v11 = type metadata accessor for LogKey.Prefix();
  v8[41] = v11;
  v8[42] = *(v11 - 8);
  v8[43] = swift_task_alloc();
  type metadata accessor for UUID();
  v8[44] = swift_task_alloc();
  v12 = type metadata accessor for MarketplaceUpdate();
  v8[45] = v12;
  v8[46] = *(v12 - 8);
  v8[47] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F9C0);
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v8[50] = v13;
  v8[51] = *(v13 - 8);
  v8[52] = swift_task_alloc();
  updated = type metadata accessor for UpdateMetadata();
  v8[53] = updated;
  v8[54] = *(updated - 8);
  v8[55] = swift_task_alloc();
  v15 = swift_task_alloc();
  v8[56] = v15;
  *v15 = v8;
  v15[1] = sub_1002F4324;

  return sub_100324268((v8 + 14));
}

uint64_t sub_1002F4324()
{
  *(*v1 + 456) = v0;

  if (v0)
  {
    v2 = sub_1002F5814;
  }

  else
  {
    v2 = sub_1002F4438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F4438()
{
  v2 = v0[17];
  v1 = v0[18];
  v0[58] = v2;
  sub_100006D8C(v0 + 14, v2);
  v3 = *(v2 - 8);
  v0[59] = v3;
  v4 = swift_task_alloc();
  v0[60] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[61] = v5;
  *v5 = v0;
  v5[1] = sub_1002F4580;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002F4580(char a1)
{
  *(*v1 + 609) = a1;

  return _swift_task_switch(sub_1002F4680, 0, 0);
}

uint64_t sub_1002F4680()
{
  v43 = v0;
  v2 = *(v0 + 472);
  v1 = *(v0 + 480);
  v3 = *(v0 + 464);
  if (*(v0 + 609) == 1)
  {
    v4 = *(v0 + 456);
    (*(v2 + 8))(*(v0 + 480), *(v0 + 464));

    sub_100302E04(&qword_10077F9C8, &type metadata accessor for UpdateMetadata);
    sub_100302E04(&unk_10077F9D0, &type metadata accessor for UpdateMetadata);
    decodeXPCValues<A>(from:)();
    if (!v4)
    {
      updated = UpdateMetadata.bundleID.getter();
      v42 = v5;
      v6._countAndFlagsBits = 58;
      v6._object = 0xE100000000000000;
      String.append(_:)(v6);
      v7._countAndFlagsBits = UpdateMetadata.itemID.getter();
      String.append(_:)(v7);

      v8._countAndFlagsBits = 58;
      v8._object = 0xE100000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = UpdateMetadata.shortVersionString.getter();
      String.append(_:)(v9);

      v10._countAndFlagsBits = 10272;
      v10._object = 0xE200000000000000;
      String.append(_:)(v10);
      v11._countAndFlagsBits = UpdateMetadata.bundleID.getter();
      String.append(_:)(v11);

      v12._countAndFlagsBits = 41;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v14 = updated;
      v13 = v42;
      sub_1006258D8();
      if (qword_10077E5A0 != -1)
      {
        swift_once();
      }

      sub_1002710CC(*(v0 + 400), qword_1007B88E8);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        updated = v18;
        *v17 = 136446210;

        *(v17 + 4) = sub_1002346CC(v14, v13, &updated);
        _os_log_impl(&_mh_execute_header, v15, v16, "Activity associated with %{public}s", v17, 0xCu);
        sub_10000710C(v18);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

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
        _os_log_impl(&_mh_execute_header, v23, v24, "[%@] Update requested", v25, 0xCu);
        sub_1000032A8(v26, &qword_10077F920);
      }

      v29 = *(v0 + 408);
      v28 = *(v0 + 416);
      v30 = *(v0 + 400);
      v31 = *(v0 + 240);

      v32 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
      *(v0 + 496) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
      v33 = (v31 + v32);
      (*(v29 + 8))(v28, v30);
      v34 = UpdateMetadata.itemID.getter();
      v36 = v35;
      *(v0 + 504) = v35;
      v37 = *(*sub_100006D8C(v33, v33[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_webDistributionUpdateDatabase);
      *(v0 + 512) = v37;
      v38 = swift_task_alloc();
      *(v0 + 520) = v38;
      *(v38 + 16) = v34;
      *(v38 + 24) = v36;

      v39 = swift_task_alloc();
      *(v0 + 528) = v39;
      *v39 = v0;
      v39[1] = sub_1002F4CE0;
      v40 = *(v0 + 392);

      return sub_1003B4498(v40, sub_1002FD9E0, v38, v37);
    }
  }

  else
  {
    v19 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v19 - 8) + 104))(v20, enum case for MarketplaceKitError.featureUnavailable(_:), v19);
    swift_willThrow();
    (*(v2 + 8))(v1, v3);
  }

  sub_10000710C(v0 + 112);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1002F4CE0()
{
  *(*v1 + 536) = v0;

  if (v0)
  {
    v2 = sub_1002F590C;
  }

  else
  {
    v2 = sub_1002F4E4C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F4E4C()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 360);
  v3 = *(v0 + 368);
  sub_100005934(*(v0 + 392), v1, &qword_10077F9C0);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 424);
    v7 = *(v0 + 392);
    sub_1000032A8(*(v0 + 384), &qword_10077F9C0);
    v8 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v8 - 8) + 104))(v9, enum case for MarketplaceKitError.featureUnavailable(_:), v8);
    swift_willThrow();
    v10 = v7;
LABEL_8:
    sub_1000032A8(v10, &qword_10077F9C0);
    (*(v5 + 8))(v4, v6);
    sub_10000710C(v0 + 112);

    v41 = *(v0 + 8);

    return v41();
  }

  v11 = *(v0 + 376);
  v12 = *(v0 + 360);
  sub_100301488(*(v0 + 384), v11, type metadata accessor for MarketplaceUpdate);
  v13 = *(v12 + 36);
  v14 = sub_1005D6710();
  if (!v15)
  {
    v5 = *(v0 + 432);
    v4 = *(v0 + 440);
    v6 = *(v0 + 424);
    v37 = *(v0 + 392);
    v38 = *(v0 + 376);
    v39 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:), v39);
    swift_willThrow();
    sub_1003017A4(v38, type metadata accessor for MarketplaceUpdate);
    v10 = v37;
    goto LABEL_8;
  }

  v16 = *(v0 + 376);
  v42 = *(v0 + 360);
  v54 = *(v0 + 352);
  v18 = *(v0 + 336);
  v17 = *(v0 + 344);
  v62 = *(v0 + 320);
  v19 = *(v0 + 312);
  v49 = *(v0 + 304);
  v51 = *(v0 + 328);
  v20 = *(v0 + 288);
  v60 = *(v0 + 296);
  v43 = *(v0 + 280);
  v21 = *(v0 + 240) + *(v0 + 496);
  v58 = *(v0 + 272);
  v45 = *(v0 + 264);
  v47 = v14;
  v46 = v15;
  v53 = type metadata accessor for ADPInstallConfiguration(0);
  v55 = *(v0 + 224);
  v56 = *(v0 + 208);
  UUID.init()();
  (*(v18 + 104))(v17, enum case for LogKey.Prefix.automaticUpdate(_:), v51);
  v22 = objc_allocWithZone(type metadata accessor for LogKey());
  v52 = LogKey.init(prefix:)();
  (*(v19 + 104))(v62, enum case for AppInstallRequestType.update(_:), v49);
  v23 = (v16 + *(v42 + 40));
  v50 = *v23;
  v44 = v23[1];
  v48 = *(v16 + 8);
  (*(v20 + 16))(v60, v11 + v13, v43);
  (*(v20 + 56))(v58, 1, 1, v43);
  sub_10020A980(v0 + 112, v0 + 152);
  sub_100005934(v16 + *(v42 + 24), v45, &unk_1007809F0);
  v24 = *(v21 + 24);
  v25 = *(v21 + 72);
  v26 = sub_100006D8C(v21, v24);
  *(v0 + 192) = v47;
  *(v0 + 200) = v46;
  v27 = *(v24 - 8);
  v28 = swift_task_alloc();
  (*(v27 + 16))(v28, v26, v24);
  v29 = sub_100231E84();

  *(v0 + 544) = sub_10038B61C(v54, v52, v0 + 192, v62, 0, 0, v50, v44, v48, v30, 0, 0, v60, v58, v0 + 152, 0, 0xF000000000000000, 2u, 1u, 0, 1u, 0, 1u, v45, 0, v28, v53, &type metadata for WebDistributor, v24, v29, v25);

  *(v0 + 576) = v56;
  *(v0 + 592) = v55;
  *(v0 + 608) = 0;
  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 552) = sub_100400560(v31, v0 + 576);
  v32 = *(v21 + 24);
  v61 = *(v21 + 56);
  v63 = *(v21 + 40);
  v57 = *(v21 + 88);
  v59 = *(v21 + 72);
  v33 = sub_100006D8C(v21, v32);
  *(v0 + 40) = v32;
  *(v0 + 48) = v63;
  *(v0 + 64) = v61;
  *(v0 + 80) = v59;
  *(v0 + 96) = v57;
  v34 = sub_10020A748((v0 + 16));
  (*(*(v32 - 8) + 16))(v34, v33, v32);
  v35 = swift_task_alloc();
  *(v0 + 560) = v35;
  *v35 = v0;
  v35[1] = sub_1002F5590;

  return sub_1003FF6B0(v0 + 16);
}

uint64_t sub_1002F5590()
{
  v2 = *v1;
  *(*v1 + 568) = v0;

  if (v0)
  {
    v3 = sub_1002F5A24;
  }

  else
  {
    sub_10000710C(v2 + 16);
    v3 = sub_1002F56AC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1002F56AC()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[53];
  v4 = v0[49];
  v5 = v0[47];

  sub_1003017A4(v5, type metadata accessor for MarketplaceUpdate);
  sub_1000032A8(v4, &qword_10077F9C0);
  (*(v1 + 8))(v2, v3);
  sub_10000710C((v0 + 14));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002F5814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F590C()
{
  (*(v0[54] + 8))(v0[55], v0[53]);
  sub_10000710C((v0 + 14));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1002F5A24()
{
  v2 = v0[54];
  v1 = v0[55];
  v3 = v0[53];
  v4 = v0[49];
  v5 = v0[47];

  sub_1003017A4(v5, type metadata accessor for MarketplaceUpdate);
  sub_1000032A8(v4, &qword_10077F9C0);
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 2));
  sub_10000710C((v0 + 14));

  v6 = v0[1];

  return v6();
}

uint64_t sub_1002F5BD0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a3;
  v60 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v47 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v54 = *(v13 - 8);
  v14 = *(v54 + 8);
  v15 = __chkstk_darwin(v13 - 8);
  v56 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = enum case for LogKey.Prefix.update(_:);
  v19 = type metadata accessor for LogKey.Prefix();
  v20 = *(v19 - 8);
  (*(v20 + 104))(v17, v18, v19);
  (*(v20 + 56))(v17, 0, 1, v19);
  v21 = swift_allocObject();
  v21[2] = v4;
  v21[3] = a1;
  v21[4] = a2;
  v22 = swift_allocObject();
  *(v22 + 16) = &unk_1006A0AE0;
  *(v22 + 24) = v21;
  v55 = v22;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  v24 = objc_opt_self();
  v25 = v4;
  v57 = v21;

  sub_10020ABFC(a1, a2);
  v26 = [v24 currentConnection];
  v27 = v26;
  if (v26)
  {
    v28 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v29 = swift_dynamicCast();
    v30 = v63;
    if (!v29)
    {
      v30 = 0;
    }

    v53 = v30;
    [v27 auditToken];
    v49 = v62;
    v50 = v61;
  }

  else
  {
    v53 = 0;
    v50 = 0u;
    v49 = 0u;
  }

  v64 = v27 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  v51 = v27;
  v31 = v56;
  sub_100005934(v17, v56, &qword_10077F8D0);
  v32 = v54[80];
  v52 = v12;
  v33 = (v32 + 49) & ~v32;
  v34 = v33 + v14;
  v35 = (v33 + v14) & 0xFFFFFFFFFFFFFFF8;
  v54 = v17;
  v48 = v10;
  v36 = (v35 + 75) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 23) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = "Poll for updates Request";
  *(v38 + 40) = 24;
  *(v38 + 48) = 2;
  sub_10020A668(v31, v38 + v33, &qword_10077F8D0);
  *(v38 + v34) = 1;
  *(v38 + v35 + 8) = v53;
  v39 = v38 + ((v35 + 19) & 0xFFFFFFFFFFFFFFF8);
  v40 = v49;
  *v39 = v50;
  *(v39 + 16) = v40;
  *(v39 + 32) = v64;
  v41 = v38 + ((v35 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v41 = &_swiftEmptySetSingleton;
  *(v41 + 8) = 1;
  v42 = (v38 + v36);
  v43 = v55;
  *v42 = &unk_1006A0AF0;
  v42[1] = v43;
  v44 = (v38 + v37);
  v45 = v60;
  *v44 = v59;
  v44[1] = v45;
  *(v38 + ((v37 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v48, &unk_1006A0B00, v38);

  swift_unknownObjectRelease();

  sub_1000032A8(v52, &unk_100780380);
  return sub_1000032A8(v54, &qword_10077F8D0);
}

uint64_t sub_1002F6140(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  v9 = type metadata accessor for PollForUpdatesRequest();
  v8[29] = v9;
  v8[30] = *(v9 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v10 = type metadata accessor for Logger();
  v8[33] = v10;
  v8[34] = *(v10 - 8);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return _swift_task_switch(sub_1002F62AC, 0, 0);
}

uint64_t sub_1002F62AC()
{
  *(v0 + 449) = 0;
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v1, v2, (v0 + 449));

  if (*(v0 + 449) && !AppBooleanValue)
  {
    static Logger.install.getter();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Not running automatic updates, setting is disabled", v8, 2u);
    }

    v9 = *(v0 + 288);
    v10 = *(v0 + 264);
    v11 = *(v0 + 272);

    (*(v11 + 8))(v9, v10);
    swift_getObjectType();
    v12._countAndFlagsBits = 0xD000000000000041;
    v12._object = 0x80000001006C5290;
    XPCClientProtocol.logMessage(_:)(v12);

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v4 = swift_task_alloc();
    *(v0 + 296) = v4;
    *v4 = v0;
    v4[1] = sub_1002F6544;

    return sub_100324268(v0 + 96);
  }
}

uint64_t sub_1002F6544()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_1002F7904;
  }

  else
  {
    v2 = sub_1002F6684;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F6684()
{
  v2 = v0[15];
  v1 = v0[16];
  v0[39] = v2;
  sub_100006D8C(v0 + 12, v2);
  v3 = *(v2 - 8);
  v0[40] = v3;
  v4 = swift_task_alloc();
  v0[41] = v4;
  (*(v3 + 16))();
  v5 = swift_task_alloc();
  v0[42] = v5;
  *v5 = v0;
  v5[1] = sub_1002F67F0;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002F67F0(char a1)
{
  *(*v1 + 450) = a1;

  return _swift_task_switch(sub_1002F691C, 0, 0);
}

uint64_t sub_1002F691C()
{
  if (*(v0 + 450) == 1)
  {
    (*(*(v0 + 320) + 8))(*(v0 + 328), *(v0 + 312));

    v1 = swift_task_alloc();
    *(v0 + 344) = v1;
    *v1 = v0;
    v1[1] = sub_1002F6B6C;
    v2 = *(v0 + 192);
    v3 = *(v0 + 200);
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);

    return sub_100323C0C(v5, v4, v2, v3);
  }

  else
  {
    v8 = *(v0 + 320);
    v7 = *(v0 + 328);
    v9 = *(v0 + 312);
    v10 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v10 - 8) + 104))(v11, enum case for MarketplaceKitError.featureUnavailable(_:), v10);
    swift_willThrow();
    (*(v8 + 8))(v7, v9);

    sub_10000710C(v0 + 96);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1002F6B6C()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1002F7338;
  }

  else
  {
    v2 = sub_1002F6CAC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F6CAC()
{
  v53 = v0;
  v1 = *(v0 + 352);
  sub_100302E04(&qword_10077F998, &type metadata accessor for PollForUpdatesRequest);
  sub_100302E04(&unk_10077F9A0, &type metadata accessor for PollForUpdatesRequest);
  decodeXPCValues<A>(from:)();
  if (!v1)
  {
    v14 = *(v0 + 248);
    v13 = *(v0 + 256);
    v15 = *(v0 + 232);
    v16 = *(v0 + 240);
    static Logger.install.getter();
    (*(v16 + 16))(v14, v13, v15);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    v19 = os_log_type_enabled(v17, v18);
    v20 = *(v0 + 272);
    v50 = *(v0 + 280);
    v21 = *(v0 + 264);
    v23 = *(v0 + 240);
    v22 = *(v0 + 248);
    v24 = *(v0 + 232);
    if (v19)
    {
      v25 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v52[0] = v47;
      *v25 = 138412546;
      v26 = sub_100625FA0();
      *(v25 + 4) = v26;
      *v45 = v26;
      *(v25 + 12) = 2082;
      v27 = PollForUpdatesRequest.domain.getter();
      if (v28)
      {
        v29 = v27;
      }

      else
      {
        v29 = 0x73707061206C6C61;
      }

      v48 = v21;
      if (v28)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0xE800000000000000;
      }

      v32 = *(v23 + 8);
      v31 = v23 + 8;
      v32(v22, v24);
      v33 = sub_1002346CC(v29, v30, v52);

      *(v25 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Handling updates poll request for: %{public}s", v25, 0x16u);
      sub_1000032A8(v45, &qword_10077F920);

      sub_10000710C(v47);

      (*(v20 + 8))(v50, v48);
    }

    else
    {

      v34 = *(v23 + 8);
      v31 = v23 + 8;
      v34(v22, v24);
      (*(v20 + 8))(v50, v21);
    }

    *(v0 + 360) = v31;
    v35 = *(v0 + 208);
    v49 = *(v0 + 192);
    v51 = *(v0 + 176);
    PollForUpdatesRequest.domain.getter();
    v36 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies;
    *(v0 + 368) = v37;
    *(v0 + 376) = v36;
    v38 = v35 + v36;
    *(v0 + 384) = swift_getObjectType();
    v39._countAndFlagsBits = 0xD00000000000002FLL;
    v39._object = 0x80000001006C51E0;
    XPCClientProtocol.logMessage(_:)(v39);
    v44 = *(v38 + 56);
    v46 = *(v38 + 40);
    v43 = *(v38 + 72);
    v40 = *(v38 + 88);
    v41 = *(v38 + 96);
    sub_100006D8C(v38, *(v38 + 24));
    PollForUpdatesRequest.shouldStartUpdates.getter();
    *(v0 + 416) = v51;
    *(v0 + 432) = v49;
    *(v0 + 448) = 0;
    v42 = swift_task_alloc();
    *(v0 + 392) = v42;
    *v42 = v0;
    v42[1] = sub_1002F73FC;
    v58 = v40;
    v59 = v41;
    v57 = v43;
    v56 = v44;
    v55 = v46;

    JUMPOUT(0x1003C2028);
  }

  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v3;
  swift_getErrorValue();
  v4 = *(*(v0 + 144) - 8);
  swift_task_alloc();
  (*(v4 + 16))();
  v5 = String.init<A>(describing:)();
  v7 = v6;

  *(inited + 72) = &type metadata for String;
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  sub_100528684(inited);
  swift_setDeallocating();
  sub_1000032A8(inited + 32, &unk_10077F9B0);
  v8 = objc_allocWithZone(NSError);
  v9 = String._bridgeToObjectiveC()();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v8 initWithDomain:v9 code:-1 userInfo:isa];

  swift_willThrow();

  sub_10000710C(v0 + 96);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1002F7338()
{
  sub_10000710C(v0 + 96);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F73FC()
{

  return _swift_task_switch(sub_1002F7540, 0, 0);
}

void sub_1002F7540()
{
  v1 = (v0[26] + v0[47]);
  v2._object = 0x80000001006C5210;
  v2._countAndFlagsBits = 0xD000000000000040;
  XPCClientProtocol.logMessage(_:)(v2);
  v0[50] = sub_100625FA0();
  sub_100006D8C(v1, v1[3]);
  v3 = swift_task_alloc();
  v0[51] = v3;
  *v3 = v0;
  v3[1] = sub_1002F76B8;

  JUMPOUT(0x10049EBDCLL);
}

uint64_t sub_1002F76B8()
{
  v1 = *(*v0 + 400);

  return _swift_task_switch(sub_1002F77F8, 0, 0);
}

uint64_t sub_1002F77F8()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4._object = 0x80000001006C5260;
  v4._countAndFlagsBits = 0xD000000000000025;
  XPCClientProtocol.logMessage(_:)(v4);
  (*(v3 + 8))(v1, v2);
  sub_10000710C((v0 + 12));

  v5 = v0[1];

  return v5();
}

uint64_t sub_1002F7904()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F79F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 208) = v14;
  *(v8 + 176) = v12;
  *(v8 + 192) = v13;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  v9 = swift_task_alloc();
  *(v8 + 216) = v9;
  *v9 = v8;
  v9[1] = sub_1002F7AB4;

  return sub_100324268(v8 + 104);
}

uint64_t sub_1002F7AB4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_1002F8554;
  }

  else
  {
    v2 = sub_1002F7BC8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1002F7BC8()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = sub_100006D8C(v0 + 13, v2);
  v0[11] = v2;
  v0[12] = v1;
  v4 = sub_10020A748(v0 + 8);
  (*(*(v2 - 8) + 16))(v4, v3, v2);
  sub_10000710C((v0 + 13));
  v5 = swift_task_alloc();
  v0[29] = v5;
  *v5 = v0;
  v5[1] = sub_1002F7CDC;

  return sub_100519B04(v4, v2, v1);
}

uint64_t sub_1002F7CDC(char a1)
{
  *(*v1 + 272) = a1;

  return _swift_task_switch(sub_1002F7DDC, 0, 0);
}

uint64_t sub_1002F7DDC()
{
  if (*(v0 + 272) == 1)
  {
    v1 = sub_1001F6740(&off_1007581B0);
    *(v0 + 240) = v1;
    swift_arrayDestroy();
    v2 = swift_task_alloc();
    *(v0 + 248) = v2;
    *v2 = v0;
    v2[1] = sub_1002F7FDC;
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);

    return sub_100322914(v1, 0, v5, v6, v3, v4);
  }

  else
  {
    v8 = *(v0 + 144);
    v9 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    v10 = swift_allocError();
    (*(*(v9 - 8) + 104))(v11, enum case for MarketplaceKitError.featureUnavailable(_:), v9);
    swift_willThrow();
    swift_errorRetain();
    v8(0, v10);

    sub_10000710C(v0 + 64);
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1002F7FDC(char a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_1002F82D4;
  }

  else
  {

    *(v4 + 273) = a1 & 1;
    v5 = sub_1002F8110;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F8110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 273) == 1)
  {
    if (qword_10077E578 == -1)
    {
      if ((*(v3 + 192) & 0x8000000000000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      a1 = swift_once();
      if ((*(v3 + 192) & 0x8000000000000000) == 0)
      {
LABEL_4:
        a2 = qword_1007B88D0;
        *(v3 + 264) = qword_1007B88D0;
        a1 = sub_1002F83DC;
        a3 = 0;

        return _swift_task_switch(a1, a2, a3);
      }
    }

    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  v4 = *(v3 + 144);
  v5 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v4(0, v5);

  sub_10000710C(v3 + 64);
  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_1002F82D4()
{

  v1 = *(v0 + 144);
  type metadata accessor for InternalError();
  sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
  v2 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  v1(0, v2);

  sub_10000710C(v0 + 64);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002F83DC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[19];
  v5 = *(v0[33] + 112);
  v0[6] = v0[18];
  v0[7] = v4;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_1002FABF4;
  v0[5] = &unk_10075D238;
  v6 = _Block_copy(v0 + 2);

  [v5 getRemoteContentForLayerContextWithId:v3 style:v1 tag:v2 reply:v6];
  _Block_release(v6);

  return _swift_task_switch(sub_1002F84F4, 0, 0);
}

uint64_t sub_1002F84F4()
{
  sub_10000710C(v0 + 64);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F8554()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for MarketplaceKitError();
  sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, enum case for MarketplaceKitError.networkError(_:), v2);
  v1(0, v3);

  v5 = *(v0 + 8);

  return v5();
}

void sub_1002F8728(uint64_t a1, uint64_t a2, uint64_t a3)
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
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1002F8798(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v8 = sub_1001F0C48(&unk_100780380);
  v9 = __chkstk_darwin(v8 - 8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v46 - v12;
  v14 = sub_1001F0C48(&qword_10077F8D0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14 - 8);
  __chkstk_darwin(v17);
  v19 = &v46 - v18;
  v20 = type metadata accessor for LogKey.Prefix();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = a1;
  v54 = v21;
  v21[4] = a2;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = objc_opt_self();
  v24 = v5;
  sub_10020ABFC(a1, a2);
  v25 = [v23 currentConnection];
  v26 = v25;
  if (v25)
  {
    v27 = [v25 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v28 = swift_dynamicCast();
    v29 = v60;
    if (!v28)
    {
      v29 = 0;
    }

    v53 = v29;
    [v26 auditToken];
    v48 = v59;
    v50 = v58;
  }

  else
  {
    v53 = 0;
    v50 = 0u;
    v48 = 0u;
  }

  v61 = v26 == 0;
  sub_100005934(v13, v11, &unk_100780380);
  sub_100005934(v19, &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v30 = *(v15 + 80);
  v49 = v11;
  v31 = (v30 + 49) & ~v30;
  v32 = v31 + v16;
  v33 = (v31 + v16) & 0xFFFFFFFFFFFFFFF8;
  v51 = v13;
  v52 = v19;
  v34 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = (v33 + 75) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 23) & 0xFFFFFFFFFFFFFFF8;
  v47 = v26;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *(v37 + 24) = 0;
  *(v37 + 32) = "Present age exception approve in-person sheet";
  *(v37 + 40) = 45;
  *(v37 + 48) = 2;
  sub_10020A668(v34, v37 + v31, &qword_10077F8D0);
  *(v37 + v32) = 1;
  *(v37 + v33 + 8) = v53;
  v38 = v37 + ((v33 + 19) & 0xFFFFFFFFFFFFFFF8);
  v39 = v48;
  *v38 = v50;
  *(v38 + 16) = v39;
  *(v38 + 32) = v61;
  v40 = v37 + ((v33 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v40 = &_swiftEmptySetSingleton;
  *(v40 + 8) = 1;
  v41 = (v37 + v35);
  v42 = v54;
  *v41 = &unk_1006A0AB8;
  v41[1] = v42;
  v43 = (v37 + v36);
  v44 = v57;
  *v43 = v56;
  v43[1] = v44;
  *(v37 + ((v36 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v49, &unk_1006A0AC0, v37);

  swift_unknownObjectRelease();

  sub_1000032A8(v51, &unk_100780380);
  return sub_1000032A8(v52, &qword_10077F8D0);
}

uint64_t sub_1002F8C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a8;
  v8[16] = v13;
  v8[13] = a6;
  v8[14] = a7;
  v8[11] = a4;
  v8[12] = a5;
  v8[9] = a2;
  v8[10] = a3;
  v8[8] = a1;
  v9 = type metadata accessor for Logger();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  v10 = swift_task_alloc();
  v8[20] = v10;
  *v10 = v8;
  v10[1] = sub_1002F8D9C;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002F8D9C()
{

  return _swift_task_switch(sub_1002F8E98, 0, 0);
}

uint64_t sub_1002F8E98()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1002F8F60;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002F8F60(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1002F9060, 0, 0);
}

uint64_t sub_1002F9060()
{
  v25 = v0;
  if (*(v0 + 216) == 1 && (v1 = audit_token_t.signingIdentifier.getter(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104)), (*(v0 + 176) = v2) != 0))
  {
    v3 = v1;
    v4 = v2;
    decodeXPCValues<A>(from:)();
    v9 = *(v0 + 56);
    static Logger.install.getter();

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 136);
    if (v12)
    {
      v23 = *(v0 + 152);
      v16 = v9;
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 134218242;
      *(v17 + 4) = v16;
      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_1002346CC(v3, v4, &v24);
      _os_log_impl(&_mh_execute_header, v10, v11, "Presenting age exception approve in-person sheet for item ID: %llu, distributor: %s.", v17, 0x16u);
      sub_10000710C(v18);

      v9 = v16;

      (*(v13 + 8))(v23, v15);
    }

    else
    {

      (*(v13 + 8))(v14, v15);
    }

    v19 = (*(v0 + 112) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    swift_getObjectType();
    v20._object = 0x80000001006C5130;
    v20._countAndFlagsBits = 0xD000000000000031;
    XPCClientProtocol.logMessage(_:)(v20);
    *(v0 + 184) = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);
    v21 = *(*sub_100006D8C(v19, v19[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 192) = v21;

    v22 = swift_task_alloc();
    *(v0 + 200) = v22;
    *v22 = v0;
    v22[1] = sub_1002F9428;

    return sub_100598810(v9, v3, v4, v21);
  }

  else
  {
    v5 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, enum case for MarketplaceKitError.featureUnavailable(_:), v5);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1002F9428(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_1002F962C;
  }

  else
  {
    *(v4 + 217) = a1 & 1;
    v5 = sub_1002F95A8;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002F95A8()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 64);
  sub_10000710C(v0 + 16);
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002F962C()
{
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002F96CC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a3;
  v57 = a4;
  ObjectType = swift_getObjectType();
  v7 = sub_1001F0C48(&unk_100780380);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = sub_1001F0C48(&qword_10077F8D0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13 - 8);
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  v19 = type metadata accessor for LogKey.Prefix();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v54 = sub_1001F6740(&off_100758D80);
  sub_1002FC188(&unk_100758DA0);
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v53 = v20;
  v20[4] = a2;
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = objc_opt_self();
  v23 = v4;
  sub_10020ABFC(a1, a2);
  v24 = [v22 currentConnection];
  v25 = v24;
  if (v24)
  {
    v26 = [v24 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v27 = swift_dynamicCast();
    v28 = v60;
    if (!v27)
    {
      v28 = 0;
    }

    v52 = v28;
    [v25 auditToken];
    v47 = v59;
    v48 = v58;
  }

  else
  {
    v52 = 0;
    v48 = 0u;
    v47 = 0u;
  }

  v61 = v25 == 0;
  sub_100005934(v12, v10, &unk_100780380);
  sub_100005934(v18, &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_10077F8D0);
  v29 = *(v14 + 80);
  v49 = v25;
  v50 = v12;
  v30 = (v29 + 49) & ~v29;
  v31 = v30 + v15;
  v32 = (v30 + v15) & 0xFFFFFFFFFFFFFFF8;
  v51 = v18;
  v46 = v10;
  v33 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = (v32 + 75) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 23) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  *(v36 + 32) = "Present age exception approve in-person sheet for distributor";
  *(v36 + 40) = 61;
  *(v36 + 48) = 2;
  sub_10020A668(v33, v36 + v30, &qword_10077F8D0);
  *(v36 + v31) = 1;
  *(v36 + v32 + 8) = v52;
  v37 = v36 + ((v32 + 19) & 0xFFFFFFFFFFFFFFF8);
  v38 = v47;
  *v37 = v48;
  *(v37 + 16) = v38;
  *(v37 + 32) = v61;
  v39 = v36 + ((v32 + 59) & 0xFFFFFFFFFFFFFFF8);
  v40 = v53;
  *v39 = v54;
  *(v39 + 8) = 1;
  v41 = (v36 + v34);
  *v41 = &unk_1006A0A60;
  v41[1] = v40;
  v42 = (v36 + v35);
  v43 = v57;
  *v42 = v56;
  v42[1] = v43;
  *(v36 + ((v35 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v46, &unk_1006A0A70, v36);

  swift_unknownObjectRelease();

  sub_1000032A8(v50, &unk_100780380);
  return sub_1000032A8(v51, &qword_10077F8D0);
}

uint64_t sub_1002F9BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v14;
  v8[7] = a1;
  v8[8] = a7;
  v9 = type metadata accessor for Logger();
  v8[11] = v9;
  v8[12] = *(v9 - 8);
  v8[13] = swift_task_alloc();
  v10 = type metadata accessor for PresentAgeExceptionApprovalSheetRequest();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[19] = v11;
  *v11 = v8;
  v11[1] = sub_1002F9D58;

  return sub_100324690((v8 + 2));
}

uint64_t sub_1002F9D58()
{

  return _swift_task_switch(sub_1002F9E54, 0, 0);
}

uint64_t sub_1002F9E54()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = sub_100006D8C(v0 + 2, v2);
  v4 = swift_task_alloc();
  v0[20] = v4;
  *v4 = v0;
  v4[1] = sub_1002F9F1C;

  return sub_100519B04(v3, v2, v1);
}

uint64_t sub_1002F9F1C(char a1)
{
  *(*v1 + 216) = a1;

  return _swift_task_switch(sub_1002FA01C, 0, 0);
}

uint64_t sub_1002FA01C()
{
  v41 = v0;
  if (*(v0 + 216) == 1)
  {
    sub_100302E04(&qword_10077F958, &type metadata accessor for PresentAgeExceptionApprovalSheetRequest);
    sub_100302E04(&qword_10077F960, &type metadata accessor for PresentAgeExceptionApprovalSheetRequest);
    decodeXPCValues<A>(from:)();
    v1 = *(v0 + 136);
    v2 = *(v0 + 144);
    v4 = *(v0 + 120);
    v3 = *(v0 + 128);
    v5 = *(v0 + 112);
    static Logger.install.getter();
    v6 = *(v4 + 16);
    v6(v1, v2, v5);
    v6(v3, v2, v5);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    v9 = os_log_type_enabled(v7, v8);
    v11 = *(v0 + 128);
    v10 = *(v0 + 136);
    v13 = *(v0 + 112);
    v12 = *(v0 + 120);
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = *(v0 + 88);
    if (v9)
    {
      v39 = *(v0 + 104);
      v17 = swift_slowAlloc();
      v38 = v16;
      v18 = swift_slowAlloc();
      v40 = v18;
      *v17 = 134218242;
      log = v7;
      v19 = PresentAgeExceptionApprovalSheetRequest.appleItemID.getter();
      v36 = v8;
      v20 = *(v12 + 8);
      v20(v10, v13);
      *(v17 + 4) = v19;
      *(v17 + 12) = 2080;
      v21 = PresentAgeExceptionApprovalSheetRequest.distributorID.getter();
      v23 = v22;
      v20(v11, v13);
      v24 = sub_1002346CC(v21, v23, &v40);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, log, v36, "Presenting age exception approve in-person sheet for item ID: %llu, distributor: %s.", v17, 0x16u);
      sub_10000710C(v18);

      (*(v14 + 8))(v39, v38);
    }

    else
    {
      v20 = *(v12 + 8);
      v20(*(v0 + 136), *(v0 + 112));

      v20(v11, v13);
      (*(v14 + 8))(v15, v16);
    }

    *(v0 + 168) = v20;
    v29 = (*(v0 + 64) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon7Service_dependencies);
    v30 = PresentAgeExceptionApprovalSheetRequest.appleItemID.getter();
    *(v0 + 176) = *(*sub_100006D8C(v29, v29[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);

    v31 = PresentAgeExceptionApprovalSheetRequest.distributorID.getter();
    v33 = v32;
    *(v0 + 184) = v32;
    v34 = *(*sub_100006D8C(v29, v29[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 192) = v34;

    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *v35 = v0;
    v35[1] = sub_1002FA4F0;

    return sub_100598810(v30, v31, v33, v34);
  }

  else
  {
    v25 = type metadata accessor for MarketplaceKitError();
    sub_100302E04(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v25 - 8) + 104))(v26, enum case for MarketplaceKitError.featureUnavailable(_:), v25);
    swift_willThrow();
    sub_10000710C(v0 + 16);

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_1002FA4F0(char a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_1002FA734;
  }

  else
  {
    *(v4 + 217) = a1 & 1;
    v5 = sub_1002FA670;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1002FA670()
{
  v1 = *(v0 + 217);
  v2 = *(v0 + 56);
  (*(v0 + 168))(*(v0 + 144), *(v0 + 112));
  sub_10000710C(v0 + 16);
  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002FA734()
{
  (*(v0 + 168))(*(v0 + 144), *(v0 + 112));
  sub_10000710C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1002FA83C(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t, id))
{
  v15 = sub_1001F0C48(&qword_10077FBB8);
  LOWORD(v14) = 1;
  v16 = sub_100213FA0(&qword_10077FBC0, &qword_10077FBB8);
  *(&v14 + 1) = 1;
  sub_1001F0C48(&qword_10077FBC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v14, inited + 32);
  sub_1001F0C48(&qword_10077FBD0);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_10069E680;
  *(v7 + 32) = inited;
  v8 = v7 + 32;
  v9 = sub_1005AE9BC(v7);
  swift_setDeallocating();
  sub_1000032A8(v8, &qword_10077FA00);
  v10 = sub_1002FB928(0, 0, v9, sub_1002FB8B4, 0, a2);

  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = a3(a1, v11);

  return v12;
}

void sub_1002FAA10(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void *))
{
  v22 = a6;
  v19 = sub_1001F0C48(&qword_10077FBB8);
  LOWORD(v18) = 1;
  v20 = sub_100213FA0(&qword_10077FBC0, &qword_10077FBB8);
  *(&v18 + 1) = 1;
  sub_1001F0C48(&qword_10077FBC8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v18, inited + 32);
  sub_1001F0C48(&qword_10077FBD0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10069E680;
  *(v12 + 32) = inited;
  v13 = v12 + 32;
  v14 = sub_1005AE9BC(v12);
  swift_setDeallocating();
  sub_1000032A8(v13, &qword_10077FA00);
  v15 = sub_1002FB928(0, 0, v14, sub_1002FB8B4, 0, a3);

  if (v15 || (v21[0] = 0, v21[1] = a4, v21[3] = 0, v21[4] = 0, v21[2] = a5, v16 = a3, v15 = sub_100565188(v21, v16), v16, !v6))
  {
    v22(a1, a2, v15);
  }
}

void sub_1002FABF4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1002FAC80(uint64_t a1)
{
  v2 = type metadata accessor for MessageRegistration();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = v23 - v8;
  result = __chkstk_darwin(v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1003F1A70(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void (*sub_1002FAE90(uint64_t **a1, _OWORD *a2))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_1002FB004(v4, a2);
  return sub_1002FAF08;
}

void sub_1002FAF08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void (*sub_1002FB004(uint64_t *a1, _OWORD *a2))(uint64_t a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_1002FB87C(v5);
  v5[9] = sub_1002FB324(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return sub_1002FB0A8;
}

void sub_1002FB0A8(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

uint64_t sub_1002FB108(uint64_t a1)
{
  v3 = sub_1001F0C48(&qword_10077FD88);
  __chkstk_darwin(v3 - 8);
  v5 = v18 - v4;
  v6 = type metadata accessor for MessageRegistration();
  v7 = *(v6 - 8);
  result = __chkstk_darwin(v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1000032A8(v5, &qword_10077FD88))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1004FCD40(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void (*sub_1002FB324(uint64_t *a1, _OWORD *a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0xC0uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 96) = a2;
  *(v8 + 104) = v3;
  v10 = type metadata accessor for RegisteredXPCClient();
  *(v9 + 112) = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  *(v9 + 120) = v11;
  v13 = *(v11 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 128) = swift_coroFrameAlloc();
    *(v9 + 136) = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 128) = malloc(*(v11 + 64));
    *(v9 + 136) = malloc(v13);
    v14 = malloc(v13);
  }

  *(v9 + 144) = v14;
  v15 = *(*(sub_1001F0C48(&unk_10077F8C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v9 + 152) = swift_coroFrameAlloc();
    *(v9 + 160) = swift_coroFrameAlloc();
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    *(v9 + 152) = malloc(v15);
    *(v9 + 160) = malloc(v15);
    v16 = malloc(v15);
  }

  v17 = v16;
  *(v9 + 168) = v16;
  v18 = *v4;
  v19 = sub_100522E8C(a2);
  *(v9 + 184) = v20 & 1;
  v21 = *(v18 + 16);
  v22 = (v20 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_22;
  }

  v25 = v20;
  v26 = *(v18 + 24);
  if (v26 < v24 || (a3 & 1) == 0)
  {
    if (v26 >= v24 && (a3 & 1) == 0)
    {
      v27 = v19;
      sub_1005C56F8();
      v19 = v27;
      goto LABEL_17;
    }

    sub_1005BC7C4(v24, a3 & 1);
    v19 = sub_100522E8C(a2);
    if ((v25 & 1) == (v28 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v9 + 176) = v19;
  if (v25)
  {
    sub_100301488(*(*v4 + 56) + *(v12 + 72) * v19, v17, type metadata accessor for RegisteredXPCClient);
    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  (*(v12 + 56))(v17, v29, 1, v10);
  return sub_1002FB5DC;
}

void sub_1002FB5DC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 112);
  v4 = (*(*a1 + 120) + 48);
  v5 = *(*a1 + 168);
  if (a2)
  {
    v6 = *(v2 + 152);
    sub_100005934(v5, v6, &unk_10077F8C0);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 184);
    v9 = *(v2 + 152);
    if (v7 != 1)
    {
      v10 = *(v2 + 104);
      sub_100301488(v9, *(v2 + 136), type metadata accessor for RegisteredXPCClient);
      v11 = *v10;
      v12 = *(v2 + 176);
      v13 = *(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v14 = *(v2 + 128);
        v15 = *(v2 + 96);
        sub_100301488(v13, v14, type metadata accessor for RegisteredXPCClient);
        sub_1005C352C(v12, v15, v14, v11);
        v16 = v15;
        v17 = v2;
LABEL_11:
        sub_1002FAF54(v16, v17);
        goto LABEL_12;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v18 = *(v2 + 160);
    sub_100005934(v5, v18, &unk_10077F8C0);
    v19 = (*v4)(v18, 1, v3);
    v8 = *(v2 + 184);
    v9 = *(v2 + 160);
    if (v19 != 1)
    {
      v22 = *(v2 + 104);
      sub_100301488(v9, *(v2 + 144), type metadata accessor for RegisteredXPCClient);
      v11 = *v22;
      v12 = *(v2 + 176);
      v13 = *(v2 + 144);
      if ((v8 & 1) == 0)
      {
        v23 = *(v2 + 128);
        v24 = *(v2 + 96);
        sub_100301488(v13, v23, type metadata accessor for RegisteredXPCClient);
        sub_1005C352C(v12, v24, v23, v11);
        v17 = v2 + 48;
        v16 = v24;
        goto LABEL_11;
      }

LABEL_9:
      sub_100301488(v13, v11[7] + *(*(v2 + 120) + 72) * v12, type metadata accessor for RegisteredXPCClient);
      goto LABEL_12;
    }
  }

  sub_1000032A8(v9, &unk_10077F8C0);
  if (v8)
  {
    v20 = *(v2 + 176);
    v21 = **(v2 + 104);
    sub_1002FAFB0(*(v21 + 48) + 48 * v20);
    sub_1005C0B94(v20, v21);
  }

LABEL_12:
  v25 = *(v2 + 160);
  v26 = *(v2 + 168);
  v28 = *(v2 + 144);
  v27 = *(v2 + 152);
  v30 = *(v2 + 128);
  v29 = *(v2 + 136);
  sub_1000032A8(v26, &unk_10077F8C0);
  free(v26);
  free(v25);
  free(v27);
  free(v28);
  free(v29);
  free(v30);

  free(v2);
}

uint64_t (*sub_1002FB87C(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1002FB8A4;
}

void sub_1002FB8B4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for SecureStorageEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_1002FB928(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v51 = 0;
  type metadata accessor for SecureStorageEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v46 = a4;
      v47 = a5;
      v48 = v12;
      v49 = a6;

      v15 = (a1 + 33);
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
          }

          *(v16 + 2) = v23 + 1;
          v24 = &v16[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (v18 <= 1)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v31 = *(v16 + 2);
          v30 = *(v16 + 3);
          if (v31 >= v30 >> 1)
          {
            v16 = sub_100009530((v30 > 1), v31 + 1, 1, v16);
          }

          *(v16 + 2) = v31 + 1;
          v32 = &v16[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          if (v18 <= 1)
          {
LABEL_18:
            if (v18)
            {
              v25 = 0xD000000000000012;
            }

            else
            {
              v25 = 0xD000000000000019;
            }

            if (v18)
            {
              v26 = "distributor_priority_list";
            }

            else
            {
              v26 = "";
            }

            goto LABEL_26;
          }
        }

        if (v18 == 2)
        {
          v25 = 0xD000000000000016;
          v26 = "single_instance_id";
        }

        else if (v18 == 3)
        {
          v25 = 0xD000000000000013;
          v26 = "disabled_install_sheet";
        }

        else
        {
          v25 = 0xD000000000000010;
          v26 = "approved_developers";
        }

LABEL_26:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100009530((v33 > 1), v34 + 1, 1, v17);
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v25;
        *(v35 + 5) = v26 | 0x8000000000000000;
        v15 += 2;
        if (!--v14)
        {

          v12 = v48;
          a6 = v49;
          a4 = v46;
          a5 = v47;
          goto LABEL_33;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_33:
    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v37];
  }

  v38 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v39 = swift_allocObject();
  v39[2] = &v51;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1002398F8;
  *(v40 + 24) = v39;
  aBlock[4] = sub_100239904;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_10075DAA8;
  v41 = _Block_copy(aBlock);
  v42 = a6;

  [v38 enumeratePersistentIDsUsingBlock:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45 = v51;

    return v45;
  }

  return result;
}

uint64_t sub_1002FBE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v28 = a6;
  v26 = a5;
  v27 = a1;
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v25 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = dispatch thunk of Actor.unownedExecutor.getter();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_100005934(a3, v13, &unk_100780380);
  v18 = type metadata accessor for TaskPriority();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1000032A8(v13, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v34[0] = 0;
      v34[1] = 0;
      v24 = v34;
      v34[2] = v14;
      v34[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v24 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v22 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v22;
        }

        goto LABEL_12;
      }
    }

    v33[4] = 6;
    v33[5] = v24;
    v33[6] = a4;
    v33[7] = v26;
    goto LABEL_17;
  }

  v20 = String.utf8CString.getter() + 32;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v33[0] = 0;
    v33[1] = 0;
    v21 = v33;
    v33[2] = v14;
    v33[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v21 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v32[0] = 6;
    v32[1] = v21;
    v32[2] = a4;
    v32[3] = v26;
    v21 = v32;
  }

LABEL_11:
  v29 = 7;
  v30 = v21;
  v31 = v20;
  v22 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v22;
}

uint64_t sub_1002FC1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002F9BD4(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FC2D4(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029F538(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FC4BC(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002C63EC(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FC5D4(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_1001F0C48(&unk_100780380);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v38 - v6;
  v8 = sub_1001F0C48(&qword_10077F8D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v12 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v38 - v13;
  v15 = enum case for LogKey.Prefix.ddm(_:);
  v16 = type metadata accessor for LogKey.Prefix();
  v17 = *(v16 - 8);
  (*(v17 + 104))(v14, v15, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v45 = sub_1001F6740(&off_1007580F0);
  sub_1002FC188(&unk_100758110);
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  v19 = [objc_opt_self() currentConnection];
  v20 = v19;
  if (v19)
  {
    v21 = [v19 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v22 = swift_dynamicCast();
    v23 = v51;
    if (!v22)
    {
      v23 = 0;
    }

    v44 = v23;
    [v20 auditToken];
    v38 = v50;
    v41 = v49;
  }

  else
  {
    v44 = 0;
    v41 = 0u;
    v38 = 0u;
  }

  v52 = v20 == 0;
  sub_100005934(v7, v5, &unk_100780380);
  sub_100005934(v14, v12, &qword_10077F8D0);
  v24 = *(v9 + 80);
  v39 = v5;
  v40 = v20;
  v25 = (v24 + 49) & ~v24;
  v26 = v25 + v10;
  v27 = (v25 + v10) & 0xFFFFFFFFFFFFFFF8;
  v42 = v14;
  v43 = v7;
  v28 = (v27 + 75) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = "Install ManagedPackage";
  *(v30 + 40) = 22;
  *(v30 + 48) = 2;
  sub_10020A668(v12, v30 + v25, &qword_10077F8D0);
  *(v30 + v26) = 0;
  *(v30 + v27 + 8) = v44;
  v31 = v30 + ((v27 + 19) & 0xFFFFFFFFFFFFFFF8);
  v32 = v38;
  *v31 = v41;
  *(v31 + 16) = v32;
  *(v31 + 32) = v52;
  v33 = v30 + ((v27 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v33 = v45;
  *(v33 + 8) = 1;
  v34 = (v30 + v28);
  *v34 = &unk_1006A10B0;
  v34[1] = 0;
  v35 = (v30 + v29);
  v36 = v48;
  *v35 = v47;
  v35[1] = v36;
  *(v30 + ((v29 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v39, &unk_1006A10B8, v30);

  swift_unknownObjectRelease();

  sub_1000032A8(v43, &unk_100780380);
  return sub_1000032A8(v42, &qword_10077F8D0);
}

uint64_t sub_1002FCABC(uint64_t a1, uint64_t a2)
{
  v46 = a1;
  v47 = a2;
  ObjectType = swift_getObjectType();
  v2 = sub_1001F0C48(&unk_100780380);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v36 - v6;
  v8 = sub_1001F0C48(&qword_10077F8D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8 - 8);
  v12 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v36 - v13;
  v15 = type metadata accessor for LogKey.Prefix();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v44 = sub_1001F6740(&off_100758170);
  sub_1002FC188(&unk_100758190);
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = [objc_opt_self() currentConnection];
  v18 = v17;
  if (v17)
  {
    v19 = [v17 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_1001F0C48(&qword_10077F8D8);
    v20 = swift_dynamicCast();
    v21 = v50;
    if (!v20)
    {
      v21 = 0;
    }

    v43 = v21;
    [v18 auditToken];
    v38 = v49;
    v40 = v48;
  }

  else
  {
    v43 = 0;
    v40 = 0u;
    v38 = 0u;
  }

  v51 = v18 == 0;
  sub_100005934(v7, v5, &unk_100780380);
  sub_100005934(v14, v12, &qword_10077F8D0);
  v22 = *(v9 + 80);
  v41 = v7;
  v42 = v14;
  v23 = (v22 + 49) & ~v22;
  v24 = v23 + v10;
  v25 = (v23 + v10) & 0xFFFFFFFFFFFFFFF8;
  v39 = v18;
  v26 = (v25 + 75) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v37 = v5;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = "Cancel ManagedApp";
  *(v28 + 40) = 17;
  *(v28 + 48) = 2;
  sub_10020A668(v12, v28 + v23, &qword_10077F8D0);
  *(v28 + v24) = 0;
  *(v28 + v25 + 8) = v43;
  v29 = v28 + ((v25 + 19) & 0xFFFFFFFFFFFFFFF8);
  v30 = v38;
  *v29 = v40;
  *(v29 + 16) = v30;
  *(v29 + 32) = v51;
  v31 = v28 + ((v25 + 59) & 0xFFFFFFFFFFFFFFF8);
  *v31 = v44;
  *(v31 + 8) = 1;
  v32 = (v28 + v26);
  *v32 = &unk_1006A1080;
  v32[1] = 0;
  v33 = (v28 + v27);
  v34 = v47;
  *v33 = v46;
  v33[1] = v34;
  *(v28 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  swift_unknownObjectRetain();

  sub_1004A673C(0, 0, v37, &unk_1006A1088, v28);

  swift_unknownObjectRelease();

  sub_1000032A8(v41, &unk_100780380);
  return sub_1000032A8(v42, &qword_10077F8D0);
}

uint64_t sub_1002FCF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002F8C80(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FD068(uint64_t a1, void *a2, void *a3, void *a4, void (**a5)(void, void, void))
{
  v10 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v10 - 8);
  v12 = v26 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a5;
  v14 = objc_opt_self();
  _Block_copy(a5);
  v15 = [v14 currentConnection];
  if (v15)
  {
    v16 = v15;
    [v15 auditToken];
    v26[0] = v26[1];
    v17 = v27;
    v18 = v28;

    v19 = type metadata accessor for TaskPriority();
    (*(*(v19 - 8) + 56))(v12, 1, 1, v19);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    *(v20 + 32) = a4;
    *(v20 + 40) = sub_1002FD320;
    *(v20 + 48) = v13;
    *(v20 + 56) = v26[0];
    *(v20 + 72) = v17;
    *(v20 + 80) = v18;
    *(v20 + 88) = a1;
    *(v20 + 96) = a2;
    *(v20 + 104) = a3;
    v21 = a4;

    v22 = a2;
    v23 = a3;
    sub_1004A673C(0, 0, v12, &unk_1006A0AD0, v20);
  }

  else
  {
    type metadata accessor for InternalError();
    sub_100302E04(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    v25 = _convertErrorToNSError(_:)();
    (a5)[2](a5, 0, v25);
  }
}

uint64_t sub_1002FD328(uint64_t a1)
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

  return sub_1002F79F4(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1002FD43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002F6140(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FD51C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100214EFC;

  return sub_1002CD528(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_1002FD600(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1002989B8(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FD7E8(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002A07C8(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FD900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002F3F94(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FD9FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002F03AC(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FDAF4(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029FE80(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FDCDC(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002C9AD8(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FDDF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002EFB6C(a1, a2, a3, a4, a5, a6, v15, v14);
}

uint64_t sub_1002FDED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002EDCC4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002EC9F4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FE098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002EB784(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FE178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002EA10C(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FE2AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002E8974(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FE38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100214EFC;

  return sub_1002E8124(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_1002FE458()
{
  sub_100007158(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1002FE490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002E7158(a1, a2, a3, a4, a5, a6, v15, v14);
}

uint64_t sub_1002FE574(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029EBF0(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FE75C(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002C2D00(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FE874(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002E4DB4(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FE96C(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029E2A8(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FEB54(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002BF614(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FEC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002E3160(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FED64(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029D960(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FEF4C(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002BBF28(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FF064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002DF828(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FF144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100214EFC;

  return sub_1002CD1C4(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_1002FF248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002DE6C8(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FF340(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029D018(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FF528(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002B883C(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002DB120(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1002FF760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002D8104(a1, a2, a3, a4, a5, a6, v14, v15);
}

unint64_t sub_1002FF858()
{
  result = qword_10077FC58;
  if (!qword_10077FC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FC58);
  }

  return result;
}

uint64_t sub_1002FF8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002D7038(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FF9AC(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029C6D0(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FFB94(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002B5150(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_1002FFCAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002D290C(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_1002FFDA4(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029BD88(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1002FFF8C(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002B1A64(a1, v13, v11, v10, v4, v5, v6, v7);
}

unint64_t sub_1003000A4()
{
  result = qword_100789F50;
  if (!qword_100789F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100789F50);
  }

  return result;
}

unint64_t sub_1003000F8()
{
  result = qword_10077FCF8;
  if (!qword_10077FCF8)
  {
    sub_1001F76D0(&qword_10077FCF0);
    sub_100302E04(&unk_10077FCE0, type metadata accessor for ActionButtonInstallMetadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FCF8);
  }

  return result;
}

uint64_t sub_1003001AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002D1A78(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030028C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002D0CB0(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030036C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002CFE7C(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030044C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002CECCC(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_100300544(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029B098(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_10030072C(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002AE378(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100300844(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&unk_10077FA80);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1003008B0()
{
  sub_100007158(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1003008F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002CDF1C(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003009D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_1002975B0(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_100300AC8(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_10029A750(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_100300CB0(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002AAC8C(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100300DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100214EFC;

  return sub_100290DA4(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t sub_100300EC0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_100300ED4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1002961B0(a1, v5, v4);
}

uint64_t sub_100300F90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100214EFC;

  return sub_1002907FC(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_100301070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10028ECD4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10028CFCC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100301268(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100288114(a1);
}

uint64_t sub_100301308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002899B4(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003013E8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_10028C948(a1);
}

uint64_t sub_100301488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003014F0(uint64_t a1)
{
  v3 = *(type metadata accessor for DDMDeclaration(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = (v5 + 9) & 0xFFFFFFFFFFFFFFF8;
  v7 = v1[3];
  v14 = v1[2];
  v8 = v1[4];
  v9 = v1 + v5;
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1001F0E54;

  return sub_10025518C(a1, v14, v7, v8, v1 + v4, v10, v11, v1 + v6);
}

uint64_t sub_10030165C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_100288744(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030173C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003017A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100301804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_100287558(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003018E4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100214EFC;

  return sub_100288114(a1);
}

uint64_t sub_100301984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_100286A78(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100301A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *(v5 + 16);
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_100214EFC;

  return sub_1002861FC(a1, a2, a3, a4, a5, v12);
}

uint64_t sub_100301B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_100214EFC;

  return sub_100284504(a1, a2, a3, a4, a5, a6, v14, v15);
}

uint64_t sub_100301C28(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_100299E08(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_100301E10(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002A75A0(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100301F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(v6 + 16);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_100214EFC;

  return sub_100283A00(a1, a2, a3, a4, a5, a6, v14);
}

uint64_t sub_100302008(uint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v10 = *(v1 + 24);
  v11 = *(v1 + 16);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v13 = *(v1 + v4 + *(v3 + 64));
  v5 = *(v1 + 48);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_100214EFC;

  return sub_1002994C0(a1, v11, v10, v9, v8, v5, v1 + v4, v13);
}

uint64_t sub_1003021F0(uint64_t a1)
{
  v13 = *(v1 + 16);
  v10 = *(v1 + 32);
  v11 = *(v1 + 24);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v7 = *(v1 + 64);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_1002A3EB4(a1, v13, v11, v10, v4, v5, v6, v7);
}

uint64_t sub_100302308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_100282EEC(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003023E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_100282134(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003024C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_1002812B8(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_1003025A8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100214EFC;

  return sub_100461B88(a1, v4, v5, v7, v6);
}

uint64_t sub_100302668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10027F820(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100302748()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100302790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1001F0E54;

  return sub_100461B88(a1, v4, v5, v7, v6);
}

uint64_t sub_10030286C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10027EDF0(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_10030294C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10027E39C(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100302A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10027D7B0(a1, a2, a3, a4, a5, v12, v13, v14);
}

void sub_100302B0C()
{
  v1 = *(v0 + 16);
  isa = Data._bridgeToObjectiveC()().super.isa;
  (*(v1 + 16))(v1, isa);
}

uint64_t sub_100302B64(uint64_t a1)
{
  sub_100007158(*(v1 + 16), *(v1 + 24));

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_100302BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = v5[2];
  v13 = v5[3];
  v14 = v5[4];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_100214EFC;

  return sub_10027C014(a1, a2, a3, a4, a5, v12, v13, v14);
}

uint64_t sub_100302C90()
{
  v1 = *(sub_1001F0C48(&qword_10077F8D0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 49) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = type metadata accessor for LogKey.Prefix();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, ((((((((v3 + v4) & 0xFFFFFFFFFFFFFFF8) + 75) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100302E04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100302E5C()
{

  return sub_10029BCEC();
}

uint64_t sub_100302ED8()
{

  return sub_10029BBA0();
}

uint64_t sub_100302FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for Logger();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return _swift_task_switch(sub_1003030E8, 0, 0);
}

uint64_t sub_1003030E8()
{
  v85 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = objc_allocWithZone(LSApplicationRecord);

  v4 = sub_10049E57C(v1, v2, 0);
  v0[19] = v4;
  v5 = v4;
  v6 = [v4 iTunesMetadata];
  v7 = [v6 distributorInfo];

  LODWORD(v6) = [v7 distributorIsFirstPartyApple];
  if (v6)
  {
    v8 = v0 + 18;
    static Logger.daemon.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      v12 = "App Store apps cannot request transaction reporting token";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v9, v10, v12, v11, 2u);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = [v5 iTunesMetadata];
  v14 = [v13 distributorInfo];

  LODWORD(v13) = [v14 distributorIsThirdParty];
  if (v13)
  {
    v15 = [v5 iTunesMetadata];
    [v15 storeItemIdentifier];

    v16.super.super.isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    v17 = v16.super.super.isa;
    sub_10060BB74();
    if (v18)
    {
      isa = 0;
    }

    else
    {
      isa = UInt64._bridgeToObjectiveC()().super.super.isa;
    }

    static Logger.daemon.getter();

    v27 = v17;

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();

    v30 = os_log_type_enabled(v28, v29);
    v31 = v0[17];
    v33 = v0[10];
    v32 = v0[11];
    if (v30)
    {
      v81 = v0[10];
      v77 = v16.super.super.isa;
      v35 = v0[8];
      v34 = v0[9];
      v75 = v0[6];
      v76 = v0[7];
      v36 = swift_slowAlloc();
      v79 = v31;
      v37 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v36 = 136446722;
      *(v36 + 4) = sub_1002346CC(v35, v34, v84);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_1002346CC(v75, v76, v84);
      *(v36 + 22) = 2114;
      *(v36 + 24) = v27;
      *v37 = v77;
      _os_log_impl(&_mh_execute_header, v28, v29, "Transaction reporting token request %{public}s called for 3rd party marketplace app with bundleID:%{public}s itemID:%{public}@", v36, 0x20u);
      sub_1001F8084(v37);

      swift_arrayDestroy();

      v38 = *(v32 + 8);
      v38(v79, v81);
    }

    else
    {

      v38 = *(v32 + 8);
      v38(v31, v33);
    }

    v39 = 1;
  }

  else
  {
    if (![v5 isProfileValidated] || objc_msgSend(v5, "isBeta"))
    {
      v8 = v0 + 16;
      static Logger.daemon.getter();
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "Unknown type of app";
        goto LABEL_11;
      }

LABEL_12:
      v20 = *v8;
      v21 = v0[10];
      v22 = v0[11];

      (*(v22 + 8))(v20, v21);
      v23 = type metadata accessor for MarketplaceKitError();
      sub_1003040A8();
      swift_allocError();
      (*(*(v23 - 8) + 104))(v24, enum case for MarketplaceKitError.featureUnavailable(_:), v23);
      swift_willThrow();

      v25 = v0[1];

      return v25();
    }

    static Logger.daemon.getter();

    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.debug.getter();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[15];
    v60 = v0[10];
    v59 = v0[11];
    if (v57)
    {
      v62 = v0[8];
      v61 = v0[9];
      v64 = v0[6];
      v63 = v0[7];
      v83 = v0[10];
      v65 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v65 = 136446466;
      *(v65 + 4) = sub_1002346CC(v62, v61, v84);
      *(v65 + 12) = 2082;
      *(v65 + 14) = sub_1002346CC(v64, v63, v84);
      _os_log_impl(&_mh_execute_header, v55, v56, "Transaction reporting token request %{public}s called for Xcode built app with bundleID:%{public}s", v65, 0x16u);
      v39 = 2;
      swift_arrayDestroy();

      v38 = *(v59 + 8);
      v38(v58, v83);
      isa = 0;
      v27 = 0;
    }

    else
    {

      v38 = *(v59 + 8);
      v38(v58, v60);
      isa = 0;
      v27 = 0;
      v39 = 2;
    }
  }

  v0[21] = isa;
  v0[22] = v27;
  v0[20] = v38;
  v40 = [objc_allocWithZone(SKPaymentQueueClient) init];
  v0[23] = v40;
  v41 = String._bridgeToObjectiveC()();
  [v40 setBundleIdentifier:v41];

  [v40 setStoreItemIdentifier:v27];
  [v40 setStoreExternalVersion:isa];
  [v40 setEnvironmentType:v39];
  static Logger.daemon.getter();
  v42 = v40;

  v43 = v42;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v82 = v38;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v46 = 136447234;
    v48 = [v43 bundleIdentifier];
    if (v48)
    {
      v49 = v48;
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;
    }

    else
    {
      v50 = 0;
      v52 = 0xE000000000000000;
    }

    v78 = v0[10];
    v80 = v0[14];
    v66 = v0[8];
    v67 = v0[9];
    v68 = sub_1002346CC(v50, v52, v84);

    *(v46 + 4) = v68;
    *(v46 + 12) = 2114;
    v69 = [v43 storeItemIdentifier];
    *(v46 + 14) = v69;
    *v47 = v69;
    *(v46 + 22) = 2112;
    v70 = [v43 storeExternalVersion];
    *(v46 + 24) = v70;
    v47[1] = v70;
    *(v46 + 32) = 2048;
    v71 = [v43 environmentType];

    *(v46 + 34) = v71;
    *(v46 + 42) = 2080;
    *(v46 + 44) = sub_1002346CC(v66, v67, v84);
    _os_log_impl(&_mh_execute_header, v44, v45, "Fetching transaction reporting token from StoreKit with bundleID:%{public}s itemID:%{public}@ versionID: %@ environment:%ld tokenType:%s", v46, 0x34u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    swift_arrayDestroy();

    v82(v80, v78);
  }

  else
  {
    v53 = v0[14];
    v54 = v0[10];

    v38(v53, v54);
  }

  v72 = swift_task_alloc();
  v0[24] = v72;
  *v72 = v0;
  v72[1] = sub_100303B28;
  v74 = v0[8];
  v73 = v0[9];

  return static SKExternalPurchase.token(type:clientOverride:)(v74, v73, v43);
}

uint64_t sub_100303B28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;

  if (v2)
  {
    v5 = sub_100303E70;
  }

  else
  {
    v5 = sub_100303C40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100303C40()
{
  v25 = v0;
  static Logger.daemon.getter();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 200);
    v3 = *(v0 + 208);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    v22 = *(v0 + 160);
    v23 = *(v0 + 176);
    v21 = *(v0 + 104);
    v19 = *(v0 + 152);
    v20 = *(v0 + 80);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1002346CC(v4, v3, &v24);
    _os_log_impl(&_mh_execute_header, v1, v2, "Successfully fetched transaction reporting token from StoreKit:%s", v7, 0xCu);
    sub_10000710C(v8);

    v22(v21, v20);
  }

  else
  {
    v10 = *(v0 + 176);
    v9 = *(v0 + 184);
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 104);
    v14 = *(v0 + 80);

    v12(v13, v14);
  }

  v15 = *(v0 + 8);
  v16 = *(v0 + 200);
  v17 = *(v0 + 208);

  return v15(v16, v17);
}

uint64_t sub_100303E70()
{
  v21 = v0;
  static Logger.daemon.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v19 = v0[20];
    v3 = v0[12];
    v4 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = Error.localizedDescription.getter();
    v9 = sub_1002346CC(v7, v8, &v20);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to fetch transaction reporting token from StoreKit: %s", v5, 0xCu);
    sub_10000710C(v6);

    v19(v3, v4);
  }

  else
  {
    v10 = v0[20];
    v11 = v0[12];
    v12 = v0[10];

    v10(v11, v12);
  }

  v13 = v0[22];
  v14 = v0[23];
  v15 = v0[21];
  v16 = v0[19];
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

unint64_t sub_1003040A8()
{
  result = qword_10077F950;
  if (!qword_10077F950)
  {
    type metadata accessor for MarketplaceKitError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077F950);
  }

  return result;
}

void sub_100304100()
{
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
    if (*(v0 + 72))
    {
      goto LABEL_3;
    }

LABEL_6:
    Hasher._combine(_:)(0);
    if (*(v0 + 88))
    {
      goto LABEL_4;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    goto LABEL_8;
  }

  v1 = *(v0 + 48);
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v1);
  if (!*(v0 + 72))
  {
    goto LABEL_6;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!*(v0 + 88))
  {
    goto LABEL_7;
  }

LABEL_4:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_8:
  Hasher._combine(_:)(*(v0 + 96) & 1);
}

Swift::Int sub_1003041EC()
{
  Hasher.init(_seed:)();
  sub_100304100();
  return Hasher._finalize()();
}

Swift::Int sub_100304230()
{
  Hasher.init(_seed:)();
  sub_100304100();
  return Hasher._finalize()();
}

uint64_t sub_10030426C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return sub_1003042D8(v11, v13) & 1;
}

uint64_t sub_1003042D8(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_34;
  }

  v6 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return v6 & 1;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v6 = 1;
    }

    if (v6)
    {
      goto LABEL_34;
    }
  }

  v7 = *(a1 + 72);
  v8 = *(a2 + 72);
  if (v7)
  {
    if (!v8 || (*(a1 + 64) != *(a2 + 64) || v7 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_34;
    }
  }

  else if (v8)
  {
    goto LABEL_34;
  }

  v9 = *(a1 + 88);
  v10 = *(a2 + 88);
  if (v9)
  {
    if (v10 && (*(a1 + 80) == *(a2 + 80) && v9 == v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_32;
    }

LABEL_34:
    v6 = 0;
    return v6 & 1;
  }

  if (v10)
  {
    goto LABEL_34;
  }

LABEL_32:
  v6 = *(a1 + 96) ^ *(a2 + 96) ^ 1;
  return v6 & 1;
}

__n128 sub_10030441C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100304448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
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

uint64_t sub_100304490(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100304500()
{
  result = qword_10077FFB0;
  if (!qword_10077FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077FFB0);
  }

  return result;
}

uint64_t sub_100304554(uint64_t a1)
{
  v10 = a1;
  v9 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v9 - 8);
  __chkstk_darwin(v9);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v5);
  v6 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v6 - 8);
  sub_100310C7C();
  static DispatchQoS.unspecified.getter();
  v11 = _swiftEmptyArrayStorage;
  sub_100310CC8(&qword_100784B70, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1001F0C48(&unk_1007801C0);
  sub_100006344();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v4, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v9);
  *(v1 + 16) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_postTimer) = 0;
  sub_100310D10(v10, v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon32ManagedAppDeclarationStatusStore_database);
  return v1;
}

uint64_t sub_1003047B4@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for DDMDeclarationStatus(0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100602EA0(*a1);
  v10 = *(v9 + 16);
  if (v10)
  {
    v17 = a2;
    v18 = _swiftEmptyArrayStorage;
    result = sub_10052672C(0, v10, 0);
    v12 = 0;
    v13 = v18;
    while (v12 < *(v9 + 16))
    {
      sub_1003A7FEC(*(v9 + 8 * v12 + 32), v8);
      if (v2)
      {
      }

      v18 = v13;
      v15 = v13[2];
      v14 = v13[3];
      if (v15 >= v14 >> 1)
      {
        sub_10052672C(v14 > 1, v15 + 1, 1);
        v13 = v18;
      }

      ++v12;
      v13[2] = v15 + 1;
      result = sub_100310C18(v8, v13 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15);
      if (v10 == v12)
      {

        *v17 = v13;
        return result;
      }
    }

    __break(1u);
  }

  else
  {

    *a2 = _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_10030498C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v9 = *a1;

  v10 = 1;
  v11 = sub_10031032C(0, 1, a2, a3, sub_1003102B8, 0, v9);

  if (v11)
  {
    result = sub_1003A7FEC(v11, a4);
    if (v5)
    {
      return result;
    }

    v10 = 0;
  }

  v13 = type metadata accessor for DDMDeclarationStatus(0);
  return (*(*(v13 - 8) + 56))(a4, v10, 1, v13);
}

void sub_100304A78(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;

  v8 = sub_10031032C(0, 0, a2, a3, sub_1003102B8, 0, v7);

  if (v8)
  {
    sub_10053604C(v8, a4);
  }

  else
  {
    v9 = type metadata accessor for ManagedAppStatus.State();
    (*(*(v9 - 8) + 56))(a4, 1, 1, v9);
  }
}

void sub_100304B54(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;

  v10 = sub_10031032C(0, 0, a2, a3, sub_1003102B8, 0, v9);

  if (v10)
  {
    sub_10063456C(a4, a5, 1, v10);
  }
}

uint64_t sub_100304BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for DDMDeclaration(0);
  v6[6] = swift_task_alloc();
  v7 = type metadata accessor for Logger();
  v6[7] = v7;
  v6[8] = *(v7 - 8);
  v6[9] = swift_task_alloc();

  return _swift_task_switch(sub_100304CF0, 0, 0);
}

uint64_t sub_100304CF0()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = (v2 + *(v1 + 52));
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v2 + *(v1 + 76));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_100304DB4;
  v8 = v0[4];

  return sub_10030C9B4(v5, v4, v6, v8);
}

uint64_t sub_100304DB4()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100304EFC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_100304EFC()
{
  v28 = v0;
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  static Logger.ddm.getter();
  sub_100310B50(v2, v1, type metadata accessor for DDMDeclaration);
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[8];
  v8 = v0[9];
  v11 = v0[6];
  v10 = v0[7];
  if (v7)
  {
    v26 = v0[9];
    v13 = v0[4];
    v12 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v27 = v24;
    *v14 = 138412802;
    *(v14 + 4) = v13;
    *v15 = v13;
    *(v14 + 12) = 2082;
    v16 = (v11 + *(v12 + 52));
    v25 = v10;
    v18 = *v16;
    v17 = v16[1];
    v19 = v13;

    sub_100310BB8(v11, type metadata accessor for DDMDeclaration);
    v20 = sub_1002346CC(v18, v17, &v27);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v21;
    v15[1] = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Unable to remove status for %{public}s: %{public}@", v14, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v24);

    (*(v9 + 8))(v26, v25);
  }

  else
  {

    sub_100310BB8(v11, type metadata accessor for DDMDeclaration);
    (*(v9 + 8))(v8, v10);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_1003051BC(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_1003053D8, v8, v7);
}

uint64_t sub_1003053D8()
{
  v61 = v0;
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[7];
  v8 = v0[2];
  loga = v0[3];
  (*(v4 + 104))(v1, enum case for ManagedAppStatus.State.configurationApplied(_:), v3);
  v9 = type metadata accessor for ManagedAppStatus.Reason();
  v56 = *(v9 - 8);
  v57 = v9;
  (*(v56 + 56))(v5, 1, 1);
  static Logger.ddm.getter();
  (*(v4 + 16))(v2, v1, v3);
  sub_100005934(v5, v6, &qword_10077F380);
  sub_100310B50(v8, v7, type metadata accessor for DDMDeclaration);
  v10 = loga;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v15 = v0[17];
  v16 = v0[15];
  v17 = v0[13];
  if (v13)
  {
    v54 = v12;
    log = v11;
    v18 = v0[12];
    v19 = v0[3];
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    *v20 = 138413058;
    *(v20 + 4) = v19;
    v53 = v21;
    *v21 = v19;
    *(v20 + 12) = 2082;
    v22 = v19;
    v23 = ManagedAppStatus.State.rawValue.getter();
    v25 = v24;
    v55 = *(v14 + 8);
    v55(v15, v16);
    v26 = sub_1002346CC(v23, v25, &v60);

    *(v20 + 14) = v26;
    *(v20 + 22) = 2082;
    sub_100005934(v17, v18, &qword_10077F380);
    v27 = (*(v56 + 48))(v18, 1, v57);
    v28 = v0[12];
    if (v27 == 1)
    {
      sub_1000032A8(v0[12], &qword_10077F380);
      v29 = 0xE400000000000000;
      v30 = 1701736302;
    }

    else
    {
      v30 = ManagedAppStatus.Reason.rawValue.getter();
      v29 = v37;
      (*(v56 + 8))(v28, v57);
    }

    v38 = v0[11];
    v39 = v0[8];
    v40 = v0[9];
    v41 = v0[7];
    v42 = v0[5];
    sub_1000032A8(v0[13], &qword_10077F380);
    v43 = sub_1002346CC(v30, v29, &v60);

    *(v20 + 24) = v43;
    *(v20 + 32) = 2080;
    v44 = (v41 + *(v42 + 52));
    v45 = *v44;
    v46 = v44[1];

    sub_100310BB8(v41, type metadata accessor for DDMDeclaration);
    v47 = sub_1002346CC(v45, v46, &v60);

    *(v20 + 34) = v47;
    _os_log_impl(&_mh_execute_header, log, v54, "[%@] Setting state %{public}s reason %{public}s for declaration %s", v20, 0x2Au);
    sub_1000032A8(v53, &qword_10077F920);

    swift_arrayDestroy();

    v36 = *(v40 + 8);
    v36(v38, v39);
    v35 = v55;
  }

  else
  {
    v31 = v0[11];
    v32 = v0[8];
    v33 = v0[9];
    v34 = v0[7];

    sub_100310BB8(v34, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v17, &qword_10077F380);
    v35 = *(v14 + 8);
    v35(v15, v16);
    v36 = *(v33 + 8);
    v36(v31, v32);
  }

  v0[21] = v35;
  v0[22] = v36;
  v48 = v0[18];
  v49 = v0[14];
  v50 = swift_task_alloc();
  v0[23] = v50;
  *(v50 + 16) = *(v0 + 1);
  *(v50 + 32) = v48;
  *(v50 + 40) = v49;
  v51 = swift_task_alloc();
  v0[24] = v51;
  *v51 = v0;
  v51[1] = sub_100305934;

  return sub_10052E0B0(sub_10052E0B0, sub_100310D84, v50);
}

uint64_t sub_100305934()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100310D9C;
  }

  else
  {

    v3 = *(v2 + 152);
    v4 = *(v2 + 160);
    v5 = sub_100305A50;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_100305A50()
{
  if (*(v0 + 216) == 1)
  {
    v1 = *(*(v0 + 16) + *(*(v0 + 40) + 76));
    v2 = swift_task_alloc();
    *(v0 + 208) = v2;
    *v2 = v0;
    v2[1] = sub_100310D80;
    v3 = *(v0 + 24);

    return sub_10030C314(v1, v3);
  }

  else
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 120);
    sub_1000032A8(*(v0 + 112), &qword_10077F380);
    v5(v6, v7);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_100305BE8(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 216) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = type metadata accessor for DDMDeclaration(0);
  *(v4 + 48) = swift_task_alloc();
  *(v4 + 56) = swift_task_alloc();
  v5 = type metadata accessor for Logger();
  *(v4 + 64) = v5;
  *(v4 + 72) = *(v5 - 8);
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F380);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  v6 = type metadata accessor for ManagedAppStatus.State();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  type metadata accessor for ManagedAppDeclarationStatusStore();
  sub_100310CC8(&qword_100780A90, type metadata accessor for ManagedAppDeclarationStatusStore);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 152) = v8;
  *(v4 + 160) = v7;

  return _swift_task_switch(sub_100305E04, v8, v7);
}